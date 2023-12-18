<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<style type="text/css">
.container{
   margin-top: 50px;
}
.row{
   margin: 0px auto;
   width:600px;
}
.row1 {
   margin: 0px auto;
   width:600px;
   height: 450px;
   overflow-y:auto
}
</style>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
$(function(){
	$('.btn').click(function(){
		let type=$(this).attr("value");
		//alert(type)
		$.ajax({
			type:'post',
			url:'result.jsp',
			data:{"type":type},
			success:function(result)
			{
				$('#print').html(result)
			}
		})
	});
});
</script>
</head>
<body>
  <div class="container">
   <div class="row">
     <div class="text-center">
      <input type=button value="한식" 
           class="btn btn-sm btn-danger">
      <input type=button value="중식" 
           class="btn btn-sm btn-primary">
      <input type=button value="양식" 
           class="btn btn-sm btn-info">
      <input type=button value="일식" 
           class="btn btn-sm btn-success">
     </div>
   </div>
   <div class="row row1" id="print">
    
   </div>
  </div>
</body>
</html>

