<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>
<body>
    <nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="../main/main.do">부산 여행</a>
            </div>
            <ul class="nav navbar-nav">
                <li class="active"><a href="../main/main.do">Home</a></li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">맛집
                        <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="../food/list.do">맛집 목록</a></li>
                        <li><a href="../food/find.do">맛집 검색</a></li>
                        <li><a href="#">맛집 예약</a></li>
                    </ul>
                </li>
                <!-- Remove the duplicate "Home" here -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">여행
                        <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="../seoul/location.do">명소</a></li>
                        <!-- 
                          .do ==> 처리 (SeoulModel=> 메소드)
                         -->
                        <li><a href="../seoul/nature.do">자연&관광</a></li>
                        <li><a href="../seoul/shop.do">쇼핑</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">전시회
                        <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="../ex/list.do">전시회 목록</a></li>
                        <li><a href="#">전시회 예약</a></li>
                        
                    </ul>
                </li>
                <li ><a href="#">스토어</a></li>
            </ul>
        </div>
    </nav>
</body>
</html>
