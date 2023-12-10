<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.sist.model.*"%>
<jsp:useBean id="model" class="com.sist.model.FoodModel"/>
<% 
	model.foodDetailData(request);
	// FoodVO vo=request.getAttribute("vo");
	// <%= vo.getPoster() ${vo.poster} => getPoster()
%>

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
	width: 960px;
}
</style>
</head>
<body>
  <div class="container">
    <div class="col-sm-7">
      <table class="table">
        <tr>
          <td width=30% class="text-center" rowspan="9">
          	<img src="https://www.menupan.com${vo.poster}" style="width:100%">
          </td>
          <td colspan="2">
            <h3>${vo.name }&nbsp;<span style="color:orange">${vo.score}</span></h3>
          </td>
        </tr>
        <tr>
          <td width=15%>주소</td>
          <td width=55%>${vo.address}</td>
        </tr>
        <tr>
          <td width=15%>전화번호</td>
          <td width=55%>${vo.phone }</td>
        </tr>
        <tr>
          <td width=15%>음식종류</td>
          <td width=55%>${vo.type }</td>
        </tr>
        <tr>
          <td width=15%>가격대</td>
          <td width=55%>${vo.price }</td>
        </tr>
        <tr>
          <td width=15%>좌석</td>
          <td width=55%>${vo.seat }</td>
        </tr>
        <tr>
          <td width=15%>영업시간</td>
          <td width=55%>${vo.time }</td>
        </tr>
        <tr>
          <td width=15%>테마</td>
          <td width=55%>${vo.theme }</td>
        </tr>
        <tr>
          <td width=15%>소개</td>
          <td width=55%>${vo.content }</td>
        </tr>
        <tr>
          <td colspan="2" class="text-right">
          <a href="find.jsp?fd=${fd}&ss=${ss}" class="btn btn-sm btn-danger">목록</a>
        </tr>
      </table>
    </div>
    <div class="col-sm-5">
		<p style="margin-top:-12px">
		    <em class="link">
		        <a href="javascript:void(0);" onclick="window.open('http://fiy.daum.net/fiy/map/CsGeneral.daum', '_blank', 'width=981, height=650')">
		            혹시 주소 결과가 잘못 나오는 경우에는 여기에 제보해주세요.
		        </a>
		    </em>
		</p>
		<div id="map" style="width:100%;height:350px;"></div>
		
		<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=	a8b770a89aec1599120a66eb6392863b&libraries=services"></script>
		<script>
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		    mapOption = {
		        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
		        level: 3 // 지도의 확대 레벨
		    };  
		
		// 지도를 생성합니다    
		var map = new kakao.maps.Map(mapContainer, mapOption); 
		
		// 주소-좌표 변환 객체를 생성합니다
		var geocoder = new kakao.maps.services.Geocoder();
		
		// 주소로 좌표를 검색합니다
		geocoder.addressSearch('${vo.address}', function(result, status) {
		
		    // 정상적으로 검색이 완료됐으면 
		     if (status === kakao.maps.services.Status.OK) {
		
		        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
		
		        // 결과값으로 받은 위치를 마커로 표시합니다
		        var marker = new kakao.maps.Marker({
		            map: map,
		            position: coords
		        });
		
		        // 인포윈도우로 장소에 대한 설명을 표시합니다
		        var infowindow = new kakao.maps.InfoWindow({
		            content: '<div style="width:150px;text-align:center;padding:6px 0;">${vo.name}</div>'
		        });
		        infowindow.open(map, marker);
		
		        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
		        map.setCenter(coords);
		    } 
		});    
		</script>
    </div>
  </div>
</body>
</html>