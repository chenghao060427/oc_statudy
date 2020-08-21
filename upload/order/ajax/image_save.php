<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/8/19
 * Time: 8:52
 */
$res = array(
    'status'=>'fail',
    'url'=>'',
    'message'=>''
);
function uplode($file,$destination_folder='../uploadFile/',$i=''){
    $uptypes=array('image/jpg','image/jpeg','image/png','image/pjpeg','image/gif','image/bmp','image/x-png');
    $max_file_size=1024*1024*5;
    if(!is_dir($destination_folder)){
        mkdir($destination_folder,0777,true);
    }
    
    if($i === ''){
        $tmp_name = $file['tmp_name'];
        $size = $file["size"];
        $type = $file["type"];
        $name = $file['name'];
    }else{
        $tmp_name = $file['tmp_name'][$i];
        $size = $file["size"][$i];
        $type = $file["type"][$i];
        $name = $file['name'][$i];
    }
    if (!is_uploaded_file($tmp_name))
    {
        return 1;
        return false;
    }
    
    if($max_file_size < $size)
    {
        return 2;
        return false;
    }
    
    if(!in_array($type, $uptypes))
    {
        return 3;
        return false;
    }
    $new_name = explode('.',$name);
    $destination = mktime().".".rand(0,999).'.'.$new_name['1'];
    if(!move_uploaded_file ($tmp_name, $destination_folder.$destination))
    {
        return 4;
    }
    return $destination_folder.$destination;
}
//    var_dump($_FILES);die;
if($_FILES['file']['tmp_name']){
    $imageurl = uplode($_FILES['file'],'../upload/');
    if($imageurl == 1){
        $res['message']="不是上传文件类型";
    }elseif($imageurl == 2){
        $res['message'] = "上传文件超过最大限度";
    }elseif($imageurl == 3){
        $res['message'] = "文件类型错误";
    }elseif($imageurl == 4){
        $res['message'] = "上传失败";
    }else{
        $res['type']='image';
        $res['url'] = substr($imageurl,1);
        $res['status'] = 'success';
    }
}
ob_clean();
echo json_encode($res);
