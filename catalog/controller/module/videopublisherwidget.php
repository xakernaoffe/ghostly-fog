<?php
class ControllerModuleVideoPublisherWidget extends Controller {
	
	private $moduleName = 'VideoPublisher';
	private $moduleNameSmall = 'videopublisher';
	private $moduleData_module = 'videopublisher_module';
	private $moduleModel = 'model_module_videopublisher';
	
	public function index($setting) {
		$this->language->load('module/'.$this->moduleNameSmall);
		$this->load->model('module/'.$this->moduleNameSmall);
		$this->load->model('setting/setting');

    	$data['heading_title']				= $this->language->get('heading_title');

		$data['custom_css']					= $setting['custom_css'];
		
				
		$data['button_read_more'] = $this->language->get('button_read_more');
		$data['button_view_all'] = $this->language->get('button_view_all');
		
		$this->document->addStyle('catalog/view/theme/'.$this->config->get('config_template').'/stylesheet/stylesheet.css');
		$this->document->addScript('catalog/view/javascript/videopublisher/colorbox/jquery.colorbox-min.js');
		$this->document->addStyle('catalog/view/javascript/videopublisher/colorbox/colorbox.css');
 
 		$oc_root = dirname(DIR_APPLICATION);
		if(file_exists($oc_root.'/catalog/view/theme/'.$this->config->get('config_template').'/stylesheet/videopublisher.css')){
		$this->document->addStyle('catalog/view/theme/'.$this->config->get('config_template').'/stylesheet/videopublisher.css');
		}
		else $this->document->addStyle('catalog/view/theme/default/stylesheet/videopublisher.css');
		
		$data['latest_video_reviews'] = $this->language->get('latest_video_reviews');
		$pvr_ssl = ((int)$_SERVER['SERVER_PORT'] == 443) ? 'SSL' : 'NONSSL';
		$data['pvr_ssl'] = $pvr_ssl;
		
		$data['pvr_settings'] = $this->config->get('videopublisher');
		if (empty($data['pvr_settings']['use_colorbox'])) {
			$data['separateReviewBaseUrl'] = $this->url->link('videopublisher/view', 'pvr_id=', $pvr_ssl);
		} else {
			$data['separateReviewBaseUrl'] = $this->url->link('videopublisher/view/separate', 'pvr_id=', $pvr_ssl);
		}

		$limit = empty($setting['limit']) ? 3 : $setting['limit'];
		$collection = !empty($setting['videocollections']) ? $setting['videocollections'] : false;

		if (!empty($this->data['pvr_settings']['show_future_reviews'])) {
			$data['reviews'] = $this->model_module_videopublisher->getAllReviews($this->config->get('config_language_id'), $this->config->get('config_store_id'), $limit, $collection);
		} else {
			$data['reviews'] = $this->model_module_videopublisher->getLatestReviews($this->config->get('config_language_id'), $this->config->get('config_store_id'), $limit, $collection);
		}
		
		$data['pvr_view_all_link'] = $this->url->link('videopublisher/index', '', $pvr_ssl);
    	$data['heading_title'] = !empty($setting['name']) ? $setting['name'] : 'Video Reviews';

		$data['url'] = $this->url;

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/videopublisher.tpl')) {
			return $this->load->view($this->config->get('config_template').'/template/module/videopublisher.tpl', $data);
		} else {
			return $this->load->view('default/template/module/videopublisher.tpl', $data);
		}  
  	}
}
?>