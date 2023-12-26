<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.container{
  margin-top 50px;
}
.row {
  margin: 0px auto;
  width:450px
}
h1 {
 text-align: center;
}
</style>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
/*
 * 385 page => 이벤트 : 사용자가 행위(키보드 입력,마우스 제어...)
 * 1. click : 모든 태그에 적용
   2. change : <select>
   3. hover , mouseover:mouseout
   4. keyup / keydown
   
   =========== 사용방법
   $('태그선택').click(function(){
	   처리
   })
   
    $('태그선택').on(click,function(){
	   처리
   })
   
    $('태그선택').hover(function(){
	   처리
   })
 */
 const movies=[{"startYearDate":"2023.12.25","endYearDate":"2023.12.25","startDate":"2023년 12월 25일(월)","endDate":"2023년 12월 25일(월)","movieCd":"20203702","showDt":"20231225","thumbUrl":"/common/mast/movie/2023/12/thumb/thn_5446a0c07b3d4f46857f65ad23b713f8.jpg","movieNm":"노량: 죽음의 바다","movieNmEn":"Noryang: Deadly Sea ","synop":"임진왜란 발발로부터 7년이 지난 1598년 12월.\r\n이순신(김윤석)은 왜군의 수장이던 도요토미 히데요시가 갑작스럽게 사망한 뒤\r\n왜군들이 조선에서 황급히 퇴각하려 한다는 것을 알게 된다.\r\n\r\n“절대 이렇게 전쟁을 끝내서는 안 된다”\r\n\r\n왜군을 완벽하게 섬멸하는 것이 이 전쟁을 올바르게 끝나는 것이라 생각한 이순신은\r\n명나라와 조명연합함대를 꾸려 왜군의 퇴각로를 막고 적들을 섬멸하기로 결심한다.\r\n\r\n하지만 왜군의 뇌물 공세에 넘어간 명나라 도독 진린(정재영)은 왜군에게 퇴로를 열어주려 하고,\r\n설상가상으로 왜군 수장인 시마즈(백윤식)의 살마군까지 왜군의 퇴각을 돕기 위해 노량으로 향하는데…\r\n\r\n2023년 12월, 모두를 압도할 최후의 전투가 시작된다! ","prdtYear":"2022","indieYn":null,"artmovieYn":null,"multmovieYn":null,"showTm":"152","showTs":"32","director":"김한민","prNm":"(주)빅스톤픽쳐스","dtNm":"롯데컬처웍스(주)롯데엔터테인먼트,(주)에이스메이커무비웍스","repNationCd":"한국","movieType":"장편","moviePrdtStat":"개봉","genre":"액션,드라마","watchGradeNm":"12세이상관람가","openDt":"20231220","salesAmt":5609503454,"audiCnt":549547,"scrCnt":1845,"showCnt":6783,"rank":1,"rankInten":0,"rankOldAndNew":"OLD","rownum":1},{"startYearDate":"2023.12.25","endYearDate":"2023.12.25","startDate":"2023년 12월 25일(월)","endDate":"2023년 12월 25일(월)","movieCd":"20212866","showDt":"20231225","thumbUrl":"/common/mast/movie/2023/11/thumb/thn_2d4842b5ae044adfaa2769ab51542ab8.jpg","movieNm":"서울의 봄","movieNmEn":"12.12: THE DAY","synop":"1979년 12월 12일, 수도 서울 군사반란 발생\r\n그날, 대한민국의 운명이 바뀌었다\r\n\r\n대한민국을 뒤흔든 10월 26일 이후, 서울에 새로운 바람이 불어온 것도 잠시\r\n12월 12일, 보안사령관 전두광이 반란을 일으키고\r\n군 내 사조직을 총동원하여 최전선의 전방부대까지 서울로 불러들인다.\r\n \r\n권력에 눈이 먼 전두광의 반란군과 이에 맞선 수도경비사령관 이태신을 비롯한\r\n진압군 사이, 일촉즉발의 9시간이 흘러가는데…\r\n \r\n목숨을 건 두 세력의 팽팽한 대립\r\n오늘 밤, 대한민국 수도에서 가장 치열한 전쟁이 펼쳐진다!\r\n\r\n","prdtYear":"2022","indieYn":null,"artmovieYn":null,"multmovieYn":null,"showTm":"141","showTs":"15","director":"김성수","prNm":"(주)하이브미디어코프","dtNm":"플러스엠 엔터테인먼트","repNationCd":"한국","movieType":"장편","moviePrdtStat":"개봉","genre":"드라마","watchGradeNm":"12세이상관람가","openDt":"20231122","salesAmt":4376314167,"audiCnt":427035,"scrCnt":1481,"showCnt":4657,"rank":2,"rankInten":0,"rankOldAndNew":"OLD","rownum":2},{"startYearDate":"2023.12.25","endYearDate":"2023.12.25","startDate":"2023년 12월 25일(월)","endDate":"2023년 12월 25일(월)","movieCd":"20236146","showDt":"20231225","thumbUrl":"/common/mast/movie/2023/12/thumb/thn_4c85b28fcda242c6a4f93ff9091015f1.jpg","movieNm":"신차원! 짱구는 못말려 더 무비 초능력 대결전 ~날아라 수제김밥~","movieNmEn":"New Dimension! Crayon Shinchan the Movie: Battle of Supernatural Powers ~Flying Sushi~","synop":"최초의 3D CG! 제작 기간 7년\r\n최고의 웃음과 감동! 최강의 스케일\r\n옷까지 갈아입은 볼록 짱구 등장!\r\n\r\n어느 날, 우주에서 날아온 검은 빛과 하얀 빛이 떡잎마을을 향해 떨어진다.\r\n평소처럼 저녁밥을 손꼽아 기다리던 짱구는 하얀 빛에 정통으로 맞게 되고\r\n그러자 온몸에 넘치는 신비한 힘!\r\n힘에 몸을 맡긴 채 엉덩이에 의식을 집중하자 장난감들이 붕붕 떠오른다.\r\n\r\n\"엉덩이... 엉덩이가 뜨거워...!?\r\n뭔지 몰라도 엄청난 힘을 손에 넣은 것 같아.\"\r\n\r\n한편, 검은 빛을 통해 초능력을 손에 넣은 또 다른 남자는\r\n이 세상의 파멸을 바라며 폭주하기 시작하는데,\r\n위기에 처한 세상을 구하기 위한 유일한 희망이 바로 짱구...!?\r\n\r\n올 겨울, 짱구의 엉덩이가 뜨겁게 타오른다!","prdtYear":"2023","indieYn":null,"artmovieYn":null,"multmovieYn":null,"showTm":"94","showTs":"4","director":"오네 히토시","prNm":null,"dtNm":"(주)씨제이이엔엠","repNationCd":"일본","movieType":"장편","moviePrdtStat":"개봉","genre":"애니메이션","watchGradeNm":"전체관람가","openDt":"20231222","salesAmt":1320043999,"audiCnt":133546,"scrCnt":883,"showCnt":1796,"rank":3,"rankInten":1,"rankOldAndNew":"OLD","rownum":3},{"startYearDate":"2023.12.25","endYearDate":"2023.12.25","startDate":"2023년 12월 25일(월)","endDate":"2023년 12월 25일(월)","movieCd":"20235735","showDt":"20231225","thumbUrl":"/common/mast/movie/2023/12/thumb/thn_336e52139823454589f7226aed1e72d7.jpg","movieNm":"아쿠아맨과 로스트 킹덤","movieNmEn":" Aquaman and the Lost Kingdom","synop":"아틀란티스 왕국을 이끌 왕의 자리에 오른 ‘아쿠아맨’.\r\n그 앞에 ‘블랙 만타’가 세상을 뒤흔들 강력한 지배 아이템 ‘블랙 트라이던트’를 손에 넣게 된다.\r\n그동안 겪지 못 했던 최악의 위협 속 ‘아쿠아맨’은\r\n‘블랙 만타’와 손을 잡았던 이부 동생 ‘옴’ 없이는 절대적 힘이 부족한 상황.\r\n바다를 지배할 슈퍼 히어로가 세상의 판도를 바꾼다!\r\n","prdtYear":"2023","indieYn":null,"artmovieYn":null,"multmovieYn":null,"showTm":"123","showTs":"59","director":"제임스 완","prNm":null,"dtNm":"워너브러더스 코리아(주)","repNationCd":"미국","movieType":"장편","moviePrdtStat":"개봉","genre":"액션,어드벤처,판타지","watchGradeNm":"12세이상관람가","openDt":"20231220","salesAmt":1241863686,"audiCnt":115959,"scrCnt":878,"showCnt":2073,"rank":4,"rankInten":-1,"rankOldAndNew":"OLD","rownum":4},{"startYearDate":"2023.12.25","endYearDate":"2023.12.25","startDate":"2023년 12월 25일(월)","endDate":"2023년 12월 25일(월)","movieCd":"20235596","showDt":"20231225","thumbUrl":"/common/mast/movie/2023/12/thumb/thn_0cc95d9cd0eb43dbacdc3986e845b62a.jpg","movieNm":"트롤: 밴드 투게더","movieNmEn":"Trolls Band Together","synop":"최애 아이돌 그룹 재결합 초읽기! 우리 함께하면 더 좋잖아!\r\n\r\n전 세계 모든 트롤을 열광케 했던 최고의 아이돌 그룹 ‘브로존’.\r\n역대급 무대 실수와 형제 간의 불화로 결국 해체한 뒤, 모두에게 잊혀 간다.\r\n\r\n그러던 어느 날, ‘브로존’의 황금막내 ‘브랜치’는 메인보컬 ‘플로이드’가\r\n슈퍼스타 ‘벨벳’과 ‘비니어’에게 잡혀 재능을 빼앗기고 있다는 소식을 듣는다.\r\n그를 구하기 위해서는 흩어져 있는 ‘브로존’을 재결합하고 완벽한 화음을 되찾아야 하는데…\r\n\r\n12월, 가장 짜릿한 컴백 무대의 시작!","prdtYear":"2023","indieYn":null,"artmovieYn":null,"multmovieYn":null,"showTm":"91","showTs":"21","director":"월트 도른","prNm":null,"dtNm":"유니버설픽쳐스인터내셔널 코리아(유)","repNationCd":"미국","movieType":"장편","moviePrdtStat":"개봉","genre":"애니메이션","watchGradeNm":"전체관람가","openDt":"20231220","salesAmt":763532684,"audiCnt":79424,"scrCnt":845,"showCnt":1284,"rank":5,"rankInten":0,"rankOldAndNew":"OLD","rownum":5},{"startYearDate":"2023.12.25","endYearDate":"2023.12.25","startDate":"2023년 12월 25일(월)","endDate":"2023년 12월 25일(월)","movieCd":"20234673","showDt":"20231225","thumbUrl":"/common/mast/movie/2023/11/thumb/thn_3934be5bb1d74e83bf9ee15db5d21725.jpg","movieNm":"뽀로로 극장판 슈퍼스타 대모험","movieNmEn":"PORORO POPSTAR ADVENTURE","synop":"뽀로로와 친구들은 전 우주를 통틀어 최고의 슈퍼스타를 뽑는 음악 축제\r\n‘파랑돌 슈퍼스타 선발대회’ 축제에 참가하기 위해 모험을 떠난다.\r\n\r\n파랑돌 행성에 불시착한 뽀로로와 친구들 앞에 나타난\r\n열정 가득한 매니저 ‘스캣’의 도움으로 \r\n‘뽀로로 밴드’는 가까스로 설레는 예선 무대에 오른다.\r\n\r\n한편, 악당 ‘빅벤’은 ‘스캣’과의 경쟁에서 이기기 위해\r\n모든 것이 완벽한 AI 아이돌 ‘아이원’을 앞세워 대회에 참가하지만\r\n‘뽀로로 밴드’의 예상치 못한 인기에 위기감을 느껴 급기야 방해 공작을 벌이게 되고,\r\n뽀로로와 친구들은 마지막 공연을 앞두고 갑작스러운 위기를 맞이하는데…\r\n\r\n12월, 우승보다 노는 게 제일 좋은 뽀로로 밴드의 아주 특별한 모험이 시작된다!","prdtYear":"2023","indieYn":null,"artmovieYn":null,"multmovieYn":null,"showTm":"77","showTs":"45","director":"윤제완,김성민","prNm":"(주)오콘","dtNm":"씨제이 씨지브이(CJ CGV)(주)","repNationCd":"한국","movieType":"장편","moviePrdtStat":"개봉","genre":"애니메이션","watchGradeNm":"전체관람가","openDt":"20231213","salesAmt":343063168,"audiCnt":36086,"scrCnt":606,"showCnt":801,"rank":6,"rankInten":0,"rankOldAndNew":"OLD","rownum":6},{"startYearDate":"2023.12.25","endYearDate":"2023.12.25","startDate":"2023년 12월 25일(월)","endDate":"2023년 12월 25일(월)","movieCd":"20234114","showDt":"20231225","thumbUrl":"/common/mast/movie/2023/11/thumb/thn_1ef55820eb494367b993f1110f747f15.jpeg","movieNm":"괴물","movieNmEn":"Monster","synop":"“우리 동네에는 괴물이 산다”\r\n싱글맘 사오리(안도 사쿠라)는 아들 미나토(쿠로카와 소야)의 행동에서 이상 기운을 감지한다.\r\n용기를 내 찾아간 학교에서 상담을 진행한 날 이후\r\n선생님과 학생들의 분위기가 심상치 않게 흐르기 시작하고.\r\n\r\n“괴물은 누구인가?”\r\n한편 사오리는 친구들로부터 따돌림을 당하고 있는 \r\n미나토의 친구 요리(히이라기 히나타)의 존재를 알게 되고 \r\n자신이 아는 아들의 모습과 사람들이 아는 아들의 모습이\r\n다르다는 사실을 어렴풋이 깨닫는데…\r\n태풍이 몰아치던 어느 날, 아무도 몰랐던 진실이 드러난다.","prdtYear":"2023","indieYn":null,"artmovieYn":null,"multmovieYn":"Y","showTm":"126","showTs":"34","director":"고레에다 히로카즈","prNm":null,"dtNm":"(주)넥스트엔터테인먼트월드(NEW)","repNationCd":"일본","movieType":"장편","moviePrdtStat":"개봉","genre":"드라마,미스터리","watchGradeNm":"12세이상관람가","openDt":"20231129","salesAmt":92581085,"audiCnt":8542,"scrCnt":132,"showCnt":174,"rank":7,"rankInten":0,"rankOldAndNew":"OLD","rownum":7},{"startYearDate":"2023.12.25","endYearDate":"2023.12.25","startDate":"2023년 12월 25일(월)","endDate":"2023년 12월 25일(월)","movieCd":"20190324","showDt":"20231225","thumbUrl":"/common/mast/movie/2023/10/thumb/thn_7b2ec15770044659878b8471f356e80a.jpg","movieNm":"3일의 휴가","movieNmEn":"Our Season","synop":"“따님은 어머님을 보거나 목소리를 들을 수 없고요.\r\n그냥 따님의 행복한 기억만 담고 오시면 됩니다.”\r\n\r\n죽은 지 3년째 되는 날, ‘복자’(김해숙)는 하늘에서 3일간의 휴가를 받아\r\n규칙 안내를 맡은 신입 ‘가이드’(강기영)와 함께 지상에 내려온다.\r\n미국 명문대학교 교수인 자랑스러운 딸을 볼 생각에 설레던 마음도 잠시,\r\n돌연 자신이 살던 시골집으로 돌아와 백반 장사를 시작한 ‘진주’(신민아)의 모습에 당황한다.\r\n속 타는 엄마의 마음도 모르는 ‘진주’는 자신을 찾아온 단짝 ‘미진’(황보라)과\r\n엄마의 레시피를 찾아가고, 낯익은 요리를 보자 서로의 추억이 되살아나는데…\r\n","prdtYear":"2020","indieYn":null,"artmovieYn":null,"multmovieYn":null,"showTm":"105","showTs":"29","director":"육상효","prNm":"글뫼 주식회사","dtNm":"(주)쇼박스","repNationCd":"한국","movieType":"장편","moviePrdtStat":"개봉","genre":"판타지,드라마","watchGradeNm":"12세이상관람가","openDt":"20231206","salesAmt":59785157,"audiCnt":5942,"scrCnt":150,"showCnt":179,"rank":8,"rankInten":0,"rankOldAndNew":"OLD","rownum":8},{"startYearDate":"2023.12.25","endYearDate":"2023.12.25","startDate":"2023년 12월 25일(월)","endDate":"2023년 12월 25일(월)","movieCd":"20236045","showDt":"20231225","thumbUrl":"/common/mast/movie/2023/11/thumb/thn_c17ccb13b7e3408ea0a8911573ba36b3.jpg","movieNm":"바다 탐험대 옥토넛 어보브 앤 비욘드: 버드, 옥토경보를 울려라!","movieNmEn":null,"synop":"#1. 옥토넛과 베짜기새\r\n나일강 하류에서 파피루스 갈대로 멋진 작품을 만들고 야영을 즐기던 버드와 트윅!\r\n그런데 둘이 잠든 사이, 땅이 잘려 나가 떠내려가기 시작한다?!\r\n\r\n#2. 옥토넛과 흰개미집\r\n흰개미집을 보기 위해 아프리카 사바나에 온 버드와 트윅.\r\n트윅이 새로 개발한 개미 로봇 옥토마이트를 이용해 흰개미집을 구경하던 중\r\n땅돼지의 공격을 받게 되는데...\r\n\r\n#3. 옥토넛과 바람까마귀\r\n가뭄으로 굶주린 미어캣들에게 먹을 것을 가져다 주기 위해\r\n칼라하리 사막으로 향한 옥토넛과 버드.\r\n그런데 바람까마귀가 거짓 경보로 미어캣들을 속여 먹이를 가로챘음을 알게 된다!\r\n\r\n#4. 옥토넛과 유령안경원숭이\r\n어두운 밤, 폭풍이 지나간 인도네시아 맹그로브 숲.\r\n콰지, 페이소, 트윅은 날카로운 비명소리를 듣게 된다. 소리의 정체는 무엇일까?\r\n\r\n#5. 옥토넛과 실 뽑는 날도래\r\n물속에 사는 날도래의 실을 조사해 마침내 초강력 실을 만드는 데 성공한 버드.\r\n그런데 성능을 시험하던 중, 포니와 찰싹 달라붙어 떨어질 수 없게 되는데...\r\n\r\n#6. 옥토넛과 바다거북의 등껍데기\r\n트윅의 수리센터에서 탐험선 교육을 받던 버드.\r\n시험운전을 위해 바다로 나갔다가 등껍데기가 깨져 곤경에 처한 바다거북을 만나는데!\r\n","prdtYear":"2023","indieYn":null,"artmovieYn":null,"multmovieYn":"Y","showTm":"68","showTs":"25","director":null,"prNm":null,"dtNm":"와이드 릴리즈(주)","repNationCd":"영국","movieType":"장편","moviePrdtStat":"개봉예정","genre":"애니메이션","watchGradeNm":"전체관람가","openDt":"20231227","salesAmt":43623950,"audiCnt":5096,"scrCnt":133,"showCnt":171,"rank":9,"rankInten":1,"rankOldAndNew":"OLD","rownum":9},{"startYearDate":"2023.12.25","endYearDate":"2023.12.25","startDate":"2023년 12월 25일(월)","endDate":"2023년 12월 25일(월)","movieCd":"20235980","showDt":"20231225","thumbUrl":"/common/mast/movie/2023/12/thumb/thn_63e7ade2f3c047aa9b78a1df3523ae2c.jpg","movieNm":"말하고 싶은 비밀","movieNmEn":"Our Secret Diary","synop":"어느 날 갑자기 고백 사고!?\r\n마음이 잘못 배달되었다!\r\n\r\n‘노조미’는 자신의 책상 서랍 속 ‘좋아해’라는 쪽지를 발견한다.\r\n쪽지의 주인공은 바로 학교 최고 인기남 ‘세토야마’!\r\n\r\n전교생이 좋아하는 이상형으로부터 고백받은 설렘도 잠시,\r\n고백의 주인이 사실은 자신이 아니었음을 알고 망연자실한다.\r\n\r\n엇갈릴수록 점점 커져가는 너를 향한 마음,\r\n내일은 너에게 말할 수 있을까? \r\n","prdtYear":"2023","indieYn":null,"artmovieYn":null,"multmovieYn":null,"showTm":"110","showTs":"32","director":null,"prNm":null,"dtNm":"(주)바이포엠스튜디오,홀리가든","repNationCd":"일본","movieType":"장편","moviePrdtStat":"개봉","genre":"멜로/로맨스","watchGradeNm":"전체관람가","openDt":"20231213","salesAmt":47381636,"audiCnt":4625,"scrCnt":43,"showCnt":61,"rank":10,"rankInten":1,"rankOldAndNew":"OLD","rownum":10}]
