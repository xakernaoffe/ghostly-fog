<?php
class ControllerExtensionmodulevideopublisherwidget extends Controller {
	private $widgetName;
	private $widgetPath;
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

		$this->widgetName = $this->config->get('videopublisher_widgetName');
		$this->widgetPath = $this->config->get('videopublisher_widgetPath');
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

		$this->load->language($this->widgetPath);

		$this->document->setTitle($this->language->get('heading_title'));
		
		$this->load->model('extension/module');

		$this->load->model($this->modulePath);

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) { 
			if (!isset($this->request->get['module_id'])) {
				$this->model_extension_module->addModule($this->widgetName, $this->request->post);
				$this->session->data['success'] = $this->language->get('text_create');
				$lastModuleID = $this->{$this->modulePath}->getLastModuleByCode($this->widgetName);
				$this->response->redirect($this->url->link($this->modulePath, 'token=' . $this->session->data['token'] . '&module_id=' . $lastModuleID[0]['module_id'], 'SSL'));
			} else {
				$this->model_extension_module->editModule($this->request->get['module_id'], $this->request->post);
				$this->session->data['success'] = $this->language->get('text_success');
				$this->response->redirect($this->url->link($this->modulePath, 'token=' . $this->session->data['token'] . '&module_id=' . $this->request->get['module_id'], 'SSL'));
			}
		}

		$data['heading_title'] = $this->language->get('heading_title').' '.$this->version;
		
		$data['text_edit'] = $this->language->get('text_edit');
		$data['text_enabled'] = $this->language->get('text_enabled');
		$data['text_disabled'] = $this->language->get('text_disabled');

		$data['entry_name'] = $this->language->get('entry_name');
		$data['entry_status'] = $this->language->get('entry_status');
		$data['entry_width'] = $this->language->get('entry_width');
		$data['entry_height'] = $this->language->get('entry_height');
		$data['entry_limit'] = $this->language->get('entry_limit');

		$data['button_save'] = $this->language->get('button_save');
		$data['button_cancel'] = $this->language->get('button_cancel');

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
		
		if (isset($this->error['name'])) {
			$data['error_name'] = $this->error['name'];
		} else {
			$data['error_name'] = '';
		}
		
		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/dashboard', 'token=' . $this->session->data['token'], 'SSL')
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_module'),
			'href' => $this->extensionLink
		);

		if (!isset($this->request->get['module_id'])) {
			$data['breadcrumbs'][] = array(
				'text' => $this->language->get('heading_title'),
				'href' => $this->url->link($this->widgetPath, 'token=' . $this->session->data['token'], 'SSL')
			);
		} else {
			$data['breadcrumbs'][] = array(
				'text' => $this->language->get('heading_title'),
				'href' => $this->url->link($this->widgetPath, 'token=' . $this->session->data['token'] . '&module_id=' . $this->request->get['module_id'], 'SSL')
			);			
		}
		
		if (!isset($this->request->get['module_id'])) {
			$data['action'] = $this->url->link($this->widgetPath, 'token=' . $this->session->data['token'], 'SSL');
		} else {
			$data['action'] = $this->url->link($this->widgetPath, 'token=' . $this->session->data['token'] . '&module_id=' . $this->request->get['module_id'], 'SSL');
		}
		
		$data['cancel'] = $this->extensionLink;
		
		if (isset($this->request->get['module_id']) && ($this->request->server['REQUEST_METHOD'] != 'POST')) {
			$module_info = $this->model_extension_module->getModule($this->request->get['module_id']);
		}
		
		if(isset($this->request->get['module_id'])) {
			$data['module_id'] = $this->request->get['module_id'];
		}
		
		if (isset($this->request->post['name'])) {
			$data['name'] = $this->request->post['name'];
		} elseif (!empty($module_info)) {
			$data['name'] = $module_info['name'];
		} else {
			$data['name'] = '';
		}
				
		
		if (isset($this->request->post['limit'])) {
			$data['limit'] = $this->request->post['limit'];
		} elseif (!empty($module_info)) {
			$data['limit'] = $module_info['limit'];
		} else {
			$data['limit'] = 5;
		}
		
		if (isset($this->request->post['custom_css'])) {
			$data['custom_css'] = $this->request->post['custom_css'];
		} elseif (!empty($module_info)) {
			$data['custom_css'] = $module_info['custom_css'];
		} else {
			$data['custom_css'] = '';
		}
		
		if (isset($this->request->post['status'])) {
			$data['status'] = $this->request->post['status'];
		} elseif (!empty($module_info)) {
			$data['status'] = $module_info['status'];
		} else {
			$data['status'] = '';
		}
		
		if (isset($this->request->post['videocollections'])) {
			$data['videocollections'] = $this->request->post['videocollections'];
		} elseif (!empty($module_info)) {
			$data['videocollections'] = $module_info['videocollections'];
		} else {
			$data['videocollections'] = '';
		}
		
		$collections		= $this->{$this->moduleModel}->getCollections(0, 0);
		$data['collections'] = array();
		
		foreach($collections as $collection) {
			$collection['title'] = json_decode($collection['title']);
			$collection['title'] = $collection['title']->{$this->config->get('config_language_id')};
			$data['collections'][] = $collection;
		}
		
		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');

		$this->response->setOutput($this->load->view($this->widgetPath.'.tpl', $data));
	}

	protected function validate() { 
		if (!$this->user->hasPermission('modify', $this->widgetPath)) { 
			$this->error['warning'] = $this->language->get('error_permission');
		}
		
		if ((utf8_strlen($this->request->post['name']) < 3) || (utf8_strlen($this->request->post['name']) > 64)) {
			$this->error['name'] = $this->language->get('error_name');
		}

		return !$this->error;
	}
}