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
<td width="120"><img src="img/file/b1.png"> </td>
<td width="250">매장: 해운대소문난암소갈비집<br>
지역: 부산> 해운대<br>
업종: 한국음식 > 불고기/갈비살/차돌박이<br>
주소: 부산광역시 해운대구 중동2로10번길 32-10<br>
TEL 051-746-0033
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/gb1.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-230px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/b2.jpg"> </td>
<td width="250">매장: 금수복국<br>
지역: 부산> 해운대<br>
업종: 한국음식 > 해물탕/해물요리/꽃게<br>
주소: 부산광역시 해운대구 중동1로43번길 23 금수복국<br>
TEL 051-742-3600
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/gb2.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
<div style= "border: 3px solid gray; float: left; width: 510; padding:15px; 0; margin:-50px 350px; ">
<table>
<tr>
<td width="120"><img src="img/file/b3.jpg"> </td>
<td width="250">매장: 삼진어묵<br>
지역: 부산> 부산역/초량<br>
업종: 한국음식 > 그밖에또다른것<br>
주소: 부산광역시 동구 중앙대로 206<br> 
TEL 051-781-9930
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/gb3.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-85px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/b4.jpg"> </td>
<td width="250">매장: 언양불고기부산집<br>
지역: 부산> 금련산역-남천동카페거리<br>
업종: 한국음식 > 불고기/갈비살/차돌박이<br>
주소: 부산광역시 수영구 남천바다로 32<br>
TEL 051-754-1004
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/gb4.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
<div style= "border: 3px solid gray; float: left; width: 510; padding:15px; 0; margin:90px 350px; ">
<table>
<tr>
<td width="120"><img src="img/file/b5.jpg"> </td>
<td width="250">매장: 이가네떡볶이<br>
지역: 부산> 광복동/남포동<br>
업종: 한국음식 > 떡볶이/순대/튀김/만두<br>
주소: 부산광역시 중구 부평동2가 17<br>
TEL 051-245-0413
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/gb5.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-225px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/b6.jpg"> </td>
<td width="250">매장: 옵스 해운대점<br>
지역: 부산> 해운대<br>
업종: 세계음식 > 베이커리/제과점<br>
주소: 부산광역시 해운대구 중동1로 31<br>
TEL 051-747-6886
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/gb6.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
<div style= "border: 3px solid gray; float: left; width: 510; padding:15px; 0; margin:-50px 350px; ">
<table>
<tr>
<td width="120"><img src="img/file/b7.jpg"> </td>
<td width="250">매장: 해성막창집 본점<br>
지역: 부산> 해운대<br>
업종: 한국음식 > 곱창/양/대창/막창<br>
주소: 부산광역시 해운대구 중동1로19번길 29<br>
TEL 051-731-3113
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/gb7.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-85px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/b8.jpg"> </td>
<td width="250">매장: 송정집<br>
지역: 부산> 해운대-송정<br>
업종: 한국음식 > 라면/칼국수/국수/수제비<br>
주소: 부산광역시 해운대구 송정광어골로 59<br>
TEL 051-704-0577
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/gb8.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
<div style= "border: 3px solid gray; float: left; width: 510; padding:15px; 0; margin:90px 350px; ">
<table>
<tr>
<td width="120"><img src="img/file/b9.jpg"> </td>
<td width="250">매장: 풍원장시골밥상<br>
지역: 부산> 기장/정관<br>
업종: 한국음식 > 한정식<br>
주소: 부산광역시 기장군 동암1길 5 우물집돼지갈비<br>
TEL 051-937-6479
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/gb9.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-225px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/b10.jpg"> </td>
<td width="250">매장: 이하정간장게장<br>
지역: 부산> 광안리/수영<br>
업종: 한국음식 > 해물탕/해물요리/꽃게<br>
주소: 부산 수영구 광서로10번길 46<br>
TEL 051-909-6100
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/gb.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
<div style= "border: 3px solid gray; float: left; width: 510; padding:15px; 0; margin:-50px 350px; ">
<table>
<tr>
<td width="120"><img src="img/file/b11.jpg"> </td>
<td width="250">매장: 초량밀면<br>
지역: 부산> 부산역/초량<br>
업종: 한국음식 > 냉면<br>
주소: 부산광역시 동구 중앙대로 225<br>
TEL 051-462-1575
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/gb10.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-85px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/b12.jpg"> </td>
<td width="250">매장: 와사비<br>
지역: 부산> 범일/문현/우암<br>
업종: 한국음식 > 회<br>
주소: 부산광역시 남구 자성로 148<br>
TEL 051-643-7972
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/gb.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
<div style= "border: 3px solid gray; float: left; width: 510; padding:15px; 0; margin:90px 350px; ">
<table>
<tr>
<td width="120"><img src="img/file/b13.jpg"> </td>
<td width="250">매장: 아인스크레페<br>
지역: 부산> 광복동/남포동<br>
업종: 세계음식 > 브런치<br>
주소: 부산광역시 중구 광복동2가 18-3<br>
TEL 010-4216-9116
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/gb11.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-225px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/b14.jpg"> </td>
<td width="250">매장: 속시원한대구탕<br>
지역: 부산> 해운대-달맞이길<br>
업종: 한국음식 > 해물탕/해물요리/꽃게<br>
주소: 부산광역시 해운대구 달맞이길 229 삼우가든<br>
TEL 051-747-1666
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/gb12.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
<div style= "border: 3px solid gray; float: left; width: 510; padding:15px; 0; margin:-50px 350px; ">
<table>
<tr>
<td width="120"><img src="img/file/b15.jpg"> </td>
<td width="250">매장: 이재모피자<br>
지역: 부산> 광복동/남포동<br>
업종: 세계음식 > 피자<br>
주소: 부산시 중구 신창동1가 2-1<br>
TEL 051-245-1478
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/gb13.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-85px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/b16.jpg"> </td>
<td width="250">매장: 화전국수<br>
지역: 부산> 서면<br>
업종: 한국음식 > 라면/칼국수/국수/수제비<br>
주소: 부산광역시 부산진구 중앙대로702번길 17-2<br>
TEL 051-806-2259
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/gb14.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
<div style= "border: 3px solid gray; float: left; width: 510; padding:15px; 0; margin:90px 350px; ">
<table>
<tr>
<td width="120"><img src="img/file/b17.jpg"> </td>
<td width="250">매장: 달봉이횟집<br>
지역: 부산> 광복동/남포동<br>
업종: 한국음식 > 회<br>
주소: 부산광역시 중구 자갈치해안로 52<br>
TEL 051-256-3340
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/gb15.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-225px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/b18.jpg"> </td>
<td width="250">매장: 송정3대국밥<br>
지역: 부산> 서면<br>
업종: 한국음식 > 해장국/국밥<br>
주소: 부산광역시 부산진구 서면로68번길 29<br>
TEL 051-806-7181
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/gb16.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
<div style= "border: 3px solid gray; float: left; width: 510; padding:15px; 0; margin:-50px 350px; ">
<table>
<tr>
<td width="120"><img src="img/file/b19.jpg"> </td>
<td width="250">매장: 다리집<br>
지역: 부산> 금련산역-남천동카페거리<br>
업종: 한국음식 > 떡볶이/순대/튀김/만두<br>
주소: 부산광역시 수영구 수영로464번길 7<br>
TEL 051-625-0130
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/gb17.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-85px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/b20.jpg"> </td>
<td width="250">매장: 기장곰장어<br>
지역: 부산> 해운대-송정<br>
업종: 한국음식 > 장어구이/꼼장어<br>
주소: 부산광역시 기장군 기장해안로 70 기장곰장어<br>
TEL 051-721-2934
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/gb18.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 		
 		
 		
 		
 


				
					
					
				
					<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
					<script src="js/bootstrap.js"></script>

</body>
</html>
 