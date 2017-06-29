<?php
class ModelModuleVideopublisher extends Model {
	public function __construct($register) {
		parent::__construct($register);
	}
	
	public function getAllReviews($language_id = false, $store_id = false, $limit = false, $collection_id = false, $sort_by_date = true, $page = 1) {
		if ($page !== false && is_numeric($page)) {
			if ($limit !== false && is_numeric($limit)) {
				$limit = (string)(($page-1)*$limit) . ', ' . $limit;
			}
		}

		$query = 'SELECT pvr.*, pvrd.*, GROUP_CONCAT(pvr2p.product_id) as product_ids FROM ' . DB_PREFIX . 'videopublisher pvr';
		$query .= ' LEFT JOIN ' . DB_PREFIX . 'pvr_to_product pvr2p ON pvr2p.pvr_id=pvr.pvr_id';
		$query .= ' LEFT JOIN ' . DB_PREFIX . 'pvr_description pvrd ON pvrd.pvr_id=pvr.pvr_id';
		$query .= ' LEFT JOIN ' . DB_PREFIX . 'pvr_to_store pvr2s ON pvr2s.pvr_id=pvr.pvr_id';
		$query .= ' WHERE 1=1';
		$query .= ($store_id === false) ? '' : ' AND pvr2s.store_id=' . (int)$store_id;
		$query .= ($language_id === false) ? '' : ' AND pvrd.language_id=' . (int)$language_id;
		$query .= (empty($collection_id)) ? '' : ' AND pvr.collection_id=' . (int)$collection_id;
		$query .= ' GROUP BY (pvr.pvr_id)';
		$query .= ($sort_by_date === false) ? ' ORDER BY pvr.pvr_id DESC' : ' ORDER BY pvr.date DESC, pvr.pvr_id DESC';
		$query .= ($limit === false) ? '' : ' LIMIT ' . $limit;
		$result = $this->db->query($query)->rows;
		
		foreach ($result as &$review) {
			if (!empty($review['product_ids'])) {
				$review['products'] = $this->db->query('SELECT product_id as id, name FROM ' . DB_PREFIX . 'product_description WHERE product_id IN ('.$review['product_ids'].') GROUP BY product_id')->rows;
			}
		}
		
		return empty($result) ? array() : $result;
	}
	
	public function getLatestReviews($language_id = false, $store_id = false, $limit = false, $collection_id = false, $sort_by_date = true, $page = 1) {
		if ($page !== false && is_numeric($page)) {
			if ($limit !== false && is_numeric($limit)) {
				$limit = (string)(($page-1)*$limit) . ', ' . $limit;
			}
		}
				
		$query = 'SELECT pvr.*, pvrd.*, GROUP_CONCAT(pvr2p.product_id) as product_ids FROM ' . DB_PREFIX . 'videopublisher pvr';
		$query .= ' LEFT JOIN ' . DB_PREFIX . 'pvr_to_product pvr2p ON pvr2p.pvr_id=pvr.pvr_id';
		$query .= ' LEFT JOIN ' . DB_PREFIX . 'pvr_description pvrd ON pvrd.pvr_id=pvr.pvr_id';
		$query .= ' LEFT JOIN ' . DB_PREFIX . 'pvr_to_store pvr2s ON pvr2s.pvr_id=pvr.pvr_id';
		$query .= ' WHERE pvr.date <= CURDATE()';
		$query .= ($store_id === false) ? '' : ' AND pvr2s.store_id=' . (int)$store_id;
		$query .= ($language_id === false) ? '' : ' AND pvrd.language_id=' . (int)$language_id;
		$query .= (empty($collection_id)) ? '' : ' AND pvr.collection_id=' . (int)$collection_id;
		$query .= ' GROUP BY (pvr.pvr_id)';
		$query .= ($sort_by_date === false) ? ' ORDER BY pvr.pvr_id DESC' : ' ORDER BY pvr.date DESC, pvr.pvr_id DESC';
		$query .= ($limit === false) ? '' : ' LIMIT '.$limit;
		$result = $this->db->query($query)->rows;
		foreach ($result as &$review) {
			if (!empty($review['product_ids'])) {
				$review['products'] = $this->db->query('SELECT product_id as id, name FROM ' . DB_PREFIX . 'product_description WHERE product_id IN ('.$review['product_ids'].') GROUP BY product_id')->rows;
			}
		}
		
		return empty($result) ? array() : $result;
	}
	
