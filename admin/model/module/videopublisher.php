<?php
class ModelModuleVideopublisher extends Model {
	
	public function __construct($register) {
		parent::__construct($register);
	}
	
	public function getAllReviews($store_id = false, $language_id = false, $limit = false, $page = false) {
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
		$query .= ' GROUP BY (pvr.pvr_id)';
		$query .= ' ORDER BY (pvr.pvr_id) DESC';	
		$query .= ($limit === false) ? '' : ' LIMIT ' . $limit;
		$result = $this->db->query($query)->rows;
		
		foreach ($result as &$review) {
			if (!empty($review['product_ids'])) {
				$review['products'] = $this->db->query('SELECT product_id as id, name FROM ' . DB_PREFIX . 'product_description WHERE product_id IN ('.$review['product_ids'].') GROUP BY product_id')->rows;
			}
		}
		
		return empty($result) ? array() : $result;
	}
	
	public function getTotalReviews() {
		$result = $this->db->query("SELECT COUNT(DISTINCT pvr_id) as total FROM " . DB_PREFIX . "videopublisher");
		return (int)$result->row['total'];
	}
	
	public function getReview($pvr_id) {
		$query = 'SELECT pvr.*, GROUP_CONCAT(pvr2p.product_id) as product_ids, GROUP_CONCAT(pvr2s.store_id) as store_ids FROM ' . DB_PREFIX . 'videopublisher pvr';
		$query .= ' LEFT JOIN ' . DB_PREFIX . 'pvr_to_product pvr2p ON pvr2p.pvr_id=pvr.pvr_id';
		$query .= ' LEFT JOIN ' . DB_PREFIX . 'pvr_to_store pvr2s ON pvr2s.pvr_id=pvr.pvr_id';
		$query .= ' WHERE pvr.pvr_id='.(int)$pvr_id;
		$query .= ' GROUP BY pvr.pvr_id';
		$result = $this->db->query($query)->row;

	//	foreach ($result as &$review) { 
			if (!empty($result['product_ids'])) {
				$result['products'] = $this->db->query('SELECT product_id as id, name FROM ' . DB_PREFIX . 'product_description WHERE product_id IN ('.$result['product_ids'].') GROUP BY product_id')->rows;
			}
			$result['store_ids'] = array_unique(explode(',', $result['store_ids']));
	//	}
;
		return empty($result) ? array() : $result;
	}
	
	public function getReviewDescription($pvr_id) {
		$query = 'SELECT pvrd.* FROM ' . DB_PREFIX . 'pvr_description pvrd';
		$query .= ' LEFT JOIN ' . DB_PREFIX . 'videopublisher pvr ON pvr.pvr_id=pvrd.pvr_id';
		$query .= ' WHERE pvr.pvr_id='.(int)$pvr_id;
		$query .= ' GROUP BY pvrd.language_id';
		$result = $this->db->query($query)->rows;

		return empty($result) ? array() : $result;
	}
	
	public function addCollection($data) {
	
		if(!empty($data['collection_id'])) { 	
					$this->db->query("UPDATE " . DB_PREFIX . "pvr_collection SET title = ('".$this->db->escape(json_encode($data['title'], 1))."') WHERE collection_id = ".$data['collection_id']);
		} else {		
		$this->db->query("INSERT INTO " . DB_PREFIX . "pvr_collection (title) VALUES ('".$this->db->escape(json_encode($data['title'], 1))."')");
		}
	}
	
	public function deleteCollections($collection_id) {
		$this->db->query('DELETE FROM ' . DB_PREFIX . 'pvr_collection WHERE collection_id='.(int)$collection_id);
	}
	
	public function getCollections($page, $limit) {
		if($page!==0 && $limit!==0) {
			$start = ((int)$page-1)*(int)$limit;
			$limit_clause = " LIMIT {$start}, {$limit}";	
		} else {
			$limit_clause = " ";	
		}
	
		return $this->db->query("SELECT * FROM " . DB_PREFIX . "pvr_collection" . $limit_clause)->rows;
	}
	
	public function getCollection($collection_id) {
		return $this->db->query("SELECT * FROM " . DB_PREFIX . "pvr_collection WHERE collection_id= " . $collection_id)->row;
	}
	
	public function getTotalCollections() {
		return $this->db->query("SELECT * FROM " . DB_PREFIX . "pvr_collection")->num_rows;
	}
	
