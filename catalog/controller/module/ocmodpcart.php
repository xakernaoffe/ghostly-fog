<?php
class ControllerModuleOcmodpcart extends Controller {
	public function index() {
		
		$data = array();

		$this->load->language('module/ocmodpcart');

		$data['button_shopping'] = $this->language->get('button_shopping');
		$data['button_checkout'] = $this->language->get('button_checkout');
		$data['text_photo'] = $this->language->get('text_photo');
		$data['text_info'] = $this->language->get('text_info');
		$data['text_quantity'] = $this->language->get('text_quantity');
		$data['text_sum'] = $this->language->get('text_sum');
		$data['heading_cartpopup_title_empty'] = $this->language->get('heading_cartpopup_title_empty');
		$data['text_cartpopup_empty'] = $this->language->get('text_cartpopup_empty');

		if ( isset( $this->request->request['remove'] ) ) {
			$this->cart->remove( $this->request->request['remove'] );
			unset( $this->session->data['vouchers'][$this->request->request['remove']] );
		}

		if ( isset( $this->request->request['update'] ) ) {
			$this->cart->update( $this->request->request['update'], $this->request->request['quantity'] );
		}

		if ( isset( $this->request->request['add'] ) ) {
			$this->cart->add( $this->request->request['add'], $this->request->request['quantity'] );
		}

		if (!$this->cart->hasStock() && (!$this->config->get('config_stock_checkout') || $this->config->get('config_stock_warning'))) {
			$data['error_warning'] = $this->language->get('error_stock');
		} elseif (isset($this->session->data['error'])) {
			$data['error_warning'] = $this->session->data['error'];

			unset($this->session->data['error']);
		} else {
			$data['error_warning'] = '';
		}

		if ($this->config->get('config_customer_price') && !$this->customer->isLogged()) {
			$data['attention'] = sprintf($this->language->get('text_login'), $this->url->link('account/login'), $this->url->link('account/register'));
		} else {
			$data['attention'] = '';
		}

		if (isset($this->session->data['success'])) {
			$data['success'] = $this->session->data['success'];

			unset($this->session->data['success']);
		} else {
			$data['success'] = '';
		}

		$this->load->model('tool/image');
		$this->load->model('tool/upload');

		$data['products'] = array();

		$products = $this->cart->getProducts();

		foreach ($products as $product) {
			$product_total = 0;

			foreach ($products as $product_in_cart) {
				if ($product_in_cart['product_id'] == $product['product_id']) {
					$product_total += $product_in_cart['quantity'];
				}
			}

			if ($product['minimum'] > $product_total) {
				$data['error_warning'] = sprintf($this->language->get('error_minimum'), $product['name'], $product['minimum']);
			}

			if ($product['image']) {
				$image = $this->model_tool_image->resize($product['image'], 80, 80);
			} else {
				$image = $this->model_tool_image->resize("placeholder.png", 80, 80);
			}

			$option_data = array();

			foreach ($product['option'] as $option) {
				if ($option['type'] != 'file') {
					$value = $option['value'];
				} else {
					$upload_info = $this->model_tool_upload->getUploadByCode($option['value']);

					if ($upload_info) {
						$value = $upload_info['name'];
					} else {
						$value = '';
					}
				}

				$option_data[] = array(
					'name'  => $option['name'],
					'value' => (utf8_strlen($value) > 20 ? utf8_substr($value, 0, 20) . '..' : $value)
				);
			}

			if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
				$price = $this->currency->format($this->tax->calculate($product['price'], $product['tax_class_id'], $this->config->get('config_tax')));
			} else {
				$price = false;
			}

			if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
				$total = $this->currency->format($this->tax->calculate($product['price'], $product['tax_class_id'], $this->config->get('config_tax')) * $product['quantity']);
			} else {
				$total = false;
			}

