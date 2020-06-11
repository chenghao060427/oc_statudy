<?php
class ControllerCommonMenu extends Controller {
	public function index() {
		$this->load->language('common/menu');

		// Menu
		$this->load->model('catalog/category');

		$this->load->model('catalog/product');
		
        if ($this->request->server['HTTPS']) {
            $server = $this->config->get('config_ssl');
        } else {
            $server = $this->config->get('config_url');
        }
        //Logo
        if (is_file(DIR_IMAGE . $this->config->get('config_logo'))) {
            $data['logo'] = $server . 'image/' . $this->config->get('config_logo');
        } else {
            $data['logo'] = '';
        }
        //home
        $data['home'] = $this->url->link('common/home');
        $data['name'] = $this->config->get('config_name');
        $data['telephone'] = $this->config->get('config_telephone');
        //search
        $data['search']=$this->load->controller('common/search');
        $data['categories'] = array();

        $data['catagories_name']='Categories';
        
		$categories = $this->model_catalog_category->getCategories(0);
  
		//最多显示6个分类
        if(count($categories)>6){
            $categories = array_slice($categories,0,6);
        }
		
		
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
						'name'  => $child['name'] . ($this->config->get('config_product_count') ? ' (' . $this->model_catalog_product->getTotalProducts($filter_data) . ')' : ''),
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
		
        $data['cart'] = $this->load->controller('common/cart');
        $data['account'] = $this->url->link('account/account', '', true);
        
        return $this->load->view('common/menu', $data);
	}
}