	public function addReview($data) {
		if(isset($data['rating_status']) && $data['rating_status'] == 1 ) {
			$data['display_rating'] = 1;
		} else {
			$data['display_rating'] = 0;
		}
		
		if(!empty($data['review_id'])) { 
			$update_query = 'UPDATE ' . DB_PREFIX . 'videopublisher SET collection_id='.$data['collection_id'].', rating='.$data['rating'].', display_rating='.$data['display_rating'].', date="'.$data['date'].'" WHERE pvr_id='.$data['review_id'];
			$this->db->query($update_query);
			
			$delete_query = "DELETE FROM " . DB_PREFIX . "pvr_description WHERE pvr_id=".$data['review_id'];
			$this->db->query($delete_query);
			
			$delete_query = "DELETE FROM " . DB_PREFIX . "pvr_to_product WHERE pvr_id=".$data['review_id'];
			$this->db->query($delete_query);
			
			$delete_query = "DELETE FROM " . DB_PREFIX . "pvr_to_store WHERE pvr_id=".$data['review_id'];
			$this->db->query($delete_query);
			
			$pvr_id = $data['review_id'];
			
		} else {
			$insert_query = 'INSERT INTO ' . DB_PREFIX . 'videopublisher (collection_id, rating, display_rating, date) VALUES('.$data['collection_id'].', '.$data['rating'].', '.$data['display_rating'].', "'.$data['date'].'")';
			$this->db->query($insert_query);
			
			$pvr_id = $this->db->getLastId();
		}
		
					
		$insert_query = "INSERT INTO " . DB_PREFIX . "pvr_description (author, slug, link, video_link, image_link, title, text, pvr_id, language_id) VALUES";

		foreach ($data['videoReview'] as $language_id=>$review_data) {
			if (!is_numeric($language_id)) continue;
			
			$insert_query .= " ('".$this->db->escape($review_data['author'])."', '".$this->db->escape($review_data['slug'])."', '".$review_data['link']."', '".$review_data['video_link']."', '".$review_data['image_link']."', '".$this->db->escape($review_data['title'])."', '".$this->db->escape($review_data['text'])."', ".$pvr_id.", ".$language_id."),";
		}
		$this->db->query(rtrim($insert_query, ','));
		
		if (!empty($data['product_ids'])) {
			$insert_query = 'INSERT INTO ' . DB_PREFIX . 'pvr_to_product (pvr_id, product_id) VALUES';
			foreach ($data['product_ids'] as $product_id) {
				$insert_query .= ' ('.$pvr_id.', '.$product_id.'),';
			}
			$this->db->query(rtrim($insert_query, ','));
		}
		
		$insert_query = 'INSERT INTO ' . DB_PREFIX . 'pvr_to_store (pvr_id, store_id) VALUES';
		foreach ($data['store_ids'] as $store_id) { 
			$insert_query .= ' ('.$pvr_id.', '.$store_id.'),';
		}
		$this->db->query(rtrim($insert_query, ','));
		
		return $pvr_id;
	}
	
	/*public function editReview($pvr_id, $data) {
		$update_query = 'UPDATE ' . DB_PREFIX . 'videopublisher SET collection_id='.$data['collection_id'].', rating='.$data['rating'].', display_rating='.$data['display_rating'].', date="'.$data['date'].'" WHERE pvr_id='.$pvr_id;
		$this->db->query($update_query);
		
		$delete_query = "DELETE FROM " . DB_PREFIX . "pvr_description WHERE pvr_id=".$pvr_id;
		$this->db->query($delete_query);
		
		$insert_query = "INSERT INTO " . DB_PREFIX . "pvr_description (author, slug, link, video_link, image_link, title, text, pvr_id, language_id) VALUES";
		foreach ($data as $language_id=>$review_data) {
			if (!is_numeric($language_id)) continue;
			
			$insert_query .= " ('".$this->db->escape($review_data['author'])."', '".$this->db->escape($review_data['slug'])."', '".$review_data['link']."', '".$review_data['video_link']."','".$review_data['image_link']."', '".$this->db->escape($review_data['title'])."', '".$this->db->escape($review_data['text'])."', ".$pvr_id.", ".$language_id."),";
		}
		$this->db->query(rtrim($insert_query, ','));
		
		$delete_query = "DELETE FROM " . DB_PREFIX . "pvr_to_product WHERE pvr_id=".$pvr_id;
		$this->db->query($delete_query);
		
		if (!empty($data['product_ids'])) {
			$insert_query = 'INSERT INTO ' . DB_PREFIX . 'pvr_to_product (pvr_id, product_id) VALUES';
			foreach ($data['product_ids'] as $product_id) {
				$insert_query .= ' ('.$pvr_id.', '.$product_id.'),';
			}
			$this->db->query(rtrim($insert_query, ','));
		}
		
		$delete_query = "DELETE FROM " . DB_PREFIX . "pvr_to_store WHERE pvr_id=".$pvr_id;
		$this->db->query($delete_query);
		
		$insert_query = 'INSERT INTO ' . DB_PREFIX . 'pvr_to_store (pvr_id, store_id) VALUES';
		 
		foreach ($data['store_ids'] as $store_id) {
			$insert_query .= ' ('.$pvr_id.', '.$store_id.'),';
		}
		$this->db->query(rtrim($insert_query, ','));
	}*/
	
	public function deleteReview($pvr_id) {
		return $this->db->query('DELETE FROM ' . DB_PREFIX . 'videopublisher WHERE pvr_id='.(int)$pvr_id);
	}
	
