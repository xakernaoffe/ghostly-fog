<?php
class ControllerExtensionmodulevideopublisher extends Controller {
	
	private $error = array();
	
	private $moduleName;
	private $modulePath;
	private $moduleNameSmall;
	private $moduleData_module = 'videopublisher__module';
	private $moduleModel;
	private $version;
	private $extensionLink;

	public function __construct($registry){
		parent::__construct($registry);
		$this->config->load('isenselabs/videopublisher');

		$this->moduleName = $this->config->get('videopublisher_name');
		$this->modulePath = $this->config->get('videopublisher_path');
		$this->moduleNameSmall = $this->config->get('videopublisher_name');
		$this->moduleModel = $this->config->get('videopublisher_model');
		$this->version = $this->config->get('videopublisher_version');

		$this->extensionLink = $this->url->link($this->config->get('videopublisher_extensionLink'), 'token=' . $this->session->data['token'].$this->config->get('videopublisher_extensionLink_type'), 'SSL');
	}
	
	public function index() {
		$this->document->addScript('view/javascript/summernote/summernote.min.js');
		$this->document->addStyle('view/javascript/summernote/summernote.css');

		$data['moduleName'] = $this->moduleName;
		$data['modulePath'] = $this->modulePath; 
		$data['moduleNameSmall'] = $this->moduleName;
		$data['moduleModel'] = $this->moduleModel;
		
		$this->load->model('setting/setting');
		$this->load->model('localisation/language');
		$this->load->model('setting/store');
		$this->load->model($this->modulePath);
		
		$this->load->language($this->modulePath);
		
		$this->document->setTitle($this->language->get('heading_title'));
		
		if(!isset($this->request->get['store_id'])) {
           $this->request->get['store_id'] = 0; 
        }
		
		$this->document->addStyle('view/stylesheet/'.$this->moduleName.'.css');
		$this->document->addScript('view/javascript/'.$this->moduleName.'.js');
		
		
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			if (!empty($_POST['OaXRyb1BhY2sgLSBDb21'])) {
                $this->request->post[$this->moduleName]['LicensedOn'] = $_POST['OaXRyb1BhY2sgLSBDb21'];
            }
			if (!empty($_POST['cHRpbWl6YXRpb24ef4fe'])) {
				$this->request->post[$this->moduleName]['License'] = json_decode(base64_decode($_POST['cHRpbWl6YXRpb24ef4fe']), true);
			}
			$this->model_setting_setting->editSetting($this->moduleName, $this->request->post);
            $this->session->data['success'] = $this->language->get('text_success');
            $this->response->redirect($this->url->link($this->modulePath, '&token=' . $this->session->data['token'], 'SSL'));
			
		}
		
		if (isset($this->session->data['success'])) {
			$data['success'] = $this->session->data['success'];
			unset($this->session->data['success']);
		} else {
			$data['success'] = '';
		}
		
		if (isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
		}
				
		$data['token'] = $this->session->data['token'];
				
		$data['heading_title'] = $this->language->get('heading_title').' '.$this->version;
		$data['heading_video_reviews_list'] = $this->language->get('heading_video_reviews_list');
		$data['text_enabled'] = $this->language->get('text_enabled');
		$data['text_disabled'] = $this->language->get('text_disabled');
		$data['text_content_top'] = $this->language->get('text_content_top');
		$data['text_content_bottom'] = $this->language->get('text_content_bottom');		
		$data['text_column_left'] = $this->language->get('text_column_left');
		$data['text_column_right'] = $this->language->get('text_column_right');
		$data['entry_layout'] = $this->language->get('entry_layout');
		$data['entry_position'] = $this->language->get('entry_position');
		$data['entry_collection'] = $this->language->get('entry_collection');
		$data['entry_status'] = $this->language->get('entry_status');
		$data['entry_sort_order'] = $this->language->get('entry_sort_order');
		$data['entry_limit'] = $this->language->get('entry_limit');
		$data['button_settings'] = $this->language->get('button_settings');
		$data['button_collections'] = $this->language->get('button_collections');
		$data['button_save'] = $this->language->get('button_save');
		$data['button_cancel'] = $this->language->get('button_cancel');
		$data['button_add_module'] = $this->language->get('button_add_module');
		$data['button_remove'] = $this->language->get('button_remove');
		$data['button_edit'] = $this->language->get('button_edit');
		$data['button_wishlist'] = $this->language->get('button_wishlist');
		$data['button_compare'] = $this->language->get('button_compare');
		
