<?php 
class ModelModuleLabelMaker extends Model {
	private $db_column = 'group';

	public function do_upgrade() {
		if (version_compare(VERSION, '2.0.1.0', '>=')) {
			$this->db_column = 'code';
		}
		
		// Upgrade to OC 2.1.x from 2.0.x settings serilization fix
		$label_maker_settings = $this->db->query("SELECT * FROM " . DB_PREFIX . "setting WHERE `" . $this->db_column . "` = '" . $this->db->escape('labelmaker') . "' AND  serialized = '1'");

		if($label_maker_settings->num_rows > 0) { 
			if ((VERSION > '2.0.3.1') && isset($label_maker_settings->row['value']) && !@json_decode($label_maker_settings->row['value'], true)) {
			
				foreach($label_maker_settings->rows as $label_maker_setting) {	
					$value = unserialize($label_maker_setting['value']);
					
					$this->db->query("UPDATE " . DB_PREFIX . "setting SET `value` = '" . $this->db->escape(json_encode($value)) . "' WHERE setting_id= '". $this->db->escape($label_maker_setting['setting_id']) . "'"); 
						
				}
			}
		}
	}

	public function getFonts($fontsFolder) {
		$fonts = array();

        if (is_dir($fontsFolder)) {
            $fontsFolderFiles = $this->scan_dir($fontsFolder);
            foreach ($fontsFolderFiles as $font) {
                if (substr($font, strripos($font, '.ttf')) == '.ttf') {
                    $fonts[] = $font;
                }
            }
        }

        return $fonts;
	}

	private $mime_types = array("image/bmp", "image/cis-cod", "image/gif", "image/png", "image/ief", "image/jpeg", "image/pipeg", "image/svg+xml", "image/tiff", "image/x-cmu-raster", "image/x-cmx", "image/x-icon", "image/x-portable-anymap", "image/x-portable-bitmap", "image/x-portable-graymap", "image/x-portable-pixmap", "image/x-rgb", "image/x-xbitmap", "image/x-xpixmap", "image/x-xwindowdump");

	public function is_image($path)
	{
	    if (preg_match('/\.(jpe?g|png|gif|bmp)(\s*|$)/', $path)) {
	        
	        $a = getimagesize($path);
	        
	        if ($a !== false && !empty($a['mime']) && in_array($a['mime'], $this->mime_types)) {    
	            return true;
	        }
	        
	    }
	    
	    return false;
	}

	public function getOrderProductIds($order_id) {
		$result = array();

		$rows = $this->db->query("SELECT DISTINCT product_id FROM " . DB_PREFIX . "order_product WHERE order_id='" . (int)$order_id . "'")->rows;

		foreach ($rows as $row) {
			$result[] = $row['product_id'];
		}

		return $result;
	}

	public function isHTTPS() {
		return isset($this->request->server['HTTPS']) && (($this->request->server['HTTPS'] == 'on') || ($this->request->server['HTTPS'] == '1'));
	}

	public function getLanguages() {
		$this->load->model('localisation/language');

		$results = $this->model_localisation_language->getLanguages();

		$languages = array();

		foreach ($results as $result) {
		    $flag_url = version_compare(VERSION, '2.2.0.0', "<") ? 'view/image/flags/' . $result['image'] : 'language/' . $result['code'] . '/' . $result['code'] . '.png';
		    if ((int)$result['status'] == 1) {
		        if (file_exists($flag_url)) {
		            if ($this->is_image($flag_url)) {
		                $flag = ((isset($this->request->server['HTTPS']) && (($this->request->server['HTTPS'] == 'on') || ($this->request->server['HTTPS'] == '1'))) ? HTTPS_SERVER : HTTP_SERVER) . $flag_url;
		            } else {
		                $flag = false;
		            }
		        } else {
		            $flag = false;
		        }
		        
		        $languages[] = array(
		            'language_id' => $result['language_id'],
		            'name' => $result['name'],
		            'flag' => $flag
		        );
		    }
		}

		return $languages;
	}

