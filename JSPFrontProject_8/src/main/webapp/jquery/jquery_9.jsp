<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<style type="text/css">
.container {
  margin-top: 50px;
}

.row {
  margin: 0px auto;
  width: 450px;
}

h1 {
  text-align: center;
}

.chatrow {
  width: 450px;
  height: 500px;
  margin: 0px auto;
}

#textArea {
  height: 250px;
  overflow-y: auto;
  border: 1px solid black;
}
</style>
<script type="text/javascript" src="https://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
$(function(){
  $('#sendBtn').on('click', function(){
    sendMessage();
  });

  $('#sendMsg').keydown(function(key){
    if(key.keyCode === 13) {
      sendMessage();
    }
  });

  function sendMessage() {
    let data = $('#sendMsg').val();
    if(data.trim() === "") {
      $('#sendMsg').focus();
      return;
    }

    $('#recvMsg').append(data + "<br>");
    let ch = $('#chatArea').height();
    let m = $('#recvMsg').height() - ch;
    $('#chatArea').scrollTop(m);
    $('#sendMsg').val("");
    $('#sendMsg').focus();
  }
});
</script>
</head>
<body>
  <div class="container">
    <h1>실시간 채팅</h1>
    <div class="row">
      <table class="table">
        <tr>
          <td>
            <div id="chatArea">
              <div id="recvMsg"></div>
            </div>
          </td>
        </tr>
        <tr>
          <td>
            <input type="text" id="sendMsg" size="50" class="input-sm">
            <input type="button" value="전송" id="sendBtn">
          </td>
        </tr>
      </table>
    </div>
  </div>
</body>
</html>
