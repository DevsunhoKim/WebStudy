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
  margin-top: 50px
}
.row{
  margin:0px auto;
  width: 450px
}
</style>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
let fileIndex=0; // 전역변수 
$(function() {
	$('#addBtn').click(function(){
		$('#user-table').append(
		  '<tr id="m'+fileIndex+'">'
		  +'<td>File '+(fileIndex+1)+'</td>'
		  +'<td><input type=file size=20></td>'
		  +'</tr>'
		)
		fileIndex++;
	});
	$('#removeBtn').click(function(){
		if(fileIndex>0)
		{
		   $('#m'+(fileIndex-1)).remove();
		   fileIndex--;
		}
	})
})
</script>
</head>
<body>
  <div class="container">
   <div class="row">
     <table class="table">
      <tr>
       <td>
        <input type="button" class="btn btn-sm btn-danger"
          value="Add" id="addBtn">
        <input type="button" class="btn btn-sm btn-info"
          value="Remove" id="removeBtn">
       </td>
      </tr>
     </table>
     <table class="table" id="user-table">
     
     </table>
   </div>
  </div>
</body>
</html>