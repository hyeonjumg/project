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
 		<br>
 		
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
 		<div style= "border: 3px solid gray; float: left; width: 510; padding:15px; 0; margin: 93px 350px; ">
<table>
<tr>
<td width="120"><img src="img/file/k1.jpg"> </td>
<td width="250">매장: 본수원갈비<br>
지역: 경기> 수원시<br>
업종: 한국음식 > 불고기/갈비살/차돌박이<br>
주소: 경기도 수원시 팔달구 중부대로223번길 41<br>
TEL 031-211-8434 
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/gm1.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-230px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/k2.jpg"> </td>
<td width="250">매장: 홍박사생고기<br>
지역: 경기> 성남/모란/복정/청계산<br>
업종: 한국음식 > 꽃등심/등심/육회<br>
주소: 경기도 성남시 분당구 양현로 447<br>
TEL 031-703-0778
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/gm2.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
<div style= "border: 3px solid gray; float: left; width: 510; padding:15px; 0; margin:-50px 350px; ">
<table>
<tr>
<td width="120"><img src="img/file/k18.jpg"> </td>
<td width="250">매장: 열두대문<br>
지역: 경기> 의왕/백운호수<br>
업종: 한국음식 > 한정식<br>
주소: 경기도 의왕시 청계로 167-16<br> 
TEL 031-426-1236
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/gm3.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-85px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/k19.jpg"> </td>
<td width="250">매장: 갈릴리농원<br>
지역: 경기> 파주시<br>
업종: 한국음식 > 장어구이/꼼장어<br>
주소: 경기도 파주시 탄현면 방촌로 1196<br>
TEL 031-942-8400
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/gm4.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
<div style= "border: 3px solid gray; float: left; width: 510; padding:15px; 0; margin:90px 350px; ">
<table>
<tr>
<td width="120"><img src="img/file/k20.jpg"> </td>
<td width="250">매장: 토지한정식<br>
지역: 경기> 성남/모란/복정/청계산<br>
업종: 한국음식 > 한정식<br>
주소: 경기도 성남시 수정구 오야로 5<br>
TEL 031-723-6054
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/gm5.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-225px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/k3.jpg"> </td>
<td width="250">매장: 일산칼국수본점<br>
지역: 경기> 일산-정발산/장항동<br>
업종: 한국음식 > 라면/칼국수/국수/수제비<br>
주소: 경기도 고양시 일산동구 경의로 467<br>
TEL 031-903-2208
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/gm6.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
<div style= "border: 3px solid gray; float: left; width: 510; padding:15px; 0; margin:-50px 350px; ">
<table>
<tr>
<td width="120"><img src="img/file/k4.png"> </td>
<td width="250">매장: 진미통닭<br>
지역: 경기> 수원시<br>
업종: 한국음식 > 치킨/훈제<br>
주소: 경기도 수원시 팔달구 정조로800번길 21<br>
TEL 031-255-3401
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/gm7.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-85px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/k5.png"> </td>
<td width="250">매장: 옥천냉면 황해식당<br>
지역: 경기> 양평군/양수리<br>
업종: 한국음식 > 냉면<br>
주소: 서울특별시 강남구 선릉로146길 25<br>
TEL 경기도 양평군 옥천면 고읍로 140
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/gm8.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
<div style= "border: 3px solid gray; float: left; width: 510; padding:15px; 0; margin:90px 350px; ">
<table>
<tr>
<td width="120"><img src="img/file/k6.jpg"> </td>
<td width="250">매장: 만우정육점생고기식당<br>
지역: 경기> 여주군<br>
업종: 한국음식 > 꽃등심/등심/육회<br>
주소: 경기도 여주시 가남읍 태평로 68<br>
TEL 031-884-7221
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/gm9.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-225px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/k7.png"> </td>
<td width="250">매장: 홍원막국수<br>
지역: 서울-강남>신사역<br>
업종: 한국음식 > 닭볶음탕/닭갈비/닭발<br>
주소: 서울특별시 강남구 강남대로152길 24<br>
TEL 02-549-5119
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/gm10.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
<div style= "border: 3px solid gray; float: left; width: 510; padding:15px; 0; margin:-50px 350px; ">
<table>
<tr>
<td width="120"><img src="img/file/k8.png"> </td>
<td width="250">매장: 평양면옥<br>
지역: 한국음식 > 냉면<br>
업종: 세계음식>퓨전레스토랑<br>
주소: 경기도 의정부시 평화로439번길 7<br>
TEL 031-877-2282
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/gm11.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-85px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/k9.jpg"> </td>
<td width="250">매장: 고래빵<br>
지역: 경기> 안양-범계/평촌<br>
업종: 세계음식 > 베이커리/제과점<br>
주소: 경기도 안양시 동안구 동편로49번길 19<br>
TEL 031-423-1625
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/gm12.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
<div style= "border: 3px solid gray; float: left; width: 510; padding:15px; 0; margin:90px 350px; ">
<table>
<tr>
<td width="120"><img src="img/file/k11.png"> </td>
<td width="250">매장: 이웃사촌<br>
지역: 경기> 안양-범계/평촌<br>
업종: 한국음식 > 한정식<br>
주소: 경기도 안양시 동안구 시민대로 161 안양무역센터<br>
TEL 031-388-8640
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/gm13.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-225px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/k12.png"> </td>
<td width="250">매장: 목향원<br>
지역: 경기> 남양주/별내/퇴계원<br>
업종: 한국음식 > 한정식<br>
주소: 경기도 남양주시 덕릉로1071번길 34-11<br>
TEL 031-527-2255
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/gm14.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
<div style= "border: 3px solid gray; float: left; width: 510; padding:15px; 0; margin:-50px 350px; ">
<table>
<tr>
<td width="120"><img src="img/file/k13.png"> </td>
<td width="250">매장: 뀌숑<br>
지역: 경기> 분당-판교/운중동<br>
업종: 세계음식 > 이태리레스토랑<br>
주소: 경기도 성남시 분당구 판교역로14번길 16<br>
TEL 031-8017-9793
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/gm15.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-85px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/k14.jpg"> </td>
<td width="250">매장: 반구정나루터<br>
지역: 경기> 파주시<br>
업종: 한국음식 > 장어구이/꼼장어<br>
주소: 경기도 파주시 문산읍 반구정로85번길 13<br>
TEL 031-952-3472
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/gm16.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
<div style= "border: 3px solid gray; float: left; width: 510; padding:15px; 0; margin:90px 350px; ">
<table>
<tr>
<td width="120"><img src="img/file/k15.jpg"> </td>
<td width="250">매장: 올라 백운호수2호점<br>
지역: 경기> 의왕/백운호수<br>
업종: 세계음식 > 이태리레스토랑<br>
주소: 경기도 의왕시 의일로 25<br>
TEL 031-426-1008
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/gm17.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-225px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/k16.jpg"> </td>
<td width="250">매장: 크라이치즈버거 심곡점<br>
지역: 경기> 부천/부천시청/중동<br>
업종: 세계음식 > 햄버거<br>
주소: 경기도 부천시 신흥로52번길 35<br>
TEL 032-611-6244
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/gm18.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 		
 		
 		
 		
 


				
					
					
				
					<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
					<script src="js/bootstrap.js"></script>

</body>
</html>
 