<?php
class ControllerCatalogCallback extends Controller { 
	
	private $error = array();
	
	public function index() {
		$this->load->language('catalog/callback');

		$this->document->setTitle($this->language->get('heading_title'));
		 
		$this->load->model('catalog/callback');

		$this->getList();

	}
 
	public function delete() {
		$this->load->language('catalog/callback');

		$this->document->setTitle( $this->language->get('heading_title'));
		
		$this->load->model('catalog/callback');
		
		if (isset($this->request->post['selected']) && $this->validateDelete()) {
			foreach ($this->request->post['selected'] as $callback_id) {
				$this->model_catalog_callback->deleteCallBack($callback_id);
		}
			
			$this->session->data['success'] = $this->language->get('text_success');

			$url = '';
			
			if (isset($this->request->get['page'])) {
				$url .= '&page=' . $this->request->get['page'];
			}

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}
			
			$this->response->redirect($this->url->link('catalog/callback', 'token=' . $this->session->data['token'] . $url, true));

		}

		$this->getList();
	}

	private function getList() {
		if (isset($this->request->get['sort'])) {
			$sort = $this->request->get['sort'];
		} else {
			$sort = 'date_added';
		}
		
		if (isset($this->request->get['order'])) {
			$order = $this->request->get['order'];
		} else {
			$order = 'ASC';
		}
		if (isset($this->request->get['page'])) {
			$page = $this->request->get['page'];
		} else {
			$page = 1;
		}
		
		$url = '';

		if (isset($this->request->get['sort'])) {
			$url .= '&sort=' . $this->request->get['sort'];
		}

		if (isset($this->request->get['order'])) {
			$url .= '&order=' . $this->request->get['order'];
		}
		
		if (isset($this->request->get['page'])) {
			$url .= '&page=' . $this->request->get['page'];
		}
		
		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/dashboard', 'token=' . $this->session->data['token'], true)
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('heading_title'),
			'href' => $this->url->link('catalog/callback', 'token=' . $this->session->data['token'] . $url, true)
		);

		$data['delete'] = $this->url->link('catalog/callback/delete', 'token=' . $this->session->data['token'] . $url, true);

		$data['callbacks'] = array();

		$filter_data = array(
			'sort'  => $sort,
			'order' => $order,
			'start' => ($page - 1) * $this->config->get('config_limit_admin'),
			'limit' => $this->config->get('config_limit_admin')
		);
		
		$callback_total = $this->model_catalog_callback->getTotalCallBacks();
		$data['callback_total'] = $callback_total;
		
		$results = $this->model_catalog_callback->getCallBacks($filter_data);

    	foreach ($results as $result) {		
	
			$data['callbacks'][] = array(
				'callback_id' => $result['callback_id'],
				'title'			 => $result['title'],
				'name'			 => $result['name'],
				'email'          => $result['email'],
				'time' 	 		 => $result['time'],
				'phone' 	 	 => $result['phone'],
				'text'			 => strip_tags(html_entity_decode($result['text'])),
				'date_added' 	 => $result['date_added'],			
				'url'     	 	 => $result['url']
			);
		}	
	
		$data['heading_title'] = $this->language->get('heading_title');

		$data['text_list'] = $this->language->get('text_list');
		$data['text_no_results'] = $this->language->get('text_no_results');
		$data['text_confirm'] = $this->language->get('text_confirm');

		$data['column_title'] = $this->language->get('column_title');
		$data['column_name'] = $this->language->get('column_name');
		$data['column_email'] = $this->language->get('column_email');
		$data['column_time'] = $this->language->get('column_time');	
		$data['column_phone'] = $this->language->get('column_phone');		
		$data['column_text'] = $this->language->get('column_text');
		$data['column_date_added'] = $this->language->get('column_date_added');
		$data['column_url'] = $this->language->get('column_url');
		
		$data['button_delete'] = $this->language->get('button_delete');

 		if (isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
		}

		if (isset($this->session->data['success'])) {
			$data['success'] = $this->session->data['success'];

			unset($this->session->data['success']);
		} else {
			$data['success'] = '';
		}

		if (isset($this->request->post['selected'])) {
			$data['selected'] = (array)$this->request->post['selected'];
		} else {
			$data['selected'] = array();
		}

		$url = '';

		if ($order == 'ASC') {
			$url .= '&order=DESC';
		} else {
			$url .= '&order=ASC';
		}

		if (isset($this->request->get['page'])) {
			$url .= '&page=' . $this->request->get['page'];
		}
		
		$data['sort_title'] = $this->url->link('catalog/callback', 'token=' . $this->session->data['token'] . '&sort=c.title' . $url, true);
		$data['sort_name'] = $this->url->link('catalog/callback', 'token=' . $this->session->data['token'] . '&sort=c.name' . $url, true);
		$data['sort_email'] = $this->url->link('catalog/callback', 'token=' . $this->session->data['token'] . '&sort=c.email' . $url, true);
		$data['sort_time'] = $this->url->link('catalog/callback', 'token=' . $this->session->data['token'] . '&sort=c.time' . $url, true);
		$data['sort_phone'] = $this->url->link('catalog/callback', 'token=' . $this->session->data['token'] . '&sort=c.phone' . $url, true);
		$data['sort_text'] = $this->url->link('catalog/callback', 'token=' . $this->session->data['token'] . '&sort=c.text' . $url, true);
		$data['sort_date_added'] = $this->url->link('catalog/callback', 'token=' . $this->session->data['token'] . '&sort=date_added' . $url, true);
		$data['sort_store'] = $this->url->link('catalog/callback', 'token=' . $this->session->data['token'] . '&sort=c2s.store' . $url, true);
		
		$url = '';

		if (isset($this->request->get['sort'])) {
			$url .= '&sort=' . $this->request->get['sort'];
		}
												
		if (isset($this->request->get['order'])) {
			$url .= '&order=' . $this->request->get['order'];
		}

		$pagination = new Pagination();
		$pagination->total = $callback_total;
		$pagination->page = $page;
		$pagination->limit = $this->config->get('config_limit_admin');
		$pagination->url = $this->url->link('catalog/callback', 'token=' . $this->session->data['token'] . $url . '&page={page}', 'SSL');
		
		$data['pagination'] = $pagination->render();

		$data['results'] = sprintf($this->language->get('text_pagination'), ($callback_total) ? (($page - 1) * $this->config->get('config_limit_admin')) + 1 : 0, ((($page - 1) * $this->config->get('config_limit_admin')) > ($callback_total - $this->config->get('config_limit_admin'))) ? $callback_total : ((($page - 1) * $this->config->get('config_limit_admin')) + $this->config->get('config_limit_admin')), $callback_total, ceil($callback_total / $this->config->get('config_limit_admin')));

		$data['sort'] = $sort;
		$data['order'] = $order;
		
		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');

		$this->response->setOutput($this->load->view('catalog/callback_list.tpl', $data));
	}

	private function validateDelete() {
		if (!$this->user->hasPermission('modify', 'catalog/information')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}

		return !$this->error;
	}
}
?>