  		$data['breadcrumbs'] = array();
		
   		$data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => false
   		);
		
   		$data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_module'),
			'href'      => $this->extensionLink,
      		'separator' => ' :: '
   		);
		
   		$data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('heading_title'),
			'href'      => $this->url->link($this->modulePath, 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => ' :: '
   		);
		
		$data['submitReviewUrl'] = $this->url->link($this->modulePath.'/addreview', 'token=' . $this->session->data['token'], 'SSL');
		$data['editReviewUrl'] = $this->url->link($this->modulePath.'/editreview', 'token=' . $this->session->data['token'], 'SSL');
		$data['getReviewUrl'] = $this->url->link($this->modulePath.'/getreview', 'token=' . $this->session->data['token'], 'SSL');
		$data['deleteReviewUrl'] = $this->url->link($this->modulePath.'/deletereview', 'token=' . $this->session->data['token'], 'SSL');
		
		$store = $this->getCurrentStore($this->request->get['store_id']);
		
		$data['url'] = $this->url;
		$data['action'] = $this->url->link($this->modulePath, 'token=' . $this->session->data['token'], 'SSL');
        $data['cancel'] = $this->extensionLink;
		$data['languages'] = $this->model_localisation_language->getLanguages();
		foreach ($data['languages'] as $key => $value) {
			if(version_compare(VERSION, '2.2.0.0', "<")) {
				$data['languages'][$key]['flag_url'] = 'view/image/flags/'.$data['languages'][$key]['image'];
			} else {
				$data['languages'][$key]['flag_url'] = 'language/'.$data['languages'][$key]['code'].'/'.$data['languages'][$key]['code'].'.png"';
			}
		}
		$data['store']	= $store;
		$data['stores'] = $this->{$this->moduleModel}->getSystemStores();
		$data['moduleSettings']	= $this->model_setting_setting->getSetting($this->moduleName);
		$data['moduleData']	= (isset($data['moduleSettings'][$this->moduleName])) ? $data['moduleSettings'][$this->moduleName] : array();
		$data['reviews'] = array();
		
		$page = !empty($this->request->get['page']) ? $this->request->get['page'] : 1;
		$limit = !empty($this->request->get['limit']) ? $this->request->get['limit'] : 5;
		
		$data['pageLimit'] = $limit;
		
		$data['reviews'] = $this->{$this->moduleModel}->getAllReviews(false, $this->config->get('config_language_id'), $limit, $page);
		
		$pagination = new Pagination();
		$pagination->total = $this->{$this->moduleModel}->getTotalReviews();
		$pagination->page = $page;
		$pagination->limit = $limit;
		$pagination->text = $this->language->get('text_pagination');
		$pagination->url = $this->url->link($this->modulePath, 'token=' . $this->session->data['token'] . '&page={page}&limit='.$limit, 'SSL');
		
		$data['pagination'] = $pagination->render();
		
		$data['addCollectionUrl'] = $this->url->link($this->modulePath.'/addcollection', 'token=' . $this->session->data['token'], 'SSL');
		$data['deleteCollectionsUrl'] = $this->url->link($this->modulePath.'/delcollections', 'token=' . $this->session->data['token'], 'SSL');
	
		$data['collections'] = array();
	
		$data['collections'] = $this->{$this->moduleModel}->getCollections($page, $limit);
		
		$this->load->model('design/layout');
		
		$data['layouts'] = $this->model_design_layout->getLayouts();
		
		$data['header'] 		= $this->load->controller('common/header');
		$data['column_left'] 	= $this->load->controller('common/column_left');
		$data['footer'] 		= $this->load->controller('common/footer');
		
		$this->response->setOutput($this->load->view($this->modulePath.'.tpl', $data));
	}
	
	public function addreview() {

		$data['moduleName'] = $this->moduleName;
		$data['modulePath'] = $this->modulePath;
		$data['moduleNameSmall'] = $this->moduleName;
		$data['moduleModel'] = $this->moduleModel;
		
		$this->load->model('tool/image');
		$this->load->model($this->modulePath);
		$this->load->model('localisation/language');
		
		$this->language->load($this->modulePath);
				
		$data['heading_title'] = $this->language->get('review_form_add_title');
		
		$data['url'] = $this->url;

		$data['token'] = $this->session->data['token'];
		$data['languages'] = $this->model_localisation_language->getLanguages();
		foreach ($data['languages'] as $key => $value) {
			if(version_compare(VERSION, '2.2.0.0', "<")) {
				$data['languages'][$key]['flag_url'] = 'view/image/flags/'.$data['languages'][$key]['image'];
			} else {
				$data['languages'][$key]['flag_url'] = 'language/'.$data['languages'][$key]['code'].'/'.$data['languages'][$key]['code'].'.png"';
			}
		}
		$data['stores'] = $this->{$this->moduleModel}->getSystemStores();
		$data['date_published'] = date('Y-m-d', time());
		
		$collections		= $this->{$this->moduleModel}->getCollections(0, 0);
		$data['collections'] = array();
		
		foreach($collections as $collection) {
			$collection['title'] = json_decode($collection['title']);
			$collection['title'] = $collection['title']->{$this->config->get('config_language_id')};
			$data['collections'][] = $collection;
		}

		$this->response->setOutput($this->load->view($this->modulePath.'/review_form.tpl', $data));
	}
	
	public function updatereview() {

		$data['modulePath'] = $this->modulePath;

		$this->load->model($this->modulePath);	
		$data['stores'] = $this->{$this->moduleModel}->getSystemStores();
		$data = $this->request->post;
		
		$success = true;
		$successMsg = 'The review was saved successfully';	
		$data['products'] = array();
		if (!empty($data['product_related'])) {
			foreach ($data['product_related'] as $product) {
				preg_match('/^(\d+)-(.*)$/', $product, $product_info);
				$data['products'][] = array('id' => $product_info[1], 'name' => $product_info[2]);
				$data['product_ids'][] = $product_info[1];
			}
			unset($data['product_related']);
		}

		if ($this->request->server['REQUEST_METHOD'] == 'POST') {
			foreach($data['videoReview'] as $language_id=>&$val) {
				if (!is_numeric($language_id)) continue;
				$video_info = $this->parseVideoLink($val['link']);
				$val['video_link'] = $video_info['video_link'];
				if (file_exists(DIR_CATALOG.'view/theme/'.$this->config->get('config_template').'/image/videopublisher/pvr-noimage.png')) {
					$template = $this->config->get('config_template');
				} else {
					$template = 'default';
				}
				
				if (!empty($val['image'])) {
					$image_url = preg_replace('/^https?\:\/\//', '//', HTTP_CATALOG).'image/';
					$val['image_link'] = preg_match('/(^https?\:.*)|(^\/\/.*)/', $val['image']) ? $val['image'] : $image_url.str_replace($image_url, '', $val['image']);
					unset($val['image']);
					$data['image_link'] = $val['image_link'];
				} else {
					if (empty($video_info['image_link'])) {  
						if (isset($this->request->server['HTTPS']) && (($this->request->server['HTTPS'] == 'on') || ($this->request->server['HTTPS'] == '1'))) {

							$val['image_link'] = $this->config->get('config_ssl') . 'catalog/view/theme/'.$template.'/image/videopublisher/pvr-noimage.png';
						} else {  
							$val['image_link'] = $this->config->get('config_url') . 'catalog/view/theme/'.$template.'/image/videopublisher/pvr-noimage.png';
						}
					} else { 
						$val['image_link'] = $video_info['image_link'];
					}
				}

				$image_url = preg_replace('/^https?\:\/\//', '//', HTTP_CATALOG).'image/';
				//$parsed_video_url = parse_url($val['link']);
				//var_dump($parsed_video_url['host']);
				if (strpos($val['link'],$image_url) == false) {
					$val['link'] = preg_match('/(^https?\:.*)|(^\/\/.*)/', $val['link']) ? $val['link'] : $image_url.str_replace($image_url, '', $val['link']);
				}

				$link = empty($link) ? $val['link'] : $link;
				
				$val['text'] = htmlspecialchars_decode($val['text']); 
			}

			$data['store_ids'] = !isset($data['stores']) ? array() : $data['stores']; 
			$data['collection_id'] = empty($data['collection_id']) ? 0 : $data['collection_id'];
			
			if(!isset($data['review_id'])) {
				$data['review_id'] = '';
			}
			
			$pvr_id = $this->{$this->moduleModel}->addReview($data);
					
			$video_info = $this->parseVideoLink($link);
			
			$data['video_link'] = $video_info['video_link'];
			
			if(empty($data['image_link'])){
				if (empty($video_info['image_link'])) {
					if (isset($this->request->server['HTTPS']) && (($this->request->server['HTTPS'] == 'on') || ($this->request->server['HTTPS'] == '1'))) {
						$data['image_link'] = $this->config->get('config_ssl') . 'catalog/view/theme/'.$template.'/image/videopublisher/pvr-noimage.png';
					} else {
						$data['image_link'] = $this->config->get('config_url') . 'catalog/view/theme/'.$template.'/image/videopublisher/pvr-noimage.png';
					}
				} else {
					$data['image_link'] = $video_info['image_link'];
				}
			}
			
			if (!preg_match('/[\w\W]+\.(mp4|ogv|webm|3gp)$/', $video_info['video_link'])){
				if(empty($video_info['host']))
				{
					$success = false;
					$successMsg = 'The provided video link is not valid. Please use one of the following formats: <br>youtu.be/VIDEO_ID <br>www.youtube.com/?v=VIDEO_ID <br>vimeo.com/VIDEO_ID';
				}
			}
			
			echo json_encode(array('data' => $data, 'id' => $pvr_id, 'success' => $success, 'message' => $successMsg));
			
    	} else if ($this->request->server['REQUEST_METHOD'] == 'POST' && (isset($this->request->post['pvr_id']))) {
			$this->{$this->moduleModel}->editReview($this->request->post['pvr_id'], $this->request->post);
		} else {
			if (isset($this->error['warning'])) {
				echo json_encode(array('success' => false, 'message' => $this->error['warning']));
			} else {
				echo json_encode(array('success' => false, 'message' => 'Something is wrong, so the operation cannot be completed!'));
			}
		}
		exit;
	}

	public function editreview() {

		$data['modulePath'] = $this->modulePath;
		$data['moduleNameSmall'] = $this->moduleName;
		$data['moduleModel'] = $this->moduleModel;
		
		$this->load->model('tool/image');
		$this->load->model($this->modulePath);
		$this->load->model('localisation/language');
		
		$this->language->load($this->modulePath);
				
		$data['heading_title'] = $this->language->get('review_form_add_title');
		
		$data['url'] = $this->url;
		$data['token'] = $this->session->data['token'];
		$data['languages'] = $this->model_localisation_language->getLanguages();
		foreach ($data['languages'] as $key => $value) {
			if(version_compare(VERSION, '2.2.0.0', "<")) {
				$data['languages'][$key]['flag_url'] = 'view/image/flags/'.$data['languages'][$key]['image'];
			} else {
				$data['languages'][$key]['flag_url'] = 'language/'.$data['languages'][$key]['code'].'/'.$data['languages'][$key]['code'].'.png"';
			}
		}
		$data['stores'] = $this->{$this->moduleModel}->getSystemStores();
		$data['date_published'] = date('Y-m-d H:i:s', time());
		
		
		$pvr_id = $this->request->post['review_id'];
		$data['pvr_id'] = $this->request->post['review_id'];
		$data['videoReview'] = $this->{$this->moduleModel}->getReview($pvr_id);
		$videoReviewsDescription = $this->{$this->moduleModel}->getReviewDescription($pvr_id);
		
		$data['videoReviewsDescription'] = array();
		
		foreach($videoReviewsDescription as $key => $value) { 
			unset($videoReviewsDescription[$key]);
			$new_key = $value['language_id'];
			$data['videoReviewsDescription'][$new_key] = $value;
		} 

		$collections		= $this->{$this->moduleModel}->getCollections(0, 0);
		$data['collections'] = array();
		
		foreach($collections as $collection) {
			$collection['title'] = json_decode($collection['title']);
			$collection['title'] = $collection['title']->{$this->config->get('config_language_id')};
			$data['collections'][] = $collection;
		}

		$this->response->setOutput($this->load->view($this->modulePath.'/review_form.tpl', $data));
	}
	
	public function getreview() {
		if ($this->request->server['REQUEST_METHOD'] == 'GET' && !empty($this->request->get['review_id'])) {
			$this->load->model($this->modulePath);
			echo json_encode($this->{$this->moduleModel}->getReview($this->request->get['review_id']));
		}
	}
	
	public function deletereview() {
		$this->language->load($this->modulePath);
		if ($this->request->server['REQUEST_METHOD'] == 'POST' && !empty($this->request->post['review_id']) && $this->validateForm()) {
			$this->load->model($this->modulePath);
			$pvr_id = $this->request->post['review_id'];
			$delete = $this->{$this->moduleModel}->deleteReview($pvr_id);
			if ($delete !== false) {
				echo json_encode(array('success' => true, 'message' => 'Successfully removed the review'));
			} else {
				echo json_encode(array('success' => false, 'message' => 'Something went wrong and the review was not deleted properly'));
			}
		} else if (!$this->validateForm()){
			
			if (isset($this->error['warning'])) {
				echo json_encode(array('success' => false, 'message' => $this->error['warning']));
			} else {
				echo json_encode(array('success' => false, 'message' => 'Something is wrong, so the operation cannot be completed!'));
			}
			
		} else {
			echo json_encode(array('success' => false, 'message' => 'You must specify a review to delete'));
		}
		exit;
	}
	
	public function getCollections() {
		
		$data['modulePath'] = $this->modulePath;
		$data['moduleName'] = $this->moduleName;
		$data['moduleNameSmall'] = $this->moduleNameSmall;
		$data['moduleData_module'] = $this->moduleData_module;
		$data['moduleModel'] = $this->moduleModel;
	
		if (!empty($this->request->get['page'])) {
            $page = (int) $this->request->get['page'];
        } else {
			$page = 1;	
		}
		
		$this->load->model($this->modulePath);
			
		$data['token'] = $this->session->data['token'];
		$data['url'] = $this->url;
		$data['limit']				= 10;
		$data['total']				= $this->{$this->moduleModel}->getTotalCollections();
	
	    $collections		= $this->{$this->moduleModel}->getCollections($page, $data['limit']);
		$data['collections'] = array();
		
		foreach($collections as $collection) {
			$collection['title'] = json_decode($collection['title']);
			$collection['title'] = $collection['title']->{$this->config->get('config_language_id')};
			$data['collections'][] = $collection;
		}
		
		$pagination					= new Pagination();
        $pagination->total			= $data['total'];
        $pagination->page			= $page;
        $pagination->limit			= $data['limit']; 
        $pagination->url			= $this->url->link($this->modulePath.'/getCollections','token=' . $this->session->data['token'].'&page={page}', 'SSL');
		
		$data['pagination']			= $pagination->render();

		$data['results'] = sprintf($this->language->get('text_pagination'), ($data['total']) ? (($page - 1) * $data['limit']) + 1 : 0, ((($page - 1) * $data['limit']) > ($data['total'] - $data['limit'])) ? $data['total'] : ((($page - 1) * $data['limit']) + $data['limit']), $data['total'], ceil($data['total'] / $data['limit']));
	
		$this->response->setOutput($this->load->view($this->modulePath.'/view_collections.tpl', $data));
	}
	
	public function addCollection() {

		$data['modulePath'] = $this->modulePath;
		$data['moduleName'] = $this->moduleName;
		$data['moduleNameSmall'] = $this->moduleName;
		$data['moduleModel'] = $this->moduleModel;
		
		$this->load->model('tool/image');
		$this->load->model($this->modulePath);
		$this->load->model('localisation/language');
		
		$this->language->load($this->modulePath);
				
		$data['heading_title'] = $this->language->get('collection_form_add_title');
		
		if(isset($this->request->get['collection_id'])) {
			$data['collection_id'] = $this->request->get['collection_id'];
		} else {
			$data['collection_id'] = '';
		}
		
		$data['url'] = $this->url;
		$data['token'] = $this->session->data['token'];
		$data['languages'] = $this->model_localisation_language->getLanguages();
		foreach ($data['languages'] as $key => $value) {
			if(version_compare(VERSION, '2.2.0.0', "<")) {
				$data['languages'][$key]['flag_url'] = 'view/image/flags/'.$data['languages'][$key]['image'];
			} else {
				$data['languages'][$key]['flag_url'] = 'language/'.$data['languages'][$key]['code'].'/'.$data['languages'][$key]['code'].'.png"';
			}
		}
		$data['stores'] = $this->{$this->moduleModel}->getSystemStores();
		
		$this->response->setOutput($this->load->view($this->modulePath.'/collection_form.tpl', $data));
	}
	
		
	public function editCollection() {

		$data['modulePath'] = $this->modulePath;
		$data['moduleNameSmall'] = $this->moduleName;
		$data['moduleModel'] = $this->moduleModel;
		
		$this->load->model('tool/image');
		$this->load->model($this->modulePath);
		$this->load->model('localisation/language');
		
		$this->language->load($this->modulePath);
			
		if(isset($this->request->get['collection_id'])) {
			$data['collection_id'] = $this->request->get['collection_id'];
		} 

		$data = $this->{$this->moduleModel}->getCollection($data['collection_id']);
		
		$data['title'] = json_decode($data['title'], true);
		
		$data['url'] = $this->url;
		$data['token'] = $this->session->data['token'];
		$data['languages'] = $this->model_localisation_language->getLanguages();
		foreach ($data['languages'] as $key => $value) {
			if(version_compare(VERSION, '2.2.0.0', "<")) {
				$data['languages'][$key]['flag_url'] = 'view/image/flags/'.$data['languages'][$key]['image'];
			} else {
				$data['languages'][$key]['flag_url'] = 'language/'.$data['languages'][$key]['code'].'/'.$data['languages'][$key]['code'].'.png"';
			}
		}
		$data['stores'] = $this->{$this->moduleModel}->getSystemStores();
		

		$data['heading_title'] = $this->language->get('collection_form_add_title');

		$this->response->setOutput($this->load->view($this->modulePath.'/collection_form.tpl', $data));

		
	}
	
	public function updateCollection() {
		
		$this->load->model($this->modulePath);
		
		if ($this->request->server['REQUEST_METHOD'] == 'POST') {
			$this->request->post;
			$this->{$this->moduleModel}->addCollection($this->request->post);		
    	} 	
	
	}
	
	public function deleteCollection() {
		
		$this->load->model($this->modulePath);
		
		if ($this->request->server['REQUEST_METHOD'] == 'POST') {
			if (isset($this->request->post['collection_id'])) {
				$this->{$this->moduleModel}->deleteCollections($this->request->post['collection_id']);
			}
    	}	
	}
	
	protected function validate() {
		if (!$this->user->hasPermission('modify', $this->modulePath)) {
			$this->error['warning'] = $this->language->get('error_permission');
		}
		
		if (!$this->error) {
			return true;
		} else {
			return false;
		}	
	}
	
	private function getCatalogURL() {
        if (isset($_SERVER['HTTPS']) && (($_SERVER['HTTPS'] == 'on') || ($_SERVER['HTTPS'] == '1'))) {
            $storeURL = HTTPS_CATALOG;
        } else {
            $storeURL = HTTP_CATALOG;
        } 
        return $storeURL;
    }
	
	private function getCurrentStore($store_id) {    
        if($store_id && $store_id != 0) {
            $store = $this->model_setting_store->getStore($store_id);
        } else {
            $store['store_id'] = 0;
            $store['name'] = $this->config->get('config_name');
            $store['url'] = $this->getCatalogURL(); 
        }
        return $store;
    }
	
	public function install() {
		$this->load->model($this->modulePath);
		$this->{$this->moduleModel}->createTable();
	}
	
	public function uninstall() {
		$this->load->model($this->modulePath);
		$this->{$this->moduleModel}->dropTable();
	}
	
	private function parseVideoLink($url) {
		$backup_url = $url;
		$url = parse_url($url);
		$host = '';
		$video_link = '';
		$image_link = '';
		
		if (!empty($url['host']) && (!empty($url['path']) || !empty($url['query']))) {
			switch($url['host']) {
				case 'www.youtube.com':
					if (!empty($url['query'])) {
						$video_info = array();
						parse_str(html_entity_decode(urldecode($url['query'])));
						$host = 'youtube';
						$video_link = 'http://www.youtube.com/embed/'.$v;
						$image_link = 'http://img.youtube.com/vi/'.$v.'/0.jpg';
					}
					break;
				case 'youtu.be':
					$host = 'youtube';
					$url['path'] = trim($url['path'], '/');
					$video_link = 'http://www.youtube.com/embed/'.$url['path'];
					$image_link = 'http://img.youtube.com/vi/'.$url['path'].'/0.jpg';
					break;
				case 'vimeo.com':
					$host = 'vimeo';
					$headers = get_headers($backup_url, 1);
					if (!empty($headers['Location'])) {
						$redirect = parse_url($headers['Location']);
						if(!empty($redirect['path'])) {
							$url['path'] = $redirect['path'];
						}
					}
					$url['path'] = trim($url['path'], '/');
					$image_link = json_decode(file_get_contents('http://vimeo.com/api/oembed.json?url='.$backup_url), true);
					$video_link = 'http://player.vimeo.com/video/'.$image_link['video_id'].'?portrait=0';
					$image_link = $image_link['thumbnail_url'];
					break;
				default:
					$host = '';
					$video_link = '';
					$image_link = '';
			}
			
			return array('host' => $host, 'video_link' => $video_link, 'image_link' => $image_link);
		} else {
			return array('host' => '', 'video_link' => $backup_url, 'image_link' => '');
		}
		return;
	}
	
	private function upgradeIfNeeded() {
		$this->load->model($this->modulePath);
		$result = $this->db->query("SHOW TABLES LIKE '%pvr_collection'");
		if (!$result->num_rows) {
			$this->{$this->moduleModel}->createCollectionsTable();
		}
		$result = $this->db->query("SHOW COLUMNS FROM " .DB_PREFIX. "videopublisher LIKE 'collection_id';");
		if (!$result->num_rows) {
			$this->{$this->moduleModel}->addCollectionColumn();
		}
	}
	
	protected function validateForm() {
		if (!$this->user->hasPermission('modify', $this->modulePath)) {
			$this->error['warning'] = $this->language->get('error_permission');
		}
		return !$this->error;
	}
}
?>