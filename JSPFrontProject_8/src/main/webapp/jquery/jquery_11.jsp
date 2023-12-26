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
</style>
<script type="text/javascript" src="https://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
$(function(){
  $('#account').change(function(){
    let count = $(this).val();
    let price = $('#price').attr("data-price");
    let total = count * price;
    $('#total').text(total.toLocaleString() + "원"); // Added toLocaleString to format total as currency
  });
});
</script>
</head>
<body>
  <div class="container">
    <div class="row">
      <label for="account">수량:</label>
      <select id="account" class="input-sm">
        <option>1</option>
        <option>2</option>
        <option>3</option>
        <option>4</option>
        <option>5</option>
      </select>
      <span data-price="10000" id="price">10,000원</span>
      <p>
        총액: <span id="total"></span>
      </p>
    </div>
  </div>
</body>
</html>