$(function(){
	movies.map((movie)=>{
		$('#user-table tbody').append(
		 '<tr>'
		 +'<td class="text-center">'+movie.rank+'</td>'
		 +'<td class="text-center"><img src="https://www.kobis.or.kr'+movie.thumbUrl"+'</td>'
		 +'<td>'+movie.movieNm+'</td>'
		 +'<td>'+movie.director+'</td>'
		 +'<td>'+movie.genre+'</td>'
		 +'</tr>'
		)
	})
	
	$('#kwyword').keyup(function(){
		let k=$('#keyword').val()
		$('#user-table > tbody > tr').hide()
		let temp=$('#user-table > tbody > tr > td:nth-child(5n+3):contains("'+k+'")')
		$(temp).parent().show()
	})
})
</script>
</head>
<body>
	<div class="container">
	 <h1>일일 박스오피스</h1>
	  <div class="row">
	    <table class="table">
	      <tr>
	       <td>
	        <input type="text" size="25" class="input-sm" id="keyword" placeholder="검색어 입력">
	       </td>
	      </tr>
	    </table>
	    <div style="height: 20px"></div>
	    <table class="table" id="user-table">
	     <thead>
	      <tr>
	      <th class="text-center">순위</th>
	      <th class="text-center"></th>
	      <th class="text-center">영화명</th>
	      <th class="text-center">감독</th>
	      <th class="text-center">장르</th>
	      </tr>
	     </thead>
	     <tbody>
	       
	     </tbody>
	    </table>
	  </div>
	</div>
</body>
</html>