			$data['products'][] = array(
				'key'         => $product['cart_id'],
				'product_id'  => $product['product_id'],
				'thumb'       => $image,
				'name'        => $product['name'],
				'model'       => $product['model'],
				'option'      => $option_data,
				'quantity'    => $product['quantity'],
				'stock'       => $product['stock'] ? true : !(!$this->config->get('config_stock_checkout') || $this->config->get('config_stock_warning')),
				'reward'      => ($product['reward'] ? sprintf($this->language->get('text_cartpopup_points'), $product['reward']) : ''),
				'price'       => $price,
				'total'       => $total,
				'href'        => $this->url->link('product/product', 'product_id=' . $product['product_id'])
			);
		}

		$this->load->model('extension/extension');

		$total_data = array();
		$total = 0;
		$taxes = $this->cart->getTaxes();

		if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
			$sort_order = array();

			$results = $this->model_extension_extension->getExtensions('total');

			foreach ($results as $key => $value) {
				$sort_order[$key] = $this->config->get($value['code'] . '_sort_order');
			}

			array_multisort($sort_order, SORT_ASC, $results);

			foreach ($results as $result) {
				if ($this->config->get($result['code'] . '_status')) {
					$this->load->model('total/' . $result['code']);

					$this->{'model_total_' . $result['code']}->getTotal($total_data, $total, $taxes);
				}
			}

			$sort_order = array();

			foreach ($total_data as $key => $value) {
				$sort_order[$key] = $value['sort_order'];
			}

			array_multisort($sort_order, SORT_ASC, $total_data);
		}

		$data['totals'] = array();

		foreach ($total_data as $total) {
			$data['totals'][] = array(
				'title' => $total['title'],
				'text'  => $this->currency->format($total['value'])
			);
		}

		$data['checkout_link'] = $this->url->link('checkout/checkout');
		
		$cart_number = $this->cart->countProducts() + (isset($this->session->data['vouchers']) ? count($this->session->data['vouchers']) : 0);
		function getcartword($number, $suffix) {
			$keys = array(2, 0, 1, 1, 1, 2);
			$mod = $number % 100;
			$suffix_key = ($mod > 7 && $mod < 20) ? 2: $keys[min($mod % 10, 5)];
			return $suffix[$suffix_key];
		}
		$textcart_array = array('textcart_1', 'textcart_2', 'textcart_3');
		$textcart = getcartword($cart_number, $textcart_array);

		$data['heading_cartpopup_title'] = sprintf($this->language->get($textcart), $this->cart->countProducts() + (isset($this->session->data['vouchers']) ? count($this->session->data['vouchers']) : 0));

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/ocmodpcart.tpl')) {
			$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/module/ocmodpcart.tpl', $data));
		} else {
			$this->response->setOutput($this->load->view('default/template/module/ocmodpcart.tpl', $data));
		}
	
	}

	public function status_cart() {
		
		$json = array();

		$this->load->language('module/ocmodpcart');
		$this->load->model('extension/extension');

		$total_data = array();
		$total = 0;
		$taxes = $this->cart->getTaxes();

		if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
			$sort_order = array();

			$results = $this->model_extension_extension->getExtensions('total');

			foreach ($results as $key => $value) {
				$sort_order[$key] = $this->config->get($value['code'] . '_sort_order');
			}

			array_multisort($sort_order, SORT_ASC, $results);

			foreach ($results as $result) {
				if ($this->config->get($result['code'] . '_status')) {
					$this->load->model('total/' . $result['code']);

					$this->{'model_total_' . $result['code']}->getTotal($total_data, $total, $taxes);
				}
			}

			$sort_order = array();

			foreach ($total_data as $key => $value) {
				$sort_order[$key] = $value['sort_order'];
			}

			array_multisort($sort_order, SORT_ASC, $total_data);
		}

		$json['total'] = sprintf($this->language->get('text_items'), $this->cart->countProducts() + (isset($this->session->data['vouchers']) ? count($this->session->data['vouchers']) : 0), $this->currency->format($total));

		$this->response->addHeader('Content-Type: application/json');
		$this->response->setOutput(json_encode($json));
	}
}