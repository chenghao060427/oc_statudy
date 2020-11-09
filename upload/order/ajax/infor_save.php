<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/8/19
 * Time: 15:02
 */
$res = array(
    'status'=>'fail',
    'data'=>'',
    'message'=>''
);
$title_arr = array(
    'order_id',
    'email',
    'addr',
    'num1',
    'num2',
    'product_img',
    'product_size',
    'product_get_price',
    'product_name',
    'product_addr',
    'remark'
);
$con = mysqli_connect('127.0.0.1','lin_yuyanxt_com','kjTGHNadXL2NhAyx','lin_yuyanxt_com');

mysqli_query($con,"SET CHARACTER SET utf8");

if (!$con)
{
    $res['message']="连接错误: " . mysqli_connect_error();
    echo json_encode($res);die;
}
$data = array();
$log_arr = array();
foreach($_POST['content'] as $k=>$v){
    $ii = array();
    $updata_infor='';
    foreach($v as $key=>$i){
        $ii[]='"'.str_replace('"','\"',htmlspecialchars($i)).'"';
        $updata_infor .= $title_arr[$key].'="'.str_replace('"','\"',htmlspecialchars($i)).'",';
    }
    
    if($_POST['id'][$k]>0){
//        echo 'UPDATE order_infor_log SET '.substr($updata_infor,0,-1).' WHERE id='.$_POST['id'][$k];die;
        mysqli_query($con,'UPDATE order_infor_log SET '.substr($updata_infor,0,-1).' WHERE id='.$_POST['id'][$k]);
        
        $log_arr[]=$_POST['id'][$k];
    }else{
        $data='('.implode(',',$ii).')';
        mysqli_query($con,"INSERT INTO order_infor_log (".implode(',',$title_arr).") VALUES $data");
        $log_arr[] = mysqli_insert_id($con);
    }
    
}
//var_dump($data);die;
//mysqli_autocommit($con,FALSE);
//echo "INSERT INTO order_infor_log (".implode(',',$title_arr).") VALUES ".implode(',',$data);die;

// 提交事务

//mysqli_commit($con);
//var_dump($log_id);
// 关闭连接
mysqli_close($con);

$res['status']='success';
$res['data']=$log_arr;

echo json_encode($res);die;

