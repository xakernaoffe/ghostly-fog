<?php

class ControllerModuleProductStatus extends Controller {

	private $error = array();

	public function index() {
		
		$this->load->language('module/product_status');
		$this->document->setTitle($this->language->get('heading_title'));

		$this->load->model('setting/setting');
		$this->load->model('catalog/product_status');

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {

			$setting['product_status_options'] = $this->request->post['product_status_options'];
			$this->model_setting_setting->editSetting('product_status', $setting);

			$this->cache->delete('product.statuses');

			$this->session->data['success'] = $this->language->get('text_success');
						
			//$this->response->redirect($this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'));
		}

		$this->getList();
	}

	protected function getList() {
		
		$data = $this->load->language('module/product_status');

		if (isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
		}

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
			'separator' => false
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_module'),
			'href' => $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'),
			'separator' => ' :: '
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('heading_title'),
			'href' => $this->url->link('module/product_status', 'token=' . $this->session->data['token'], 'SSL'),
			'separator' => ' :: '
		);

		$data['action_settings'] = $this->url->link('module/product_status', 'token=' . $this->session->data['token'], 'SSL');
		$data['cancel'] = $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL');

		if (isset($this->request->post['product_status_options'])) {
			$data['options'] = $this->request->post['product_status_options'];
		} elseif ($this->config->get('product_status_options')) {
			$data['options'] = $this->config->get('product_status_options');
		}


		if (isset($this->request->get['page'])) {
			$page = (int) $this->request->get['page'];
		} else {
			$page = 1;
		}

		$data['statuses'] = array();

		$data_status = array(
			'start' => ($page - 1) * $this->config->get('config_limit_admin'),
			'limit' => $this->config->get('config_limit_admin')
		);

		$statuses = $this->model_catalog_product_status->getStatuses($data_status);

		$this->load->model('tool/image');

		foreach ($statuses as &$status) {

			$status['thumb'] = $this->model_catalog_product_status->getThumb($status['image']);

			$status['action'][] = array(
				'text' => $this->language->get('text_edit'),
				'href' => $this->url->link('module/product_status/update', 'token=' . $this->session->data['token'] . '&status_id=' . $status['status_id'], 'SSL')
			);
		}
		unset($status);

		$data['statuses'] = $statuses;

		$pagination = new Pagination();
		$pagination->total = $this->model_catalog_product_status->getTotalStatuses();
		$pagination->page = $page;
		$pagination->limit = $this->config->get('config_admin_limit');
		$pagination->text = $this->language->get('text_pagination');
		$pagination->url = $this->url->link('module/product_status', 'token=' . $this->session->data['token'] . '&page={page}', 'SSL');

		$data['pagination'] = $pagination->render();

		$data['insert'] = $this->url->link('module/product_status/insert', 'token=' . $this->session->data['token'], 'SSL');
		$data['delete'] = $this->url->link('module/product_status/delete', 'token=' . $this->session->data['token'], 'SSL');
		
		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');

