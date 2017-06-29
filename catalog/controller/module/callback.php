<?php  
class ControllerModuleCallback extends Controller {
	
	public function index() {
		$this->load->language('module/callback');

		$json = array();

		if ($this->request->server['REQUEST_METHOD'] == 'POST') {
			if (!isset($this->request->post['callback_field_phone'])) {
				if ($this->config->get('callback_title') == 2) {
					if ((utf8_strlen($this->request->post['callback_title']) == 0) || (utf8_strlen($this->request->post['callback_title']) > 32)) {
						$json['error'] = $this->language->get('error_callback_title');
					}
				} elseif (!$this->config->get('callback_title')) {
					$this->request->post['callback_title'] = '';
				}
				
				if ($this->config->get('callback_name') == 2) {
					if ((utf8_strlen($this->request->post['callback_name']) == 0) || (utf8_strlen($this->request->post['callback_name']) > 32)) {
						$json['error'] = $this->language->get('error_callback_name');
					}
				} elseif (!$this->config->get('callback_name')) {
					$this->request->post['callback_name'] = '';
				}

				if ($this->config->get('callback_email') == 2) {
					if (utf8_strlen($this->request->post['callback_email']) > 96 || !filter_var($this->request->post['callback_email'], FILTER_VALIDATE_EMAIL)) {
						$json['error'] = $this->language->get('error_callback_email');
					}
				} elseif (!$this->config->get('callback_email')) {
					$this->request->post['callback_email'] = '';
				}
				
				if ($this->config->get('callback_time_required') == 2) {
					if (!$this->request->post['callback_time']) {
						$json['error'] = $this->language->get('error_callback_time');
					}				
				} elseif (!$this->config->get('callback_time_required')) {
					$this->request->post['callback_time'] = '';
				}
				
				if ($this->config->get('callback_phone') == 2) {
					if ((utf8_strlen($this->request->post['callback_phone']) < 2) || (utf8_strlen($this->request->post['callback_phone']) > 32)) {
						$json['error'] = $this->language->get('error_callback_phone');
					}
				} elseif (!$this->config->get('callback_phone')) {
					$this->request->post['callback_phone'] = '';
				}
				
				if ($this->config->get('callback_text') == 2) {
					if ((utf8_strlen($this->request->post['callback_text']) < 10) || (utf8_strlen($this->request->post['callback_text'] > 1000))) {
						$json['error'] = $this->language->get('error_callback_text');
					}
				} elseif (!$this->config->get('callback_text')) {
					$this->request->post['callback_text'] = '';
				}
				
				// Captcha
				if ($this->config->get($this->config->get('config_captcha') . '_status') && in_array('callback', (array)$this->config->get('config_captcha_page'))) {
					$captcha = $this->load->controller('captcha/' . $this->config->get('config_captcha') . '/validate');

					if ($captcha) {
						$json['error'] = $captcha;
					}
				}
			} else {
				if ((utf8_strlen($this->request->post['callback_field_phone']) < 2) || (utf8_strlen($this->request->post['callback_field_phone']) > 32)) {
					$json['error'] = $this->language->get('error_callback_phone');
				}
			}

			if (!isset($json['error'])) {
				$this->load->model('module/callback');

				$this->model_module_callback->addCallback($this->request->post);
				
				$json['success'] = $this->language->get('text_success');
			}
		}
		
		$this->response->addHeader('Content-Type: application/json');
		$this->response->setOutput(json_encode($json));
	}
}
?>