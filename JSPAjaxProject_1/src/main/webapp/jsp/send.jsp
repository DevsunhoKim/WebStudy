<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="../js/ajax.js"></script>
<script type="text/javascript" src="http://code.query.com/jquery.js"></script>
<script type="text/javascript">
$(function() {
	$('#sendBtn').click(function(){
		sendRequest('recv.jsp',null,recvCallback,'POST')
	})
})
function recvCallback()
{
  //            success
  if(httpRequest.readyState==4)
  {
	 /*
	  0 => 준비단계
	  1 => open한 파일에 연결중
	  2 => 파일 연결 완료
	  3 => 요청데이터를 전송하는 중 
	  4 => 요청데이터 전송 완료
	 */
	 if(httpRequest.status==200)
	 {
		 /*
		   전송 상태
		   404 => 파일이 없는 경우
		   500 => 자바소스의 오류
		   403 => 접근 거부
		   200 => 정상 수행
		 */
		 $('#recv').html(httpRequest.responseText)
		 /*
		   responseText => 일반 문자열 / HTML
		   responseXML => xml , json
		 */
	
	 }
  }
}
</script>
</head>
<body>
	<input type="button" value="전송" id="sendBtn">
	<div id="recv">
	
	</div>
</body>
</html>