	public function getImages($root_dir, $path) {
		$dir = $root_dir . $path;

		$images = array();

		if (is_dir($dir)) {
		    $uploaded_images = $this->scan_dir($dir);
		    
		    foreach ($uploaded_images as $uploaded_image) {
		        if ($this->is_image($dir . $uploaded_image)) {
		            list($width, $height) = getimagesize($dir . $uploaded_image);
		            
		            // Check Overall Color Contrast
		            $src = ((isset($this->request->server['HTTPS']) && (($this->request->server['HTTPS'] == 'on') || ($this->request->server['HTTPS'] == '1'))) ? HTTPS_CATALOG : HTTP_CATALOG) . $path . $uploaded_image;
		            
		            $images[] = array(
		                'path' => $path . $uploaded_image,
		                'src' => $src,
		                'name' => $uploaded_image,
		                'dimensions' => array(
		                    'width' => $width,
		                    'height' => $height
		                )
		            );
		        }
		    }
		}

		return $images;
	}

	public function scan_dir($dir) {
	    $ignored = array(
	        '.',
	        '..'
	    );
	  
	    $files = array();

	    foreach (scandir($dir) as $file) {
	        if (!in_array($file, $ignored)) {
	            $files[$file] = filemtime($dir . '/' . $file);
	        }
	    }

	    arsort($files);
	    
	    $files = array_keys($files);
	    
	    return ($files) ? $files : array();
	}

	public function iconstruct() {
		if (!defined('IMODULE_ROOT')) define('IMODULE_ROOT', dirname(DIR_APPLICATION) . '/');
		if (!defined('IMODULE_SERVER_NAME')) define('IMODULE_SERVER_NAME', substr((defined('HTTP_CATALOG') ? HTTP_CATALOG : HTTP_SERVER), 7, strlen((defined('HTTP_CATALOG') ? HTTP_CATALOG : HTTP_SERVER)) - 8));
		//parent::__construct($register);

		$db_column_query = $this->db->query("SELECT * FROM " . DB_PREFIX . "setting");

		if (isset($db_column_query->row['code'])) {
			$this->db_column = 'code';
		}
	}
	
	public function getSetting($group, $store_id = 0) {
		$data = array();

		if (version_compare(VERSION, '2.0.1.0', '>=')) {
			$this->db_column = 'code';
		}
	
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "setting WHERE store_id = '" . (int)$store_id . "' AND `" . $this->db_column . "` = '" . $this->db->escape($group) . "'");
		
		foreach ($query->rows as $result) {
			if (!$result['serialized']) {
				$data[$result['key']] = $result['value'];
			} else {
				if(VERSION > '2.0.3.1'){
					$data[$result['key']] = json_decode($result['value'], true);
				} else {
					
					$data[$result['key']] = unserialize($result['value']);
				}	
			}
		}

