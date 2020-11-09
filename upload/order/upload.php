<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <style type="text/css">
        th,tr{
            font-size: 10px;
        }
        .table td, .table th {
            panding-top: 0.75rem;
            panding-bottom: 0.75rem;
            padding-right: .15rem;
            padding-left: .15rem;

            vertical-align: top;
            border-top: 1px solid #dee2e6;
        }
    </style>
    <title>Hello, world!</title>
  </head>
  <body>
    <table class="table table-bordered">
	  <thead>
		<tr id="thead">
<!--            <th scope="col" contenteditable="true">订单号</th>-->
            <th scope="col" contenteditable="true">邮箱</th>
            <th scope="col" contenteditable="true" style="width: 15%;">联系地址</th>
            <th scope="col" contenteditable="true">num 1</th>
            <th scope="col" contenteditable="true">num 2</th>
            <th scope="col" contenteditable="true" style="width: 15%;">物品</th>
            <th scope="col" contenteditable="true" style="width: 10%;">码数</th>
            <th scope="col" contenteditable="true">拿货价格</th>
<!--            <th scope="col" contenteditable="true">产品名</th>-->
<!--            <th scope="col" contenteditable="true">拿货地址</th>-->
<!--            <th scope="col" contenteditable="true">备注</th>-->
            <th scope="col" contenteditable="true"></th>
		</tr>
	  </thead>
	  <tbody id="tbody">

	  </tbody>
	</table>
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-12 ">
				<div style="float:right;" class="form-inline">
					
					<div class="form-group">
						<button class="btn btn-success" type="button" id="col_add">添加订单信息</button>
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
    <script src="js/jquery.min.js"></script>
<!--    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>-->
<!--    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.0/jquery.min.js"></script>-->
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>


  	<script type="text/javascript">
		$(function(){
		    var image_count = 0;

			$('#col_add').click(function(){
                var tr =$('<tr></tr>') ;
			    for(var i =0;i<4;i++){
                    tr.append('<td scope="col" contenteditable="true"></td>');
                }
                
                //上传初始化
                tr.append('<td scope="col" class="image_content" id="image_show'+image_count+'"></td>');
                for(var i =0;i<2;i++){
                    tr.append('<td scope="col" contenteditable="true"></td>');
                }
                tr.append('<td scope="col" class="action"><input type="file" id="picker'+image_count+'" data-count="'+image_count+'" class="col-sm-6 upload-image"  style="display: none' + '"/><button class="btn btn-warning delete-col">X</button></td>');
                $('#tbody').append(tr);
                image_count++;
              
			});
			$('#tbody').on('click','.delete-col',function(){
			    $(this).parents('tr').remove();
			});
			
			$('#tbody').on('click','.image_content',function(){
			
			    $(this).siblings('.action').find('.upload-image').trigger('click');
            });
			
            $('#tbody').on('change','.upload-image',function(){
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
                                
                                $('#image_show'+num).html('<img src="'+data.url+'" class="figure-img img-fluid rounded" style="width: 100%' + ';" >');

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
			    
                var content_arr = new Array();
                var id_arr =new Array();
                $('#tbody').find('tr').each(function(i,e){
                    id_arr.push( Number($(this).data('id')));
                    
                    var content = new Array();
                    $(this).find('td').each(function(index,element){
                        if(!$(this).hasClass('action')) {
                            content[index] = $(this).html();
                        }
                    });
     
                    content_arr.push(content);
                });
                
                $.ajax({
                    url:'ajax/infor_save.php',
                    data:{content:content_arr,id:id_arr},
                    type:'POST',
                    dataType:'JSON',
                    success:function(res){
                        if(res.status=='success'){
                            $('#tbody').find('tr').each(function(i,e){
                                
                                $(this).data('id',res.data[i])
                            });
                            
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