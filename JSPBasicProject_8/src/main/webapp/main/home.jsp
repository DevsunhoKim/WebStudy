<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, com.sist.dao.*, com.sist.vo.*"%>
<%--
		지시자 => page : JSP에 대한 정보를 저장
		1. 브라우저에 전송하는 타입
		   ====== html, xml, json
		   contentType="text/html;charset=UTF-8"
		2. 라이브러리 로딩
		   import=" , , " => 단독사용도 가능
		3. errorPage
 --%>
 <%--
 		jsp 액션태그
 			= <jsp:useBean> => 객체 메모리 할당
 			= <jsp:setProperty> => request를 이용해서 전송시에 VO에 값을 설정
 			= <jsp:include> => JSP안에 특정 위치에 다른 JSP를 첨부
 				=> include된 모든 JSP는 request를 공유
 --%>
 <jsp:useBean id="dao" class="com.sist.dao.FoodDAO"/>
 <%--
 		id=객체명 
 		class=클래스명 => 반드시 패키지명부터 지정
 			=> Class.forName(패키지명.클래스명)
 			
 		FoodDAO dao=new FoodDAO(); 
  --%>
 <%--
 		출력할 데이터를 읽어온다
  --%>
<%
	List<FoodCategoryVO> list=dao.food_category_data();
	/*
		요청 === Controller === Model(java) 
					ㅣ
				   View(jsp)
	*/
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="wrapper row3">
  <div id="slider" class="clear"> 
    <div class="flexslider basicslider">
      <ul class="slides">
        <li><a href="#"><img class="radius-10" src="../images/demo/slides/1.jpg" style="width:978px;height:400px"></a></li>
        <li><a href="#"><img class="radius-10" src="../images/demo/slides/2.jpg" style="width:978px;height:400px"></a></li>
        <li><a href="#"><img class="radius-10" src="../images/demo/slides/3.jpg" style="width:978px;height:400px"></a></li>
        <li><a href="#"><img class="radius-10" src="../images/demo/slides/4.jpg" style="width:978px;height:400px"></a></li>
        <li><a href="#"><img class="radius-10" src="../images/demo/slides/5.jpg" style="width:978px;height:400px"></a></li>
      </ul>
    </div>
    </div>
</div>
<div class="wrapper row3">
  <main class="container clear"> 
    <ul class="nospace group btmspace-80">
      <li class="one_third first">
        <article class="service"><i class="icon fa fa-ambulance"></i>
          <h6 class="heading"><a href="#">오늘의 맛집</a></h6>
          <p>Aenean semper elementum tellus, ut placerat leo. Quisque vehicula, urna sit amet.</p>
          <footer><a href="#">Read More &raquo;</a></footer>
        </article>
      </li>
      <li class="one_third">
        <article class="service"><i class="icon fa fa-h-square"></i>
          <h6 class="heading"><a href="#">오늘의 레시피</a></h6>
          <p>Aenean semper elementum tellus, ut placerat leo. Quisque vehicula, urna sit amet.</p>
          <footer><a href="#">Read More &raquo;</a></footer>
        </article>
      </li>
      <li class="one_third">
        <article class="service"><i class="icon fa fa-hospital-o"></i>
          <h6 class="heading"><a href="#">오늘의 여행</a></h6>
          <p>Aenean semper elementum tellus, ut placerat leo. Quisque vehicula, urna sit amet.</p>
          <footer><a href="#">Read More &raquo;</a></footer>
        </article>
      </li>
    </ul>
    <h2 class="sectiontitle">믿고 보는 맛집 리스트</h2>
    <div class="flexslider carousel basiccarousel btmspace-80">
      <ul class="slides">
        <%
        	for(int i=0;i<12;i++){
        		FoodCategoryVO vo=list.get(i);
        %>
        <li>
          <figure><img class="radius-10 btmspace-10" src="<%=vo.getPoster() %>" alt="">
            <figcaption><a href="#"><%=vo.getTitle() %></a></figcaption>
          </figure>
        </li>
        <%
        	}
        %>
      </ul>
    </div>
    <h2 class="sectiontitle">지역별 인기 맛집</h2>
    <div class="flexslider carousel basiccarousel btmspace-80">
      <ul class="slides">
        <%
        	for(int i=12;i<18;i++){
        		FoodCategoryVO vo=list.get(i);
        %>
        <li>
          <figure><img class="radius-10 btmspace-10" src="<%=vo.getPoster() %>" alt="">
            <figcaption><a href="#"><%=vo.getTitle() %></a></figcaption>
          </figure>
        </li>
        <%
        	}
        %>
      </ul>
    </div>
    <h2 class="sectiontitle">메뉴별 인기 맛집</h2>
    <div class="flexslider carousel basiccarousel btmspace-80">
      <ul class="slides">
        <%
        	for(int i=18;i<30;i++){
        		FoodCategoryVO vo=list.get(i);
        %>
        <li>
          <figure><img class="radius-10 btmspace-10" src="<%=vo.getPoster() %>" alt="">
            <figcaption><a href="#"><%=vo.getTitle() %></a></figcaption>
          </figure>
        </li>
        <%
        	}
        %>
      </ul>
    </div>
    <h2 class="sectiontitle">최신 방문 맛집</h2>
    <ul class="nospace group">
      <!-- <li class="one_half first">
        <article><img class="imgl radius-10" src="../images/demo/100x100.gif" alt="">
          <h6 class="heading"><a href="#">Lorem Ipsum Dolor</a></h6>
          <p>Aenean semper elementum tellus, ut placerat leo. Quisque vehicula, urna sit amet.</p>
        </article>
      </li>
      <li class="one_half">
        <article><img class="imgl radius-10" src="../images/demo/100x100.gif" alt="">
          <h6 class="heading"><a href="#">Lorem Ipsum Dolor</a></h6>
          <p>Aenean semper elementum tellus, ut placerat leo. Quisque vehicula, urna sit amet.</p>
        </article>
      </li> -->
    </ul>
    <div class="clear"></div>
  </main>
</div>
</body>
</html>