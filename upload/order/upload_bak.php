<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

    <title>Hello, world!</title>
  </head>
  <body>
    <table class="table table-bordered">
	  <thead>
		<tr id="thead">
            <th scope="col" contenteditable="true">订单号</th>
            <th scope="col" contenteditable="true">邮箱</th>
            <th scope="col" contenteditable="true">联系地址</th>
            <th scope="col" contenteditable="true">num1</th>
            <th scope="col" contenteditable="true">num2</th>
            <th scope="col" contenteditable="true">物品</th>
            <th scope="col" contenteditable="true">码数</th>
            <th scope="col" contenteditable="true">拿货价格</th>
            <th scope="col" contenteditable="true">产品名</th>
            <th scope="col" contenteditable="true">拿货地址</th>
            <th scope="col" contenteditable="true">备注</th>
            <th scope="col" contenteditable="true">操作</th>
		</tr>
	  </thead>
	  <tbody>
		<tr id="tr1">
		</tr>
	  <tr id="tr2"></tr>
	  </tbody>
	</table>
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-12 ">
				<div style="float:right;" class="form-inline">
					<div class="form-group">
						<select name="type" class="form-control">
							<option value="1">文字信息</option>
							<option value="2">图片信息</option>
						</select>
					</div>
					<div class="form-group">
						<button class="btn btn-success" type="button" id="col_add">添加列</button>
					</div>
					<div class="form-group">
						<button class="btn btn-primary" type="button" id="infor_upload">上传</button>
					</div>
				</div>
			</div>
		</div>
	</div>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!--    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>-->
<!--    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.0/jquery.min.js"></script>-->
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>

<!--	<style type="text/css" href="webuploader/webuploader.css"></style>-->
<!--	<script type="text/javascript" src="http://cdn.staticfile.org/webuploader/0.1.0/webuploader.js"></script>-->

  	<script type="text/javascript">
		$(function(){
		    var image_count = 0;
		    var uploader_arr = new Array();
			$('#col_add').click(function(){
			    var t_id = $('select[name=type]').val();
			    $('#thead').append('<th scope="col" contenteditable="true"></th>');
			    if(t_id=='1'){
                    $('#tr1').append('<td scope="col" contenteditable="true"></td>');
                    $('#tr2').append('<td scope="col"><button class="btn btn-warning delete-col">删除本列</button></td>');

                }else{
			        //上传初始化
                    $('#tr1').append('<td scope="col image-content" id="image_show'+image_count+'"></td>');

                    $('#tr2').append('<td scope="col"><input type="file" id="picker'+image_count+'" data-count="'+image_count+'" class="col-sm-6 upload-image" /><button class="btn btn-warning delete-col">删除本列</button></td>');
                    image_count++;
                }
			});
			$('#tr2').on('click','.delete-col',function(){
			    var i = $(this).parent().index();
			    $('#thead').children().eq(i).remove();
                $('#tr1').children().eq(i).remove();
                $('#tr2').children().eq(i).remove();
			});
			
            $('#tr2').on('change','.upload-image',function(){
                var file = $(this).get(0).files[0]; //得到文件信息
                var num = $(this).data('count');
                
                if(file != null) {
                    var fileid="file"+num;
            
                    var form = new FormData();
                    form.append("file",file);

                    // form.append("tmpname",file);
                    //使用ajax 提交数据
                    $.ajax({
                        url: 'ajax/image_save.php',
                        type: "POST",
                        data: form,
                        cache: false,
                        processData: false,
                        contentType: false,
                        dataType:'JSON',
                        success: function(data) {
                            if(data.status=='success'){
                                
                                $('#image_show'+num).html('<img src="'+data.url+'" class="figure-img img-fluid rounded" >');

                            }else{
                                $('#'+fileid).find('.state').html(data.message);

                            }
                            
                        },
                        error: function(e) {
                            $('#image_show'+num).find('.state').html('上传失败');
                        }
                    });
                }
            });
            // $('#tr2').on('click','.upload-image',function(){
            //     var c = $(this).data('count');
            //     alert(c)
            // });
			$('#infor_upload').click(function(){
			    var title_arr = new Array();
			    $('#thead').find('th').each(function(i,e){
                    title_arr[i]= $(this).html();
                });
                var content_arr = new Array();
                $('#tr1').find('td').each(function(i,e){
                   // if($(this).hasClass('image-content')){
                   //     if($(this).find('img')){
                   //         content_arr[i]=$(this).find('img').attr('src');
                   //     }
                    // }else{
                       content_arr[i]=$(this).html();
                   // }
                });
                $.ajax({
                    url:'ajax/infor_save.php',
                    data:{title:title_arr,content:content_arr},
                    type:'POST',
                    dataType:'JSON',
                    success:function(res){
                        if(res.status=='success'){
                            alert('上传成功');
                        }else{
                            alert(res.message);
                        }
                    }
                })
            })
		})
	</script>
  </body>
</html>