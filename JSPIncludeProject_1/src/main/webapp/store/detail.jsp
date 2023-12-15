<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../store/style.css">
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
var IMP = window.IMP; // 생략 가능
IMP.init("imp41460687"); // 예: imp00000000
function requestPay() {
   console.log('clicked');
  // IMP.request_pay(param, callback) 결제창 호출
   IMP.request_pay({
       pg : 'kakaopay', // version 1.1.0부터 지원.
       
           /*
               'kakao':카카오페이,
               'inicis':이니시스, 'html5_inicis':이니시스(웹표준결제),
               'nice':나이스,
               'jtnet':jtnet,
               'uplus':LG유플러스
           */
       pay_method : 'card', // 'card' : 신용카드 | 'trans' : 실시간계좌이체 | 'vbank' : 가상계좌 | 'phone' : 휴대폰소액결제
       merchant_uid : 'merchant_' + new Date().getTime(),
       name : $('#title').text(),//$('#title').text(),
       amount : $('#price').attr("data-price"),//$('#price').attr('data-price'),
       buyer_email : 'iamport@siot.do',
       buyer_name : '구매자이름',
       buyer_tel : '010-1234-5678',
       buyer_addr : '서울특별시 강남구 삼성동',
       buyer_postcode : '123-456',
       app_scheme : 'iamporttest' //in app browser결제에서만 사용 
   }, function(rsp) {
       if ( rsp.success ) {
           var msg = '결제가 완료되었습니다.';
           msg += '고유ID : ' + rsp.imp_uid;
           msg += '상점 거래ID : ' + rsp.merchant_uid;
           msg += '결제 금액 : ' + rsp.paid_amount;
           msg += '카드 승인번호 : ' + rsp.apply_num;
       } else {
           var msg = '결제에 실패하였습니다.';
           msg += '에러내용 : ' + rsp.error_msg;
       }
   });
}
</script>
</head>
<body>
	<div class="row">
		  <table class="table">
			  <tr>
				  <td width="35%" align="center" rowspan="9">
					  <img src="${vo.goods_poster }" id="image">
				  </td>
				  <td width="65%" align="center">
					  <span id="title">
					   ${vo.goods_name }
					  </span>
				  </td>
			  </tr>
			  <tr>				  <td width="65%">
					  <span id="sub">${vo.goods_sub }</span>
				  </td>
			  </tr>
			  <tr>
				  <td width="65%">
					  <span id="percent">${vo.goods_discount }%</span>&nbsp;
					  <span id="price" data-price="${vo.price }]">${vo.goods_price }</span>
					  <p>
						  <del id="psub">17,900원</del>
					  </p>
				  </td>
			  </tr>
			  <tr>
				  <td width="65%">
					  <span id="label">첫구매할인가</span>
					  <span id="price2">${vo.goods_first_price }</span>
				  </td>
			  </tr>
			  <tr>
				  <td width="65%">
					  <span id="star">★★★★★</span>&nbsp;
					  <span id="bold">4.5</span>
					  <span id="count">(299)</span>
				  </td>
			  </tr>
			  <tr>
				  <td width="65%">
					  <img src="https://recipe1.ezmember.co.kr/img/mobile/icon_delivery3.png">
					  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					  <span id="delevery">${vo.goods_delivery }</span>
				  </td>
			  </tr>			  <tr>				  <td width="65%">
					  <select id="sel">
						  <option>옵션 선택</option>
					  </select>
				  </td>
			  </tr>
			  <tr>
				  <td width="65%">
					  <input type="button" value="장바구니" id="cart">
					  <input type="button" value="바로구매" id="buy" onclick="requestPay()">
					  <a href="../store/all.do" id="cart">목록</a>
					  
				  </td>
			  </tr>
		  </table>
	  </div>
</body>
</html>