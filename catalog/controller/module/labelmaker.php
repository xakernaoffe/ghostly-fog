<?php  
class ControllerModuleLabelMaker extends Controller {
        private $data = array();
    private $error = array();
    private $version;
    private $module_path;
    private $moduleModel;
    private $moduleName;
    private $call_model;
    
    public function __construct($registry){
        parent::__construct($registry);
        $this->load->config('isenselabs/labelmaker');
        $this->moduleName = $this->config->get('labelmaker_name');
        $this->call_model = $this->config->get('labelmaker_model');
        $this->module_path = $this->config->get('labelmaker_path');
        $this->version = $this->config->get('labelmaker_version');
            
        $this->load->model($this->module_path);
        $this->moduleModel = $this->{$this->call_model};
       
        $this->moduleModel->iconstruct();

        //Loading framework models
        $this->load->model('setting/store');
        $this->load->model('setting/setting');

        $this->data['module_path']     = $this->module_path;
        $this->data['moduleName']      = $this->moduleName;
        $this->data['moduleNameSmall'] = $this->moduleName;     
    }
	public function index() {
		/* Silence */
	}

   

	public function clear_product_id_cache($product_id) {     
        $this->moduleModel->clear_product_id_cache($product_id);
    }

    public function clear_order_id_cache($order_id) {  
        foreach ($this->model_module_labelmaker->getOrderProductIds($order_id) as $product_id) {
            $this->clear_product_id_cache($product_id);
        }
    }

    public function clear_order_add_delete_cache($route, $order_id, $args) {
        $this->clear_order_id_cache($order_id);
    }

    public function clear_order_edit_cache($route, $output, $order_id, $args) {
        $this->clear_order_id_cache($order_id);
    }

    
}
?>