	public function getReview($pvr_id, $language_id, $store_id) {
		$query = 'SELECT pvr.*, pvrd.*, GROUP_CONCAT(pvr2p.product_id) as product_ids FROM ' . DB_PREFIX . 'videopublisher pvr';
		$query .= ' LEFT JOIN ' . DB_PREFIX . 'pvr_to_product pvr2p ON pvr2p.pvr_id=pvr.pvr_id';
		$query .= ' LEFT JOIN ' . DB_PREFIX . 'pvr_description pvrd ON pvrd.pvr_id=pvr.pvr_id';
		$query .= ' LEFT JOIN ' . DB_PREFIX . 'pvr_to_store pvr2s ON pvr2s.pvr_id=pvr.pvr_id';
		$query .= ' WHERE pvr.pvr_id=' . (int)$pvr_id;
		$query .= ' AND pvr2s.store_id=' . (int)$store_id;
		$query .= ' AND pvrd.language_id=' . (int)$language_id;
		$query .= ' GROUP BY (pvr.pvr_id)';
		$query .= ' LIMIT 1';
		$result = $this->db->query($query)->row;
		
		if (!empty($result['product_ids'])) {
			$result['products'] = $this->db->query('SELECT product_id as id, name FROM ' . DB_PREFIX . 'product_description WHERE product_id IN ('.$result['product_ids'].') GROUP BY product_id')->rows;
		}
		
		return empty($result) ? array() : $result;
	}
	
	public function getRelatedVideos($product_id, $language_id, $store_id, $limit = false, $sort_by_date = true, $filter_by_date = true) {
        $query = 'SELECT pvr.*, pvrd.*, GROUP_CONCAT(pvr2p.product_id) as product_ids FROM ' . DB_PREFIX . 'videopublisher pvr';
        $query .= ' LEFT JOIN ' . DB_PREFIX . 'pvr_to_product pvr2p ON pvr2p.pvr_id=pvr.pvr_id';
        $query .= ' LEFT JOIN ' . DB_PREFIX . 'pvr_description pvrd ON pvrd.pvr_id=pvr.pvr_id';
        $query .= ' LEFT JOIN ' . DB_PREFIX . 'pvr_to_store pvr2s ON pvr2s.pvr_id=pvr.pvr_id';
        $query .= ' WHERE pvr2p.product_id='.(int)$product_id;
        $query .= ($filter_by_date === false) ? '' : ' AND pvr.date <= CURDATE()';
        $query .= ($store_id === false) ? '' : ' AND pvr2s.store_id=' . (int)$store_id;
        $query .= ($language_id === false) ? '' : ' AND pvrd.language_id=' . (int)$language_id;
        $query .= ' GROUP BY (pvr.pvr_id)';
        $query .= ($sort_by_date === false) ? ' ORDER BY pvr.pvr_id DESC' : ' ORDER BY pvr.date DESC, pvr.pvr_id DESC';
        $query .= ($limit === false || $limit === null) ? '' : ' LIMIT '.$limit;
        return $this->db->query($query)->rows;
    } 
	
	public function getPvrRelated($pvr_id, $store_id) {
		$product_data = array();

		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "pvr_to_product pvr2p LEFT JOIN " . DB_PREFIX . "product p ON (pvr2p.product_id = p.product_id) LEFT JOIN " . DB_PREFIX . "product_to_store p2s ON (p.product_id = p2s.product_id) WHERE pvr2p.pvr_id = '" . (int)$pvr_id . "' AND p.status = '1' AND p.date_available <= NOW() AND p2s.store_id = '" . (int)$this->config->get('config_store_id') . "'");
		
		foreach ($query->rows as $result) { 
			$product_data[$result['product_id']] = $this->getProduct($result['product_id']);
		}
		
