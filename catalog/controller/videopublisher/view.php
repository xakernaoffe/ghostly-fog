<?php  
class ControllerVideoPublisherView extends Controller {
	private $error = array(); 
	
	public function index() {
		$this->language->load('module/videopublisher');
		$docTitle = $this->language->get('heading_title');
		
		$this->document->addScript('catalog/view/javascript/videopublisher/colorbox/jquery.colorbox-min.js');
		$this->document->addStyle('catalog/view/javascript/videopublisher/colorbox/colorbox.css');
		$this->document->addStyle('catalog/view/theme/'.$this->config->get('config_template').'/stylesheet/stylesheet.css');
		
		$oc_root = dirname(DIR_APPLICATION);
		if(file_exists($oc_root.'/catalog/view/theme/'.$this->config->get('config_template').'/stylesheet/videopublisher.css')){
		$this->document->addStyle('catalog/view/theme/'.$this->config->get('config_template').'/stylesheet/videopublisher.css');
		}
		else $this->document->addStyle('catalog/view/theme/default/stylesheet/videopublisher.css');
	
		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home'),			
			'separator' => false
		);
		
		// START VIDEO PUBLISHER
		$this->language->load('module/videopublisher');
		$this->load->model('module/videopublisher');
		$this->load->model('tool/image');
		
		$data['isLocalVideo'] = false;
		if(!empty($this->request->get['pvr_id'])) {
			$data['review'] = $this->model_module_videopublisher->getReview($this->request->get['pvr_id'], $this->config->get('config_language_id'), $this->config->get('config_store_id'));
			if (!preg_match('/youtube.com|youtu.be|vimeo.com/', $data['review']['link'])) { // we consider this a local video
				$data['isLocalVideo'] = true;
			}
		}
		$data['pvrUniqueUrl'] = $this->url->link('videopublisher/view', 'pvr_id='.$this->request->get['pvr_id'], 'SSL');
		$data['pvr_settings'] = $this->config->get('videopublisher');
		//END VIDEO PUBLISHER
		
		$data['breadcrumbs'][] = array(
			'text'      => $docTitle,
			'href'      => $this->url->link('videopublisher/index'),
			'separator' => $this->language->get('text_separator')
		);
		
		$data['breadcrumbs'][] = array(
			'text'      => (strlen($data['review']['title']) > 50) ? substr($data['review']['title'], 0, 50).'...' : $data['review']['title'],
			'href'      => $data['pvrUniqueUrl'],
			'separator' => $this->language->get('text_separator')
		);			
		$this->document->setTitle($docTitle);
	
		$data['heading_title'] = $docTitle ;
		
		$data['button_cart'] = $this->language->get('button_cart');
		$data['text_related_products'] = $this->language->get('text_related_products');
		$data['text_tax'] = $this->language->get('text_tax');

		$data['related_products'] = array();
		
