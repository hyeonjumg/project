<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="board.BoardDAO" %>
<%@ page import="board.Board" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/style.css">
<title> 맛집 둘러보기!</title>
<style type="text/css">
	a, a:hover {
		color: #000000;
		text-decoration: none;
	}
img.relative {
height:60px;
width:1170px;
position: relative;
left: 350px;
top:30px
}


h1{
  font-family: 'Oswald', sans-serif;
  font-weight:bold;
  font-size:20px;
  color:#34495e;
  text-align:left;
  margin:0 auto 40px 10px;
}
h4, h6 {
	font-family: 'Oswald', sans-serif;
    color: black;
    font-size:12px;
    font-weight:normal;
    margin: 10px 10px 0 10px;
    padding: -30px 10px;
 }
  h5 {
	font-family: 'Oswald', sans-serif;
    color: black;
    font-size:12px;
    font-weight:bold;
    margin: 10px 10px 0 10px;
    padding: -30px 10px;
    
    
 }
 .round-button{ 
 
    width: 60px; 
 
    height: 60px; 
 
    text-decoration: none; 
 
    display: inline-block; 
 
    outline: none; 
 
    cursor: pointer; 
 
    border-style: none; 
 
    color: white; 
 
    background-color: #3498db; 
 
    border-radius: 100%; 
 
    overflow: none; 
 
    text-align: center; 
    
    margin : 10px 15px;
 
}
.round-button1{ 
 
    width: 60px; 
 
    height: 60px; 
 
    text-decoration: none; 
 
    display: inline-block; 
 
    outline: none; 
 
    cursor: pointer; 
 
    border-style: none; 
 
    color: white; 
 
    background-color: #3498db; 
 
    border-radius: 100%; 
 
    overflow: none; 
 
    text-align: center; 
    
    margin : 10px 0;
 
} 
 

 
.round-button:active{ 
 
    background-color: #2980b9; 
 
}
td {
font-size:12px;
}
img {
width:110px;
height: auto;
}
table {
width:510px;
height:100px;
}
hr{
margin: 10px 10px;
}
input[type=button] {
            background-color: orange;
            border: none;
            text-decoration: none;
            color: white;
            padding: 10px 10px;
            margin: 0 15px;
            cursor: pointer;
         }
 


</style>

	

</head>
<body>
	<%
		String userID = null;
		if (session.getAttribute("userID") != null) {
			userID = (String) session.getAttribute("userID");
		}
		int pageNumber = 1;
		if (request.getParameter("pageNumber") != null) {
			pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
		}
	%>
	<nav class="navbar navbar-default">
  <div class="navbar-header">
   <button type="button" class="navbar-toggle collapsed"
    data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
    aria-expanded="false">
    <span class="icon-bar"></span>
    <span class="icon-bar"></span>
    <span class="icon-bar"></span>
   </button>
   <a class="navbar-brand" href="main.jsp">맛집 웹사이트</a>
  </div>
  <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
    <ul class="nav navbar-nav">
                <li><a href="main.jsp">홈</a></li>
                <li><a href="mobeom1.jsp">모범맛집</a></li>
                <li><a href="restr.jsp">레스토랑</a></li>
                <li><a href="impor.jsp">해외요리</a></li>
                <li class="active"><a href="city.jsp">지역별맛집</a></li>
                <li><a href="board.jsp">공유게시판</a></li>
                <li><a href="custom.jsp">고객문의</a></li>
           </ul>
           <%
           		if(userID == null) {
           	
           %>
            <ul class="nav navbar-nav navbar-right" id="bs-example-navbar-collapse-1">
           <li class="dropdown">
           		<li><a href="login.jsp">LOGIN</a>
           		<li><a href="join.jsp">SIGN UP</a>
                    
            </ul>
           	
           <%
          		 } else {
            
          		 
           %>
           	 <ul class="nav navbar-nav navbar-right" id="bs-example-navbar-collapse-1">
           <li class="dropdown">
           		<li><a href="logout.jsp">LOGOUT</a>
           		
                    
            </ul>
           <%
          		 }
           %>
          
                
  </div>
 </nav>
 		
 		<br><br>
 		<h1><I>지역별 검색</I></h1>
 		<h4>지역별 게시판에서 지역별로 나열이 되어 있는 음식점들을 확인하여 카페,레스토랑,커피점,주류 관계없이 다양한<br>
 		음식점에 대한 내용을 상세히 확인할 수 있습니다.</h4><br>
 		
 		<h5><i>추천 지역 음식점(11)</i></h5>
 		<div> 
 	<hr align="left" style="border: solid 1px gray; width: 20%;">
    <button class="round-button" onclick="location.href='city.jsp' ">서울</button>
     <button class="round-button1" onclick="location.href='city2.jsp' ">경기</button>
     <button class="round-button2" onclick="location.href='city3.jsp' ">인천</button> 
     <button class="round-button1" onclick="location.href='city4.jsp' ">부산</button> 
     <button class="round-button3" onclick="location.href='city5.jsp' ">대구</button> 
     <button class="round-button4" onclick="location.href='city6.jsp' ">광주</button>
     <button class="round-button1" onclick="location.href='city7.jsp' ">대전</button> 
     <button class="round-button5" onclick="location.href='city8.jsp' ">울산</button> 
     <button class="round-button1" onclick="location.href='city9.jsp' ">강원</button> 
     <button class="round-button6" onclick="location.href='city10.jsp' ">경북</button><br>
     <button class="round-button" onclick="location.href='city11.jsp' ">전북</button>