	public function createCollectionsTable() {
		$create_sql = 'CREATE TABLE ' . DB_PREFIX . 'pvr_collection (';
		$create_sql .= 'collection_id INT(11) NOT NULL AUTO_INCREMENT, ';
		$create_sql .= 'title varchar(256) NOT NULL, ';
		$create_sql .= 'PRIMARY KEY(collection_id)';
		$create_sql .= ') ENGINE = INNODB';
		$this->db->query($create_sql);
	}
	
	public function addCollectionColumn() {
		$this->db->query('ALTER TABLE ' . DB_PREFIX . 'videopublisher ADD COLUMN collection_id INT(11) NOT NULL AFTER pvr_id');
	}
	
	public function createTable(){
		$create_sql = 'CREATE TABLE ' . DB_PREFIX . 'pvr_collection (';
		$create_sql .= 'collection_id INT(11) NOT NULL AUTO_INCREMENT, ';
		$create_sql .= 'title varchar(256) NOT NULL, ';
		$create_sql .= 'PRIMARY KEY(collection_id)';
		$create_sql .= ') ENGINE = INNODB';
		$this->db->query($create_sql);
		
		$create_sql = 'CREATE TABLE ' . DB_PREFIX . 'videopublisher (';
		$create_sql .= 'pvr_id INT(11) NOT NULL AUTO_INCREMENT, ';
		$create_sql .= 'PRIMARY KEY(pvr_id), ';
		$create_sql .= 'collection_id INT(11) NOT NULL, ';
		$create_sql .= 'rating TINYINT(1) UNSIGNED, ';
		$create_sql .= 'display_rating TINYINT(1) UNSIGNED, ';
		$create_sql .= 'date DATE';
		$create_sql .= ') ENGINE = INNODB';
		$this->db->query($create_sql);
		
		$create_sql = 'CREATE TABLE ' . DB_PREFIX . 'pvr_description (';
		$create_sql .= 'pvr_id INT(11) NOT NULL, ';
		$create_sql .= 'FOREIGN KEY (pvr_id) REFERENCES ' . DB_PREFIX . 'videopublisher(pvr_id) ON DELETE CASCADE ON UPDATE CASCADE,';
		$create_sql .= 'language_id INT(11) NOT NULL, ';
		$create_sql .= 'PRIMARY KEY(pvr_id, language_id), ';
		$create_sql .= 'author VARCHAR(100), ';
		$create_sql .= 'slug VARCHAR(255), ';
		$create_sql .= 'link VARCHAR(255), ';
		$create_sql .= 'video_link VARCHAR(255), ';
		$create_sql .= 'image_link VARCHAR(255), ';
		$create_sql .= 'title VARCHAR(255), ';
		$create_sql .= 'text TEXT';
		$create_sql .= ') ENGINE = INNODB CHARACTER SET utf8';
		$this->db->query($create_sql);
		
		$create_sql = 'CREATE TABLE ' . DB_PREFIX . 'pvr_to_store (';
		$create_sql .= 'pvr_id INT(11) NOT NULL, ';
		$create_sql .= 'FOREIGN KEY (pvr_id) REFERENCES ' . DB_PREFIX . 'videopublisher(pvr_id) ON DELETE CASCADE ON UPDATE CASCADE,';
		$create_sql .= 'store_id INT(11) NOT NULL, ';
		$create_sql .= 'PRIMARY KEY(pvr_id, store_id)';
		$create_sql .= ') ENGINE = INNODB';
		$this->db->query($create_sql);
		
		$create_sql = 'CREATE TABLE ' . DB_PREFIX . 'pvr_to_product (';
		$create_sql .= 'pvr_id INT(11) NOT NULL, ';
		$create_sql .= 'FOREIGN KEY (pvr_id) REFERENCES ' . DB_PREFIX . 'videopublisher(pvr_id) ON DELETE CASCADE ON UPDATE CASCADE,';
		$create_sql .= 'product_id INT(11) NOT NULL, ';
		$create_sql .= 'PRIMARY KEY(pvr_id, product_id)';
		$create_sql .= ') ENGINE = INNODB';
		$this->db->query($create_sql);
	}
	
	public function dropTable() {
		$drop_sql = 'DROP TABLE IF EXISTS ' . DB_PREFIX . 'pvr_to_product, ' . DB_PREFIX . 'pvr_to_store, ' . DB_PREFIX . 'pvr_description, ' . DB_PREFIX . 'videopublisher, ' . DB_PREFIX . 'pvr_collection';
		$this->db->query($drop_sql);
	}
	
	public function getSystemStores() {
		$this->load->model('setting/store');
		return array_merge(array(0 => array('store_id' => '0', 'name' => $this->config->get('config_name') . ' (' .$this->language->get('text_default') . ')', 'url' => NULL, 'ssl' => NULL)), $this->model_setting_store->getStores());
	}
	
	public function getSystemLanguages() {
		$this->load->model('localisation/language');
		$languages = $this->model_localisation_language->getLanguages(array());
		return $languages;
	}
	
	public function getLastModuleByCode($code) {
		$query = $this->db->query("SELECT * FROM `" . DB_PREFIX . "module` WHERE `code` = '" . $this->db->escape($code) . "' ORDER BY `module_id` DESC");

		return $query->rows;
	}
}