<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/6/11
 * Time: 13:36
 */
class ControllerExtensionModuleRevolutionSlider extends Controller {
    private $error = array();
    public function index(){
        //加载语言
        $this->load->language('extension/module/revolution_slider');
        
        $this->document->setTitle($this->language->get('heading_title'));
        //获取数据、验证并保存
        if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
            if (!isset($this->request->get['module_id'])) {
                $this->model_setting_module->addModule('revolution_slider', $this->request->post);
            } else {
                $this->model_setting_module->editModule($this->request->get['module_id'], $this->request->post);
            }
        
            $this->session->data['success'] = $this->language->get('text_success');
        
            $this->response->redirect($this->url->link('marketplace/extension', 'user_token=' . $this->session->data['user_token'] . '&type=module', true));
        }
        //错误信息提示
        
        if (isset($this->error['warning'])) {
            $data['error_warning'] = $this->error['warning'];
        } else {
            $data['error_warning'] = '';
        }
    
        if (isset($this->error['name'])) {
            $data['error_name'] = $this->error['name'];
        } else {
            $data['error_name'] = '';
        }
    
        if (isset($this->error['width'])) {
            $data['error_width'] = $this->error['width'];
        } else {
            $data['error_width'] = '';
        }
    
        if (isset($this->error['height'])) {
            $data['error_height'] = $this->error['height'];
        } else {
            $data['error_height'] = '';
        }
        //面包屑
        $data['breadcrumbs'] = array();
    
        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_home'),
            'href' => $this->url->link('common/dashboard', 'user_token=' . $this->session->data['user_token'], true)
        );
    
        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_extension'),
            'href' => $this->url->link('marketplace/extension', 'user_token=' . $this->session->data['user_token'] . '&type=module', true)
        );
        //添加或编辑信息
        if (!isset($this->request->get['module_id'])) {
            $data['breadcrumbs'][] = array(
                'text' => $this->language->get('heading_title'),
                'href' => $this->url->link('extension/module/revolution_slider', 'user_token=' . $this->session->data['user_token'], true)
            );
        } else {
            $data['breadcrumbs'][] = array(
                'text' => $this->language->get('heading_title'),
                'href' => $this->url->link('extension/module/revolution_slider', 'user_token=' . $this->session->data['user_token'] . '&module_id=' . $this->request->get['module_id'], true)
            );
        }
        //设置保存链接
        if (!isset($this->request->get['module_id'])) {
            $data['action'] = $this->url->link('extension/module/revolution_slider', 'user_token=' . $this->session->data['user_token'], true);
        } else {
            $data['action'] = $this->url->link('extension/module/revolution_slider', 'user_token=' . $this->session->data['user_token'] . '&module_id=' . $this->request->get['module_id'], true);
        }
        //取消编辑链接
        $data['cancel'] = $this->url->link('marketplace/extension', 'user_token=' . $this->session->data['user_token'] . '&type=module', true);
        
        //获取信息
        if (isset($this->request->get['module_id']) && ($this->request->server['REQUEST_METHOD'] != 'POST')) {
            $module_info = $this->model_setting_module->getModule($this->request->get['module_id']);
        }
    
        if (isset($this->request->post['name'])) {
            $data['name'] = $this->request->post['name'];
        } elseif (!empty($module_info)) {
            $data['name'] = $module_info['name'];
        } else {
            $data['name'] = '';
        }
    
        //头部、侧边栏、页脚信息
        $data['header'] = $this->load->controller('common/header');
        $data['column_left'] = $this->load->controller('common/column_left');
        $data['footer'] = $this->load->controller('common/footer');
        
        //设置显示页面
        $this->response->setOutput($this->load->view('extension/module/revolution_slider', $data));
    }
    //检查提交参数
    protected function validate(){
        //权限检查
        if (!$this->user->hasPermission('modify', 'extension/module/revolution_slider')) {
            $this->error['warning'] = $this->language->get('error_permission');
        }
    }
}