</div> 
 		
 		<img src='img/bae.jpg' class="relative"><br><br><Br>
 		<div style= "border: 3px solid gray; float: left; width: 510; padding:15px; 0; margin: 90px 350px; ">
<table>
<tr>
<td width="120"><img src="img/file/s1.png"> </td>
<td width="250">매장: 필경재<br>
지역: 서울-강남> 개포/수서<br>
업종: 한국음식>한정식<br>
주소:서울특별시 강남구 광평로 205<br>
TEL 02-445-2115</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('googleMap.jsp')"><br><br>
<input type="button" value="Web Site" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-225px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/s2.png"> </td>
<td width="250">매장: 정식당<br>
지역: 서울-강남>청담동<br>
업종: 한국음식>한정식<br>
주소:서울특별시 강남구 선릉로158길11<br>
TEL 02-517-4654
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('googleMap2.jsp')"><br><br>
<input type="button" value="Web Site" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
<div style= "border: 3px solid gray; float: left; width: 510; padding:15px; 0; margin:-50px 350px; ">
<table>
<tr>
<td width="120"><img src="img/file/s3.jpg"> </td>
<td width="250">매장: 멜팅샵<br>
지역: 서울-강남> 압구정-도산공원<br>
업종: 세계음식 > 퓨전레스토랑<br>
주소: 서울특별시 강남구 압구정로46길 55<br>
TEL 02-544-4256
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('googleMap3.jsp')"><br><br>
<input type="button" value="Web Site" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-85px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/s4.jpg"> </td>
<td width="250">매장: 새벽집 청담동점<br>
지역: 서울-강남>청담동<br>
업종: 한국음식 > 꽃등심/등심/육회<br>
주소:서울특별시 강남구 도산대로101길 6 <br>
TEL 02-546-5739
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('googleMap4.jsp')"><br><br>
<input type="button" value="Web Site" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
<div style= "border: 3px solid gray; float: left; width: 510; padding:15px; 0; margin:90px 350px; ">
<table>
<tr>
<td width="120"><img src="img/file/s5.jpg"> </td>
<td width="250">매장: 리북집<br>
지역: 서울-강남> 신논현/영동시장<br>
업종: 한국음식 > 족발/보쌈<br>
주소:서울특별시 강남구 학동로2길 47<br>
TEL 02-540-8589</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('googleMap5.jsp')"><br><br>
<input type="button" value="Web Site" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-225px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/s6.png"> </td>
<td width="250">매장: 밍글스<br>
지역: 서울-강남>청담동<br>
업종: 세계음식 > 퓨전레스토랑<br>
주소:서울특별시 강남구 선릉로 757 더채플앳 청담 <br>
TEL 02-515-7306
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('googleMap6.jsp')"><br><br>
<input type="button" value="Web Site" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
<div style= "border: 3px solid gray; float: left; width: 510; padding:15px; 0; margin:-50px 350px; ">
<table>
<tr>
<td width="120"><img src="img/file/s7.jpg"> </td>
<td width="250">매장: 경천애인2237<br>
지역: 서울-강남> 선릉역/선정릉역<br>
업종: 한국음식 > 꽃등심/등심/육회<br>
주소:서울특별시 강남구 테헤란로 421<br>
TEL 02-553-2237
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('googleMap7.jsp')"><br><br>
<input type="button" value="Web Site" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-85px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/s8.jpg"> </td>
<td width="250">매장: 스시효 청담점<br>
지역: 서울-강남> 청담동<br>
업종: 세계음식 > 일본음식/초밥<br>
주소:서울특별시 강남구 선릉로146길 25<br>
TEL 02-545-0023
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/googleMap8.jsp')"><br><br>
<input type="button" value="Web Site" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
<div style= "border: 3px solid gray; float: left; width: 510; padding:15px; 0; margin:90px 350px; ">
<table>
<tr>
<td width="120"><img src="img/file/s9.jpg"> </td>
<td width="250">매장: 진주집<br>
지역: 서울-강남>여의도<br>
업종: 한국음식>라면/칼국수/국수/수제비<br>
주소:서울특별시 영등포구 국제금융로6길 33<br>
TEL 02-787-6108
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/googleMap9.jsp')"><br><br>
<input type="button" value="Web Site" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-225px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/s10.jpg"> </td>
<td width="250">매장: 목포집<br>
지역: 서울-강남>신사역<br>
업종: 한국음식 > 닭볶음탕/닭갈비/닭발<br>
주소:서울특별시 강남구 강남대로152길 24<br>
TEL 02-549-5119
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/googleMap10.jsp')"><br><br>
<input type="button" value="Web Site" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
<div style= "border: 3px solid gray; float: left; width: 510; padding:15px; 0; margin:-50px 350px; ">
<table>
<tr>
<td width="120"><img src="img/file/s11.jpg"> </td>
<td width="250">매장: 스와니예<br>
지역: 서울-강남>서래마을<br>
업종: 세계음식>퓨전레스토랑<br>
주소:서울특별시 서초구 반포대로39길 46<br>
TEL 02-3477-9386
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/googleMap11.jsp')"><br><br>
<input type="button" value="Web Site" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-85px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/s12.png"> </td>
<td width="250">매장: 벽제갈비 방이본점<br>
지역: 서울-강남> 송파/방이<br>
업종: 한국음식 > 돼지갈비/갈매기살<br>
주소:서울특별시 송파구 양재대로71길 1-4<br>
TEL 02-415-5522
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/googleMap12.jsp')"><br><br>
<input type="button" value="Web Site" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
<div style= "border: 3px solid gray; float: left; width: 510; padding:15px; 0; margin:90px 350px; ">
<table>
<tr>
<td width="120"><img src="img/file/s13.jpeg"> </td>
<td width="250">매장: 스시선수<br>
지역: 서울-강남>청담동<br>
업종: 서울-강남> 압구정-도산공원<br>
주소:서울특별시 강남구 도산대로45길 6 호림아트센터 2빌딩<br>
TEL 02-514-0812</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/googleMap13.jsp')"><br><br>
<input type="button" value="Web Site" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-225px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/s14.jpg"> </td>
<td width="250">매장: 호수삼계탕<br>
지역: 서울-강남> 영등포/문래/당산/신도림<br>
한국음식 > 삼계탕/백숙/찜닭<br>
주소:서울특별시 영등포구 도림로 274-1<br>
TEL 02-848-2440</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/googleMap14.jsp')"><br><br>
<input type="button" value="Web Site" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
<div style= "border: 3px solid gray; float: left; width: 510; padding:15px; 0; margin:-50px 350px; ">
<table>
<tr>
<td width="120"><img src="img/file/s15.jpg"> </td>
<td width="250">매장: 일일향 1호점<br>
지역: 서울-강남> 압구정<br>
업종: 세계음식 > 중국음식<br>
주소:서울특별시 강남구 논현로168길 30<br>
TEL 02-545-6154
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/googleMap15.jsp')"><br><br>
<input type="button" value="Web Site" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-85px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/s16.jpg"> </td>
<td width="250">매장: 주<br>
지역: 서울-강남> 방배<br>
업종: 세계음식 > 중국음식<br>
주소:서울특별시 서초구 동광로19길 16<br>
TEL 02-3482-3374
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/googleMap16.jsp')"><br><br>
<input type="button" value="Web Site" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
<div style= "border: 3px solid gray; float: left; width: 510; padding:15px; 0; margin:90px 350px; ">
<table>
<tr>
<td width="120"><img src="img/file/s17.png"> </td>
<td width="250">매장: 모퉁이우ripe<br>
지역: 서울-강남> 삼성동<br>
업종: 한국음식 > 불고기/갈비살/차돌박이<br>
주소: 서울특별시 강남구 영동대로96길 26 하나은행삼성동<br>
TEL 02-517-4654
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/googleMap17.jsp')"><br><br>
<input type="button" value="Web Site" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-225px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/s18.jpg"> </td>
<td width="250">매장: 팔레드고몽<br>
지역: 서울-강남> 청담동<br>
업종: 세계음식 > 프렌치레스토랑<br>
주소:서울특별시 강남구 도산대로81길 21<br>
TEL 02-546-8877
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('googleMap18.jsp')"><br><br>
<input type="button" value="Web Site" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
<div style= "border: 3px solid gray; float: left; width: 510; padding:15px; 0; margin:-50px 350px; ">
<table>
<tr>
<td width="120"><img src="img/file/s19.jpg"> </td>
<td width="250">매장: 권숙수<br>
지역: 서울-강남> 압구정<br>
업종: 한국음식>한정식<br>
주소:서울특별시 강남구 언주로170길 27<br>
TEL 02-542-6268
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/googleMap19.jsp')"><br><br>
<input type="button" value="Web Site" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-85px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/s20.png"> </td>
<td width="250">매장: 랩24<br>
지역: 서울-강남> 신논현/영동시장<br>
업종: 세계음식 > 유로피언레스토랑<br>
주소:서울특별시 강남구 봉은사로 120 르메르디앙서울호텔<br>
TEL 02-511-4523
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/googleMap20.jsp')"><br><br>
<input type="button" value="Web Site" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 		
 		
 		
 		
 


				
					
					
				
					<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
					<script src="js/bootstrap.js"></script>

</body>
</html>
 