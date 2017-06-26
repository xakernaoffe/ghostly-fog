<?php  
class ControllerVideoPublisherIndex extends Controller {
	private $error = array(); 

	private $moduleNameSmall = 'videopublisher';
	private $moduleData_module = 'videopublisher_module';
	private $moduleName;
	private $modulePath;
	private $moduleModel;

	public function __construct($registry){
		parent::__construct($registry);
		$this->config->load('isenselabs/videopublisher');

		$this->moduleName = $this->config->get('videopublisher_name');
		$this->modulePath = $this->config->get('videopublisher_path');
		$this->moduleNameSmall = $this->config->get('videopublisher_name');
		$this->moduleModel = $this->config->get('videopublisher_model');

	}
	
	public function index() { 
//		$this->document->addScript('view/javascript/summernote/summernote.min.js');
//		$this->document->addStyle('view/javascript/summernote/summernote.css');

		$this->language->load($this->modulePath);
		
		$data['button_read_more'] = $this->language->get('button_read_more');
		
		$this->document->addScript('catalog/view/javascript/videopublisher/colorbox/jquery.colorbox-min.js');
		$this->document->addStyle('catalog/view/javascript/videopublisher/colorbox/colorbox.css');
		$this->document->addStyle('catalog/view/theme/'.$this->getConfigTemplate().'/stylesheet/stylesheet.css');
		
		$oc_root = dirname(DIR_APPLICATION);
		if(file_exists($oc_root.'/catalog/view/theme/'.$this->getConfigTemplate().'/stylesheet/videopublisher.css')){
		$this->document->addStyle('catalog/view/theme/'.$this->getConfigTemplate().'/stylesheet/videopublisher.css');
		}
		else $this->document->addStyle('catalog/view/theme/default/stylesheet/videopublisher.css');
	
		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home'),			
			'separator' => false
		);
		
		// START VIDEO PUBLISHER
		$this->language->load($this->modulePath);
		$this->load->model($this->modulePath);
		$data['latest_video_reviews'] = $this->language->get('latest_video_reviews');
		$pvr_ssl = ((int)$_SERVER['SERVER_PORT'] == 443) ? 'SSL' : 'NONSSL';
		$data['pvr_ssl'] = $pvr_ssl;
		
		$data['pvr_settings'] = $this->config->get('videopublisher');
		if (empty($data['pvr_settings']['use_colorbox'])) {
			$data['separateReviewBaseUrl'] = $this->url->link('videopublisher/view', 'pvr_id=', $pvr_ssl);
		} else {
			$data['separateReviewBaseUrl'] = $this->url->link('videopublisher/view/separate', 'pvr_id=', $pvr_ssl);
		}
		
		$docTitle = !empty($data['pvr_settings']['module_title'][$this->config->get('config_language_id')]) ? $data['pvr_settings']['module_title'][$this->config->get('config_language_id')] : 'Video Reviews';
		
		$limit = !empty($data['pvr_settings']['dedicated_limit']) ? $data['pvr_settings']['dedicated_limit'] : 10;
		$page = (!empty($this->request->get['page']) && is_numeric($this->request->get['page']) && (int)$this->request->get['page'] > 0) ? (int)$this->request->get['page'] : 1;
		$pvr_total = $this->{$this->moduleModel}->getTotalReviews($this->config->get('config_language_id'), $this->config->get('config_store_id'));
		
		if (!empty($data['pvr_settings']['show_future_reviews'])) {
			$data['reviews'] = $this->{$this->moduleModel}->getAllReviews($this->config->get('config_language_id'), $this->config->get('config_store_id'), $limit, false, true, $page);
		} else {
			$data['reviews'] = $this->{$this->moduleModel}->getLatestReviews($this->config->get('config_language_id'), $this->config->get('config_store_id'), $limit, false, true, $page);
		}
		//END VIDEO PUBLISHER
		
		$pagination = new Pagination();
		$pagination->total = $pvr_total;
		$pagination->page = $page;
		$pagination->limit = $limit;
		$pagination->text = $this->language->get('text_pagination');
		$pagination->url = $this->url->link('videopublisher/index', 'page={page}' . '&limit=' . $limit, $pvr_ssl);
		
		$data['pagination'] = $pagination->render();
		
		$data['breadcrumbs'][] = array(
			'text'      => $docTitle,
			'href'      => $this->url->link('videopublisher/index'),
			'separator' => $this->language->get('text_separator')
		);
		
		$this->document->setTitle($docTitle);
	
		$data['heading_title'] = $docTitle ;
		$data['url'] = $this->url;
		
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['content_top'] = $this->load->controller('common/content_top');
		$data['content_bottom'] = $this->load->controller('common/content_bottom');
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');
	

		if(version_compare(VERSION, '2.2.0.0', "<")) {		    	
			if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/videopublisher/index.tpl')) {
				$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/videopublisher/index.tpl', $data));
			} else {
				$this->response->setOutput($this->load->view('default/template/videopublisher/index.tpl', $data));
			}
		} else {
		       $this->response->setOutput($this->load->view('videopublisher/index.tpl', $data));
		}
  	}

  	private function getConfigTemplate(){
		if(version_compare(VERSION, '2.2.0.0', '<')) {
			return $this->config->get('config_template');
		} else {
			return  $this->config->get($this->config->get('config_theme') . '_directory');
		}
	}
}
?>