<?php  
class ControllerExtensionModuleVideopublisher extends Controller {

	private $moduleName;
	private $modulePath;
	private $moduleNameSmall;
	private $moduleData_module = 'videopublisher__module';
	private $moduleModel;

	public function __construct($registry){
		parent::__construct($registry);
		$this->config->load('isenselabs/videopublisher');

		$this->moduleName = $this->config->get('videopublisher_name');
		$this->modulePath = $this->config->get('videopublisher_path');
		$this->moduleNameSmall = $this->config->get('videopublisher_name');
		$this->moduleModel = $this->config->get('videopublisher_model');

	}

	protected function index($args) {
		$this->document->addScript('view/javascript/summernote/summernote.min.js');
		$this->document->addStyle('view/javascript/summernote/summernote.css');

		$this->language->load($this->modulePath);
		$this->load->model($this->modulePath);
		
		$this->data['button_read_more'] = $this->language->get('button_read_more');
		$this->data['button_view_all'] = $this->language->get('button_view_all');
		
		$this->document->addScript('catalog/view/javascript/jquery/colorbox/jquery.colorbox-min.js');
		$this->document->addStyle('catalog/view/javascript/jquery/colorbox/colorbox.css');
 
 		$oc_root = dirname(DIR_APPLICATION);
		if(file_exists($oc_root.'/catalog/view/theme/'.$this->config->get('config_template').'/stylesheet/videopublisher.css')){
		$this->document->addStyle('catalog/view/theme/'.$this->config->get('config_template').'/stylesheet/videopublisher.css');
		}
		else $this->document->addStyle('catalog/view/theme/default/stylesheet/videopublisher.css');
		
		$this->data['latest_video_reviews'] = $this->language->get('latest_video_reviews');
		$pvr_ssl = ((int)$_SERVER['SERVER_PORT'] == 443) ? 'SSL' : 'NONSSL';
		$this->data['pvr_ssl'] = $pvr_ssl;
		
		$this->data['pvr_settings'] = $this->config->get('videopublisher');
		if (empty($this->data['pvr_settings']['use_colorbox'])) {
			$this->data['separateReviewBaseUrl'] = $this->url->link('videopublisher/view', 'pvr_id=', $pvr_ssl);
		} else {
			$this->data['separateReviewBaseUrl'] = $this->url->link('videopublisher/view/separate', 'pvr_id=', $pvr_ssl);
		}
		$limit = empty($this->data['pvr_settings']['widget_limit']) ? 3 : $this->data['pvr_settings']['widget_limit'];
		$collection = !empty($this->data['pvr_settings']['use_collections']) ? $args['collection_id'] : false;
		if (!empty($this->data['pvr_settings']['show_future_reviews'])) {
			$this->data['reviews'] = $this->model_extension_module_videopublisher->getAllReviews($this->config->get('config_language_id'), $this->config->get('config_store_id'), $limit, $collection);
		} else {
			$this->data['reviews'] = $this->model_extension_module_videopublisher->getLatestReviews($this->config->get('config_language_id'), $this->config->get('config_store_id'), $limit, $collection);
		}
		
		$this->data['pvr_view_all_link'] = $this->url->link('videopublisher/index', '', $pvr_ssl);
		
    	$this->data['heading_title'] = !empty($this->data['pvr_settings']['module_title'][$this->config->get('config_language_id')]) ? $this->data['pvr_settings']['module_title'][$this->config->get('config_language_id')] : 'Video Reviews';

		$wide_positions = array('content_bottom', 'content_top');
		$position_style = in_array($args['position'], $wide_positions) ? 'wide' : 'thin';
		
		$this->data['template'] = $this->getConfigTemplate();
		
		$this->data['template'] = !empty($this->data['template']) ? $this->data['template'] : 'default';
		
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/'.$this->modulePath.'_'.$position_style.'.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/'.$this->modulePath.'_'.$position_style.'.tpl';
		} else {
			$this->template = 'default/template/'.$this->modulePath.'_'.$position_style.'.tpl';
		}

		if(version_compare(VERSION, '2.2.0.0', "<")) {
		   	if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/'.$this->modulePath.'_'.$position_style.'.tpl')) {
				$this->template = $this->config->get('config_template') . '/template/'.$this->modulePath.'_'.$position_style.'.tpl';
			} else {
				$this->template = 'default/template/'.$this->modulePath.'_'.$position_style.'.tpl';
			}
		} else {
		       $this->template = $this->modulePath.'_'.$position_style;
		}
		
		$this->render();
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