		$this->response->setOutput($this->load->view('module/product_status.tpl', $data));
	}

	public function insert() {

		$data = $this->load->language('module/product_status');
		$this->load->model('catalog/product_status');

		$this->document->setTitle($this->language->get('heading_title'));

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validateForm()) {
			$this->model_catalog_product_status->addStatus($this->request->post);

			$this->session->data['success'] = $this->language->get('text_success');

			$this->response->redirect($this->url->link('module/product_status', 'token=' . $this->session->data['token'], 'SSL'));
		}

		$this->getForm();
	}

	public function update() {

		$data = $this->load->language('module/product_status');
		$this->load->model('catalog/product_status');

		$this->document->setTitle($this->language->get('heading_title'));

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validateForm()) {
			$this->model_catalog_product_status->editStatus($this->request->get['status_id'], $this->request->post);

			$this->session->data['success'] = $this->language->get('text_success');

			$this->response->redirect($this->url->link('module/product_status', 'token=' . $this->session->data['token'], 'SSL'));
		}

		$this->getForm();
	}

	public function delete() {

		$data = $this->load->language('module/product_status');
		$this->load->model('catalog/product_status');

		if (isset($this->request->post['selected']) && $this->validate()) {
			foreach ($this->request->post['selected'] as $status_id) {
				$this->model_catalog_product_status->deleteStatus($status_id);
			}

			$this->session->data['success'] = $this->language->get('text_success');
		}

		$this->response->redirect($this->url->link('module/product_status', 'token=' . $this->session->data['token'], 'SSL'));
	}

	protected function getForm() {
		
		$data = $this->load->language('module/product_status');
		
		if (isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
		}

		if (isset($this->error['name'])) {
			$data['error_name'] = $this->error['name'];
		} else {
			$data['error_name'] = array();
		}

		if (isset($this->error['image'])) {
			$data['error_image'] = $this->error['image'];
		} else {
			$data['error_image'] = array();
		}

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
			'separator' => false
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('heading_title'),
			'href' => $this->url->link('module/product_status', 'token=' . $this->session->data['token'], 'SSL'),
			'separator' => ' :: '
		);

		if (!isset($this->request->get['status_id'])) {
			$data['action'] = $this->url->link('module/product_status/insert', 'token=' . $this->session->data['token'], 'SSL');
		} else {
			$data['action'] = $this->url->link('module/product_status/update', 'token=' . $this->session->data['token'] . '&status_id=' . $this->request->get['status_id'], 'SSL');
		}

		$data['cancel'] = $this->url->link('module/product_status', 'token=' . $this->session->data['token'], 'SSL');

		$data['token'] = $this->session->data['token'];

		$this->load->model('localisation/language');

		$data['languages'] = $this->model_localisation_language->getLanguages();

		if (isset($this->request->post['status_description'])) {
			$data['status_description'] = $this->request->post['status_description'];
		} elseif (isset($this->request->get['status_id'])) {
			$data['status_description'] = $this->model_catalog_product_status->getStatusDescriptions($this->request->get['status_id']);
		} else {
			$data['status_description'] = array();
		}

		$this->load->model('tool/image');

		foreach ($data['languages'] as $language) {
			if (isset($data['status_description'][$language['language_id']]['image']) && $data['status_description'][$language['language_id']]['image'] && file_exists(DIR_IMAGE . $data['status_description'][$language['language_id']]['image'])) {
				$data['thumb'][$language['language_id']] = $this->model_tool_image->resize($data['status_description'][$language['language_id']]['image'], 100, 100);
			} else {
				$data['thumb'][$language['language_id']] = $this->model_tool_image->resize('no_image.png', 100, 100);
			}
		}

		$data['placeholder'] = $this->model_tool_image->resize('no_image.png', 100, 100);
		
		$this->load->model('catalog/category');
		$this->load->model('catalog/manufacturer');
		
		$data['categories'] = $this->model_catalog_category->getCategories(0);
		$data['manufacturers'] = $this->model_catalog_manufacturer->getManufacturers();
		
		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');
		
		$this->response->setOutput($this->load->view('module/product_status_form.tpl', $data));

	}

	public function autocomplete() {
		$json = array();

		if (isset($this->request->get['filter_name'])) {

			$this->load->model('catalog/product_status');

			$data = array(
				'filter_name' => $this->request->get['filter_name'],
				'start' => 0,
				'limit' => 20
			);

			$results = $this->model_catalog_product_status->getStatuses($data);

			foreach ($results as $result) {

				$thumb = $this->model_catalog_product_status->getThumb($result['image']);

				$json[] = array(
					'status_id' => $result['status_id'],
					'url' => $result['url'],
					'thumb' => $thumb,
					'name' => strip_tags(html_entity_decode($result['name'], ENT_QUOTES, 'UTF-8'))
				);
			}
		}

		$sort_order = array();

		foreach ($json as $key => $value) {
			$sort_order[$key] = $value['name'];
		}

		array_multisort($sort_order, SORT_ASC, $json);

		$this->response->setOutput(json_encode($json));
	}

	public function install() {
		$this->load->model('setting/setting');
		$this->load->model('catalog/product_status');
		// create db table
		$this->model_catalog_product_status->install();
		$this->model_setting_setting->deleteSetting('product_status');
		$setting['product_status_options'] = $this->model_catalog_product_status->getDefaultOptions();
		$this->model_setting_setting->editSetting('product_status', $setting);
	}

	public function uninstall() {
		$this->load->model('setting/setting');
		$this->load->model('catalog/product_status');
		// drop db table
		$this->model_catalog_product_status->uninstall();
		$this->model_setting_setting->deleteSetting('product_status');
	}

	private function validate() {
		if (!$this->user->hasPermission('modify', 'module/product_status')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}

		return !$this->error ? TRUE : FALSE;
	}

	protected function validateForm() {
		if (!$this->user->hasPermission('modify', 'module/product_status')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}

		foreach ($this->request->post['status_description'] as $language_id => $value) {

			if ((utf8_strlen($value['name']) < 2) || (utf8_strlen($value['name']) > 255)) {
				$this->error['name'][$language_id] = $this->language->get('error_name');
			}

			if (!isset($value['image']) || !$value['image'] || !file_exists(DIR_IMAGE . $value['image'])) {
				$this->error['image'][$language_id] = $this->language->get('error_image');
			}
		}

		if ($this->error && !isset($this->error['warning'])) {
			$this->error['warning'] = $this->language->get('error_warning');
		}

		if (!$this->error) {
			return true;
		} else {
			return false;
		}
	}
}
//author sv2109 (sv2109@gmail.com) license for 1 product copy granted for Blackangel861 ( filosofia-buduara.ru)