		return $product_data;
	}
	
	public function getTotalReviews($language_id, $store_id) {
		$query = 'SELECT COUNT(DISTINCT pvr.pvr_id) as total FROM ' . DB_PREFIX . 'videopublisher pvr';
		$query .= ' LEFT JOIN ' . DB_PREFIX . 'pvr_description pvrd ON pvrd.pvr_id=pvr.pvr_id';
		$query .= ' LEFT JOIN ' . DB_PREFIX . 'pvr_to_store pvr2s ON pvr2s.pvr_id=pvr.pvr_id';
		$query .= ' WHERE 1=1';
		$query .= ($store_id === false) ? '' : ' AND pvr2s.store_id=' . (int)$store_id;
		$query .= ($language_id === false) ? '' : ' AND pvrd.language_id=' . (int)$language_id;

		return (int)$this->db->query($query)->row['total'];
	}
	
	public function isModuleInstalled() {
		$result = $this->db->query("SELECT * FROM " . DB_PREFIX . "extension WHERE `type` = 'module' AND `code` = 'videopublisher'");
		return !empty($result->num_rows);
	}
	
	public function getProduct($product_id) {
		if ($this->customer->isLogged()) {
			$customer_group_id = $this->customer->getCustomerGroupId();
		} else {
			$customer_group_id = $this->config->get('config_customer_group_id');
		}	
				
		$query = $this->db->query("SELECT DISTINCT *, pd.name AS name, p.image, m.name AS manufacturer, (SELECT price FROM " . DB_PREFIX . "product_discount pd2 WHERE pd2.product_id = p.product_id AND pd2.customer_group_id = '" . (int)$customer_group_id . "' AND pd2.quantity = '1' AND ((pd2.date_start = '0000-00-00' OR pd2.date_start < NOW()) AND (pd2.date_end = '0000-00-00' OR pd2.date_end > NOW())) ORDER BY pd2.priority ASC, pd2.price ASC LIMIT 1) AS discount, (SELECT price FROM " . DB_PREFIX . "product_special ps WHERE ps.product_id = p.product_id AND ps.customer_group_id = '" . (int)$customer_group_id . "' AND ((ps.date_start = '0000-00-00' OR ps.date_start < NOW()) AND (ps.date_end = '0000-00-00' OR ps.date_end > NOW())) ORDER BY ps.priority ASC, ps.price ASC LIMIT 1) AS special, (SELECT points FROM " . DB_PREFIX . "product_reward pr WHERE pr.product_id = p.product_id AND customer_group_id = '" . (int)$customer_group_id . "') AS reward, (SELECT ss.name FROM " . DB_PREFIX . "stock_status ss WHERE ss.stock_status_id = p.stock_status_id AND ss.language_id = '" . (int)$this->config->get('config_language_id') . "') AS stock_status, (SELECT wcd.unit FROM " . DB_PREFIX . "weight_class_description wcd WHERE p.weight_class_id = wcd.weight_class_id AND wcd.language_id = '" . (int)$this->config->get('config_language_id') . "') AS weight_class, (SELECT lcd.unit FROM " . DB_PREFIX . "length_class_description lcd WHERE p.length_class_id = lcd.length_class_id AND lcd.language_id = '" . (int)$this->config->get('config_language_id') . "') AS length_class, (SELECT AVG(rating) AS total FROM " . DB_PREFIX . "review r1 WHERE r1.product_id = p.product_id AND r1.status = '1' GROUP BY r1.product_id) AS rating, (SELECT COUNT(*) AS total FROM " . DB_PREFIX . "review r2 WHERE r2.product_id = p.product_id AND r2.status = '1' GROUP BY r2.product_id) AS reviews, p.sort_order FROM " . DB_PREFIX . "product p LEFT JOIN " . DB_PREFIX . "product_description pd ON (p.product_id = pd.product_id) LEFT JOIN " . DB_PREFIX . "product_to_store p2s ON (p.product_id = p2s.product_id) LEFT JOIN " . DB_PREFIX . "manufacturer m ON (p.manufacturer_id = m.manufacturer_id) WHERE p.product_id = '" . (int)$product_id . "' AND pd.language_id = '" . (int)$this->config->get('config_language_id') . "' AND p.status = '1' AND p.date_available <= NOW() AND p2s.store_id = '" . (int)$this->config->get('config_store_id') . "'");
		
		if ($query->num_rows) {
			return array(
				'product_id'       => $query->row['product_id'],
				'name'             => $query->row['name'],
				'description'      => $query->row['description'],
				'meta_description' => $query->row['meta_description'],
				'meta_keyword'     => $query->row['meta_keyword'],
				'tag'              => $query->row['tag'],
				'model'            => $query->row['model'],
				'sku'              => $query->row['sku'],
				'upc'              => $query->row['upc'],
				'ean'              => $query->row['ean'],
				'jan'              => $query->row['jan'],
				'isbn'             => $query->row['isbn'],
				'mpn'              => $query->row['mpn'],
				'location'         => $query->row['location'],
				'quantity'         => $query->row['quantity'],
				'stock_status'     => $query->row['stock_status'],
				'image'            => $query->row['image'],
				'manufacturer_id'  => $query->row['manufacturer_id'],
				'manufacturer'     => $query->row['manufacturer'],
				'price'            => ($query->row['discount'] ? $query->row['discount'] : $query->row['price']),
				'special'          => $query->row['special'],
				'reward'           => $query->row['reward'],
				'points'           => $query->row['points'],
				'tax_class_id'     => $query->row['tax_class_id'],
				'date_available'   => $query->row['date_available'],
				'weight'           => $query->row['weight'],
				'weight_class_id'  => $query->row['weight_class_id'],
				'length'           => $query->row['length'],
				'width'            => $query->row['width'],
				'height'           => $query->row['height'],
				'length_class_id'  => $query->row['length_class_id'],
				'subtract'         => $query->row['subtract'],
				'rating'           => round($query->row['rating']),
				'reviews'          => $query->row['reviews'] ? $query->row['reviews'] : 0,
				'minimum'          => $query->row['minimum'],
				'sort_order'       => $query->row['sort_order'],
				'status'           => $query->row['status'],
				'date_added'       => $query->row['date_added'],
				'date_modified'    => $query->row['date_modified'],
				'viewed'           => $query->row['viewed']
			);
		} else {
			return false;
		}
	}
}