		return $data;
	}
	
	public function editSetting($group, $data, $store_id = 0) {
		if (version_compare(VERSION, '2.0.1.0', '>=')) {
			$this->db_column = 'code';
		}
	
		$this->db->query("DELETE FROM " . DB_PREFIX . "setting WHERE store_id = '" . (int)$store_id . "' AND `" . $this->db_column . "` = '" . $this->db->escape($group) . "'");

		foreach ($data as $key => $value) {
			if (!is_array($value)) {
				$this->db->query("INSERT INTO " . DB_PREFIX . "setting SET store_id = '" . (int)$store_id . "', `" . $this->db_column . "` = '" . $this->db->escape($group) . "', `key` = '" . $this->db->escape($key) . "', `value` = '" . $this->db->escape($value) . "'");
			} else {
				
				if(VERSION > '2.0.3.1'){
					$this->db->query("INSERT INTO " . DB_PREFIX . "setting SET store_id = '" . (int)$store_id . "', `" . $this->db_column . "` = '" . $this->db->escape($group) . "', `key` = '" . $this->db->escape($key) . "', `value` = '" . $this->db->escape(json_encode($value)) . "', serialized = '1'"); 
				} else {
					$this->db->query("INSERT INTO " . DB_PREFIX . "setting SET store_id = '" . (int)$store_id . "', `" . $this->db_column . "` = '" . $this->db->escape($group) . "', `key` = '" . $this->db->escape($key) . "', `value` = '" . $this->db->escape(serialize($value)) . "', serialized = '1'"); 
				}
			}
		}
	}
	
	public function deleteSetting($group, $store_id = 0) {
		$this->db->query("DELETE FROM " . DB_PREFIX . "setting WHERE store_id = '" . (int)$store_id . "' AND `" . $this->db_column . "` = '" . $this->db->escape($group) . "'");
	}
	
	public function returnMaxUploadSize($readable = false) {
		$upload = $this->return_bytes(ini_get('upload_max_filesize'));
		$post = $this->return_bytes(ini_get('post_max_size'));
		
		if ($upload >= $post) return $readable ? $this->sizeToString($post - 524288) : $post - 524288;
		else return $readable ? $this->sizeToString($upload) : $upload;
	}
	
	private function return_bytes($val) { //from http://php.net/manual/en/function.ini-get.php
		$val = trim($val);
		$last = strtolower($val[strlen($val)-1]);
		switch($last) {
			// The 'G' modifier is available since PHP 5.1.0
			case 'g':
				$val *= 1024;
			case 'm':
				$val *= 1024;
			case 'k':
				$val *= 1024;
		}
	
		return $val;
	}
	
	private function sizeToString($size) {
		$count = 0;
		for ($i = $size; $i >= 1024; $i /= 1024) $count++;
		switch ($count) {
			case 0 : $suffix = ' B'; break;
			case 1 : $suffix = ' KB'; break;
			case 2 : $suffix = ' MB'; break;
			case 3 : $suffix = ' GB'; break;
			case ($count >= 4) : $suffix = ' TB'; break;
		}
		return round($i, 2).$suffix;
	}
	
	public function cleanFolder($tempDir) {
		if (empty($tempDir)) return false;
		$files = scandir($tempDir);
		foreach ($files as $file) {
			if (!in_array($file, array('.', '..', 'index.html'))) {
				if (is_file($tempDir.'/'.$file)) unlink($tempDir.'/'.$file);
				if (is_dir($tempDir.'/'.$file)) {
					$this->cleanFolder($tempDir.'/'.$file);	
					rmdir($tempDir.'/'.$file);
				}
			}
		}
	}
	
	public function hex2rgb($hex) { // from http://bavotasan.com/2011/convert-hex-color-to-rgb-using-php/
		$hex = str_replace("#", "", $hex);
		
		if(strlen($hex) == 3) {
			$r = hexdec(substr($hex,0,1).substr($hex,0,1));
			$g = hexdec(substr($hex,1,1).substr($hex,1,1));
			$b = hexdec(substr($hex,2,1).substr($hex,2,1));
		} else {
			$r = hexdec(substr($hex,0,2));
			$g = hexdec(substr($hex,2,2));
			$b = hexdec(substr($hex,4,2));
		}
		$rgb = array('r' => $r, 'g' => $g, 'b' => $b);
		return $rgb; // returns an array with the rgb values
	}

	public function getContrastYIQ($hexcolor){
		$r = hexdec(substr($hexcolor,0,2));
		$g = hexdec(substr($hexcolor,2,2));
		$b = hexdec(substr($hexcolor,4,2));
		$yiq = (($r*299)+($g*587)+($b*114))/1000;
		return ($yiq >= 128) ? 'dark' : 'light';
	}
	
	public function get_label_settings($label_id, $store_id) {
		if (isset($label_id) && isset($store_id)) {
			$label_id = (int)$label_id;
			$store_id = (int)$store_id;
			
			$db_settings = $this->getSetting('labelmaker');
			
			if (!empty($db_settings['LabelMaker'][$store_id]['Labels'][$label_id])) {
				return $db_settings['LabelMaker'][$store_id]['Labels'][$label_id];
			} else {
				return false;
			}
		} else {
			return false;	
		}
	}

	public function clear_product_id_cache($product_id) {
		$product_id = (int)$product_id;
		if (empty($product_id)) return;

		clearstatcache();

		$this->cache->delete('labelmaker');
		array_map(array($this, 'clearSpecificImageCache'), $this->getAllProductImages($product_id));

		if (file_exists(DIR_SYSTEM . 'nitro/config.php')) {
		    $this->load->model('tool/nitro');

		    if (function_exists('getNitroPersistence') && getNitroPersistence('PageCache.ClearCacheOnProductEdit')) {
		    	$this->model_tool_nitro->clearProductCache($product_id);
			} else if (function_exists('truncateNitroProductCache') && function_exists('getQuickCacheRefreshFilename')) {
				truncateNitroProductCache();
				$nitro_filename = getQuickCacheRefreshFilename();
				touch($nitro_filename);
			}
		}
	}

	public function clearSpecificImageCache($image) {
		$image_dir = DIR_IMAGE . 'cache/' . pathinfo($image, PATHINFO_DIRNAME) . '/';
		$image_basename = pathinfo($image, PATHINFO_FILENAME);

		if (!is_readable($image_dir) || !is_dir($image_dir)) return;

		$dh = opendir($image_dir);

		while (FALSE !== ($entry = readdir($dh))) {
			if (in_array($entry, array('.', '..'))) continue;

			$check_file = $image_dir . $entry;

			if (stripos($check_file, $image_dir . $image_basename) !== FALSE && is_writable($check_file)) {
				@unlink($check_file);
			}
		}

		closedir($dh);
	}

	public function getAllProductImages($product_id) {
		$rows = $this->db->query("SELECT DISTINCT image FROM " . DB_PREFIX . "product WHERE product_id = '" . (int)$product_id . "' UNION SELECT image FROM " . DB_PREFIX . "product_image WHERE product_id='" . (int)$product_id . "'")->rows;

		$result = array();

		foreach ($rows as $r) {
			$result[] = $r['image'];
		}

		return $result;
	}

	// Clear Cache Per Product
	// public function clear_product_image_cache($product_id = 0) {
	// 	$this->cache->delete('labelmaker');

	// 	if (!empty($product_id)) {
	// 		$product_id = (int)$product_id;
	// 		$query  = '(SELECT image FROM ' . DB_PREFIX . 'product p LEFT JOIN ' . DB_PREFIX . 'product_to_category p2c ON (p.product_id = p2c.product_id) WHERE p.product_id = "' . $product_id . '")';
	// 		$query .= 'UNION (SELECT image FROM ' . DB_PREFIX . 'product_image p LEFT JOIN ' . DB_PREFIX . 'product_to_category p2c ON (p.product_id = p2c.product_id) WHERE p.product_id="' . $product_id . '")';

	// 		$images = $this->db->query($query);

	// 		foreach ($images->rows as $result) {
	// 			$image = $result['image'];
	// 			$parts = array_filter(explode('/', $image));
	// 			if (!empty($parts)) {
	// 				$current = DIR_IMAGE . 'cache/';
	// 				while (count($parts) > 1) {
	// 					$folder = array_shift($parts);
	// 					$current .= $folder . '/';
	// 				}
	// 				if (is_dir($current)) {
	// 					$files = scandir($current);
	// 					$current_image = pathinfo(strtolower(array_pop($parts)), PATHINFO_FILENAME);
	// 					foreach ($files as $file) {
	// 						$file = strtolower($file);
	// 						if (in_array($file, array('.', '..'))) continue;
	// 						if (stripos($file, $current_image) !== FALSE && file_exists($current . $file)) {
	// 							@unlink($current . $file);
	// 						}
	// 					}
	// 				}
	// 			}
	// 		}
	// 	}
	// }
}
?>