<?php
class ControllerCommonFooter extends Controller {
	public function index() {
		$this->load->language('common/footer');

		$data['scripts'] = $this->document->getScripts('footer');

		$data['text_information'] = $this->language->get('text_information');
		$data['text_service'] = $this->language->get('text_service');
		$data['text_extra'] = $this->language->get('text_extra');
		$data['text_contact'] = $this->language->get('text_contact');
		$data['text_return'] = $this->language->get('text_return');
		$data['text_sitemap'] = $this->language->get('text_sitemap');
		$data['text_manufacturer'] = $this->language->get('text_manufacturer');
		$data['text_voucher'] = $this->language->get('text_voucher');
		$data['text_affiliate'] = $this->language->get('text_affiliate');
		$data['text_special'] = $this->language->get('text_special');
		$data['text_account'] = $this->language->get('text_account');
		$data['text_room'] = $this->language->get('text_room');
		$data['text_order'] = $this->language->get('text_order');
		$data['text_wishlist'] = $this->language->get('text_wishlist');
		$data['text_newsletter'] = $this->language->get('text_newsletter');
		$data['text_catrgories'] = $this->language->get('text_catrgories');
		$data['text_warning'] = $this->language->get('text_warning');
		$data['text_callback'] = $this->language->get('text_callback');

		$this->load->model('catalog/information');

		$data['informations'] = array();

		foreach ($this->model_catalog_information->getInformations() as $result) {
			if ($result['bottom']) {
				$data['informations'][] = array(
					'title' => $result['title'],
					'href'  => $this->url->link('information/information', 'information_id=' . $result['information_id'])
				);
			}
		}
        $data['logged'] = $this->customer->isLogged();
		$data['contact'] = $this->url->link('information/contact');
		$data['return'] = $this->url->link('account/return/add', '', 'SSL');
		$data['sitemap'] = $this->url->link('information/sitemap');
		$data['manufacturer'] = $this->url->link('product/manufacturer');
		$data['voucher'] = $this->url->link('account/voucher', '', 'SSL');
		$data['affiliate'] = $this->url->link('affiliate/account', '', 'SSL');
		$data['special'] = $this->url->link('product/special');
		$data['account'] = $this->url->link('account/account', '', 'SSL');
		$data['order'] = $this->url->link('account/order', '', 'SSL');
		$data['wishlist'] = $this->url->link('account/wishlist', '', 'SSL');
		$data['newsletter'] = $this->url->link('account/newsletter', '', 'SSL');

        $data['email'] = $this->config->get('config_email');
        $data['site_name'] = $this->config->get('config_name');
        $data['site_descr'] = $this->config->get('config_meta_description');
        $data['telephone'] = $this->config->get('config_telephone');
        $data['telephone2'] = $this->config->get('config_telephone2');
        $data['open'] = nl2br($this->config->get('config_open'));
        $data['home'] = $this->url->link('common/home');

		$data['powered'] = sprintf(date('Y', time()));

        // Menu
        $this->load->model('catalog/category');

        $this->load->model('catalog/product');

        $data['categories'] = array();

        $categories = $this->model_catalog_category->getCategories(0);

        foreach ($categories as $category) {
            if ($category['top']) {
                // Level 2
                $children_data = array();

                $children = $this->model_catalog_category->getCategories($category['category_id']);

                foreach ($children as $child) {
                    $filter_data = array(
                        'filter_category_id'  => $child['category_id'],
                        'filter_sub_category' => true
                    );

                    $children_data[] = array(
                        'name'  => $child['name'],
                        'href'  => $this->url->link('product/category', 'path=' . $category['category_id'] . '_' . $child['category_id'])
                    );
                }

                // Level 1
                $data['categories'][] = array(
                    'name'     => $category['name'],
                    'children' => $children_data,
                    'column'   => $category['column'] ? $category['column'] : 1,
                    'href'     => $this->url->link('product/category', 'path=' . $category['category_id'])
                );
            }
        }

		// Whos Online
		if ($this->config->get('config_customer_online')) {
			$this->load->model('tool/online');

			if (isset($this->request->server['REMOTE_ADDR'])) {
				$ip = $this->request->server['REMOTE_ADDR'];
			} else {
				$ip = '';
			}

			if (isset($this->request->server['HTTP_HOST']) && isset($this->request->server['REQUEST_URI'])) {
				$url = 'http://' . $this->request->server['HTTP_HOST'] . $this->request->server['REQUEST_URI'];
			} else {
				$url = '';
			}

			if (isset($this->request->server['HTTP_REFERER'])) {
				$referer = $this->request->server['HTTP_REFERER'];
			} else {
				$referer = '';
			}

			$this->model_tool_online->addOnline($ip, $this->customer->getId(), $url, $referer);
		}

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/footer.tpl')) {
			return $this->load->view($this->config->get('config_template') . '/template/common/footer.tpl', $data);
		} else {
			return $this->load->view('default/template/common/footer.tpl', $data);
		}
	}
}
