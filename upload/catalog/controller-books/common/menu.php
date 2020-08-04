<?php
class ControllerCommonMenu extends Controller {
	public function index() {
		$this->load->language('common/menu');

		// Menu
		$this->load->model('catalog/category');
		
		
        if ($this->request->server['HTTPS']) {
            $server = $this->config->get('config_ssl');
        } else {
            $server = $this->config->get('config_url');
        }

        //search

        $data['catagories_name']='Categories';
        
        $data['categories'] = $this->model_catalog_category->getCategories(0);
  

        
        return $this->load->view('common/menu', $data);
	}
}
