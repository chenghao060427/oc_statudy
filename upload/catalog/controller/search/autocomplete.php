<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/7/28
 * Time: 10:13
 * 自己开发的自动填充的接口
 */
class ControllerSearchAutocomplete extends Controller{
    public function index(){
        $this->load->model('catalog/product');
        
        $data=array();
        
        if(isset($this->request->get['filter_name'])){
            $filter_data = array(
                'filter_name'         => $this->request->get['filter_name'],
                'filter_tag'          => '',
                'filter_description'  => '',
//                'filter_category_id'  => $this->request->get['filter_category_id'],
                'filter_sub_category' => '',
                'sort'                => '',
                'order'               => '',
                'start'               => 0,
                'limit'               => 10
            );
            $results = $this->model_catalog_product->getProducts($filter_data);
            foreach($results as $result){
                if ($this->customer->isLogged() || !$this->config->get('config_customer_price')) {
                    $price = $this->currency->format($this->tax->calculate($result['price'], $result['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
                } else {
                    $price = false;
                }
                
                $data[]=[
                    'product_id'=> $result['product_id'],
                    'name'=>$result['name'],
                    'dsc'=>'',
                    'href'=>str_replace('&amp;','&',$this->url->link('product/product', 'product_id=' . $result['product_id'] )),
                    'price'=>$price,
                    'thumb'=>''
                ];
            }
        }
    
        $this->response->setOutput(json_encode($data,JSON_UNESCAPED_UNICODE));
    }
}