		if (!empty($data['pvr_settings']['related_products'])) {
			$results = $this->model_module_videopublisher->getPvrRelated($this->request->get['pvr_id'], $this->config->get('config_store_id'));
			
			foreach ($results as $result) {
				if ($result['image']) {
					$image = $this->model_tool_image->resize($result['image'], $this->config->get('config_image_related_width'), $this->config->get('config_image_related_height'));
				} else {
					$image = false;
				}
				
				if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
					$price = $this->currency->format($this->tax->calculate($result['price'], $result['tax_class_id'], $this->config->get('config_tax')));
				} else {
					$price = false;
				}
						
				if ((float)$result['special']) {
					$special = $this->currency->format($this->tax->calculate($result['special'], $result['tax_class_id'], $this->config->get('config_tax')));
				} else {
					$special = false;
				}
				
				if ($this->config->get('config_review_status')) {
					$rating = (int)$result['rating'];
				} else {
					$rating = false;
				}
				
				if ($this->config->get('config_tax')) {
					$tax = $this->currency->format((float)$result['special'] ? $result['special'] : $result['price']);
				} else {
					$tax = false;
				}
							
				$data['related_products'][] = array(
					'product_id' => $result['product_id'],
					'description' => utf8_substr(strip_tags(html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8')), 0, $this->config->get('config_product_description_length')) . '..',
					'thumb'   	 => $image,
					'name'    	 => $result['name'],
					'price'   	 => $price,
					'special' 	 => $special,
					'rating'     => $rating,
					'minimum'     => $result['minimum'] > 0 ? $result['minimum'] : 1,
					'tax'        => $tax,
					'reviews'    => sprintf($this->language->get('text_reviews'), (int)$result['reviews']),
					'href'    	 => $this->url->link('product/product', 'product_id=' . $result['product_id'])
				);
			}
		}
		
		
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['content_top'] = $this->load->controller('common/content_top');
		$data['content_bottom'] = $this->load->controller('common/content_bottom');
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');
		
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/videopublisher/view.tpl')) {
			$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/videopublisher/view.tpl', $data));
		} else {
			$this->response->setOutput($this->load->view('default/template/videopublisher/view.tpl', $data));
		}  

					
  	}
	
	public function separate() {
		$this->language->load('module/videopublisher');
		
		// START VIDEO PUBLISHER
		$this->language->load('module/videopublisher');
		$this->load->model('module/videopublisher');
		$this->load->model('tool/image');
		
		$data['isLocalVideo'] = false;
		if(!empty($this->request->get['pvr_id'])) {
			$data['review'] = $this->model_module_videopublisher->getReview($this->request->get['pvr_id'], $this->config->get('config_language_id'), $this->config->get('config_store_id'));
			if (!preg_match('/youtube.com|youtu.be|vimeo.com/', $data['review']['link'])) { // we consider this a local video
				$data['isLocalVideo'] = true;
				if(isset($data['review']) && isset($data['review']['link'])) {
					if(isset($this->request->server['HTTPS']) && (($this->request->server['HTTPS'] == 'on') || ($this->request->server['HTTPS'] == '1'))) {
						$data['review']['link'] = str_replace(HTTPS_SERVER, '', $data['review']['link']);
					} else {
						$data['review']['link'] = str_replace(HTTP_SERVER, '', $data['review']['link']);
					}
				};
			}
		}
		
		$data['pvrUniqueUrl'] = $this->url->link('videopublisher/view', 'pvr_id='.$this->request->get['pvr_id'], 'SSL');
		$data['pvr_settings'] = $this->config->get('videopublisher');
		//END VIDEO PUBLISHER
		
		$data['button_cart'] = $this->language->get('button_cart');
		$data['button_wishlist'] = $this->language->get('button_wishlist');
		$data['button_compare'] = $this->language->get('button_compare');

		$data['text_related_products'] = $this->language->get('text_related_products');
		$data['text_tax'] = $this->language->get('text_tax');
		
		$data['related_products'] = array();
		
		if (!empty($data['pvr_settings']['related_products'])) {
			$results = $this->model_module_videopublisher->getPvrRelated($this->request->get['pvr_id'], $this->config->get('config_store_id'));
			
			foreach ($results as $result) {
				if ($result['image']) {
					$image = $this->model_tool_image->resize($result['image'], $this->config->get('config_image_related_width'), $this->config->get('config_image_related_height'));
				} else {
					$image = false;
				}
				
				if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
					$price = $this->currency->format($this->tax->calculate($result['price'], $result['tax_class_id'], $this->config->get('config_tax')));
				} else {
					$price = false;
				}
						
				if ((float)$result['special']) {
					$special = $this->currency->format($this->tax->calculate($result['special'], $result['tax_class_id'], $this->config->get('config_tax')));
				} else {
					$special = false;
				}
				
				if ($this->config->get('config_review_status')) {
					$rating = (int)$result['rating'];
				} else {
					$rating = false;
				}
				
				if ($this->config->get('config_tax')) {
					$tax = $this->currency->format((float)$result['special'] ? $result['special'] : $result['price']);
				} else {
					$tax = false;
				}
							
				$data['related_products'][] = array(
					'product_id' => $result['product_id'],
					'description' => utf8_substr(strip_tags(html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8')), 0, $this->config->get('config_product_description_length')) . '..',
					'price'       => $price,
					'thumb'   	 => $image,
					'name'    	 => $result['name'],
					'price'   	 => $price,
					'tax'        => $tax,
					'special' 	 => $special,
					'minimum'     => $result['minimum'] > 0 ? $result['minimum'] : 1,
					'rating'     => $rating,
					'reviews'    => sprintf($this->language->get('text_reviews'), (int)$result['reviews']),
					'href'    	 => $this->url->link('product/product', 'product_id=' . $result['product_id'])
				);
			}
		}

		$data['button_cart'] = $this->language->get('button_cart');
		$data['button_wishlist'] = $this->language->get('button_wishlist');
		$data['button_compare'] = $this->language->get('button_compare');
		
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/videopublisher/review.tpl')) {
			$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/videopublisher/review.tpl', $data));
		} else {
			$this->response->setOutput($this->load->view('default/template/videopublisher/review.tpl', $data));
		}  

	}
}
?>