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
  
  
  width: 350px;
  margin: 0px auto;
}
h1{
 text-align: center;
}
/*
    전체 범위 지정 
    container : 여백 => 960px
    container-fluid :  여백없이 전체 (풀화면)
    row => 분리 
    
    -----------------------container
      ------------------row
        header
      ------------------row
        section
      ------------------row
        footer
      -----------------
    -----------------------
    
    col-(lg|sm|md|xs)-숫자
    => col-sm-5
              == 12등분(12를 초과하면 아래로 내려간다)
    
*/
.col-sm-8{
  background: yellow;
  height: 300px;
}
.col-sm-4{
  background: green;
  border:2px solid red;
  height: 300px;
}
</style>
<script type="text/javascript">
function login()
{
  	// 1. id 읽기 (입력한)
  	// 객체 모델 => 10장 (태그를 객체로 인식 , 속성 : 멤버변수로 인식)
  	let id=document.querySelector("#id"); // 태그 읽기
  	// $('#id') => target.value => $ref
  	
  	if(id.value==="")
  	{
  	  // 아이디 입력이 안된경우
  	  let div=document.querySelector(".id")
  	  div.innerHTML="<font color=red>아이디를 입력하세요</font>"
  	  id.focus();
  	  return;
  	}
  	else
  	{
  		//입력이 된경우
  		let div=document.querySelector(".id")
    	  div.innerHTML="";
  	}
  	
  	let pwd=document.querySelector("#pwd"); // 태그 읽기
  	// $('#pwd') => target.value => $ref
  	
  	if(pwd.value==="")
  	{
  	  // 아이디 입력이 안된경우
  	  let div=document.querySelector(".pwd")
  	  div.innerHTML="<font color=red>비밀번호를 입력하세요</font>"
  	  pwd.focus();
  	  return;
  	}
  	else
  	{
  		//입력이 된경우
  		let div=document.querySelector(".pwd")
    	  div.innerHTML="";
  	}
  	
  	
}
</script>
</head>
<body>
	<div class="container">
	 <h1>Login</h1>
	  <table class="table">
	   <tr>
	    <th width="20%" class="text-center">ID</th>
	    <td width="80%">
	    <input type="text" id="id" size=15 class="input-sm">
	    <div class="id"></div>
	    </td>
	    </tr>
	    <tr>
	    <th width="20%" class="text-center">PW</th>
	    <td width="80%">
	    <input type="password" id="pwd" size=15 class="input-sm">
	    <div class="pwd"></div>
	    </td>
	    </tr>
	    <tr>
	      <td colspan="2" class="text-center">
	      <input type="button" value="로그인" 
	      class="btn btn-sn btn-primary" onclick="login()">
	    </tr>
	  </table>
	</div>
</body>
</html>