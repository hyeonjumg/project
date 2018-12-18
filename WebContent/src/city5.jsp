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
 		<div style= "border: 3px solid gray; float: left; width: 510; padding:15px; 0; margin: 90px 350px; ">
<table>
<tr>
<td width="120"><img src="img/file/d1.jpg"> </td>
<td width="250">매장: 삼송빵집 본점<br>
지역: 대구> 동성로/중앙로/종로<br>
업종: 세계음식 > 베이커리/제과점<br>
주소: 대구광역시 중구 중앙대로 395<br>
TEL 053-254-4064
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/gd1.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-225px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/d2.jpg"> </td>
<td width="250">매장: 왕거미식당<br>
지역: 대구> 동인동/삼덕동/중구청<br>
업종: 한국음식 > 꽃등심/등심/육회<br>
주소: 대구광역시 중구 국채보상로 696-8<br>
TEL 053-427-6380
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/gd2.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
<div style= "border: 3px solid gray; float: left; width: 510; padding:15px; 0; margin:-50px 350px; ">
<table>
<tr>
<td width="120"><img src="img/file/d3.jpg"> </td>
<td width="250">매장: 도쿄다이닝<br>
지역: 대구> 동성로/중앙로/종로<br>
업종: 세계음식 > 일본음식/초밥<br>
주소: 대구광역시 중구 동성로2길 4-5<br> 
TEL 053-424-9191
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/gd3.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-85px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/d4.jpg"> </td>
<td width="250">매장: 해밥달밥<br>
지역: 대구> 대명/앞산<br>
업종: 한국음식 > 한정식<br>
주소: 대구광역시 남구 두류공원로 62<br>
TEL 053-624-1177
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/gd4.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
<div style= "border: 3px solid gray; float: left; width: 510; padding:15px; 0; margin:90px 350px; ">
<table>
<tr>
<td width="120"><img src="img/file/d5.jpg"> </td>
<td width="250">매장: 빈플러스<br>
지역: 대구> 동성로/중앙로/종로<br>
업종: 세계음식 > 피자<br>
주소: 대구광역시 중구 동성로4길 73<br>
TEL 053-242-3582
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/gd5.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-225px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/d6.jpg"> </td>
<td width="250">매장: 호남정<br>
지역: 대구> 두산동/수성못/지산<br>
업종: 한국음식 > 한정식<br>
주소: 대구광역시 수성구 들안로 24<br>
TEL 053-767-9555
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/gd6.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
<div style= "border: 3px solid gray; float: left; width: 510; padding:15px; 0; margin:-50px 350px; ">
<table>
<tr>
<td width="120"><img src="img/file/d7.jpg"> </td>
<td width="250">매장: 뉴욕통닭<br>
지역: 대구> 동성로/중앙로/종로<br>
업종: 한국음식 > 치킨/훈제<br>
주소: 대구광역시 중구 종로 12<br>
TEL 053-253-0070
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/gd7.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-85px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/d8.jpg"> </td>
<td width="250">매장: 미성당납작만두<br>
지역: 대구> 반월당/남산동/봉산<br>
업종: 한국음식 > 라면/칼국수/국수/수제비<br>
주소: 대구광역시 중구 남산로 75-1<br>
TEL 053-255-0742
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/gd8.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
<div style= "border: 3px solid gray; float: left; width: 510; padding:15px; 0; margin:90px 350px; ">
<table>
<tr>
<td width="120"><img src="img/file/d9.jpg"> </td>
<td width="250">매장: 윤옥연원조할매떡볶이<br>
지역: 대구> 범어동/수성동<br>
업종: 한국음식 > 떡볶이/순대/튀김/만두<br>
주소: 대구광역시 수성구 범어천로 216-11<br>
TEL 053-756-7579
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/gd9.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-225px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/d10.jpg"> </td>
<td width="250">매장: 민수사장<br>
지역: 대구> 두산동/수성못/지산<br>
업종: 세계음식 > 일본음식/초밥<br>
주소: 대구광역시 수성구 들안로 19<br>
TEL 053-768-2727
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/gd10.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
<div style= "border: 3px solid gray; float: left; width: 510; padding:15px; 0; margin:-50px 350px; ">
<table>
<tr>
<td width="120"><img src="img/file/d11.jpg"> </td>
<td width="250">매장: 기찻길삼겹살<br>
지역: 대구> 경북대/비산/침산<br>
업종: 한국음식 > 삼겹살/목살<br>
주소: 대구광역시 서구 달서천로 232<br>
TEL 010-2877-7547
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/gd11.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-85px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/d12.jpg"> </td>
<td width="250">매장: 태산만두<br>
지역: 대구> 동성로/중앙로/종로<br>
업종: 한국음식 > 떡볶이/순대/튀김/만두<br>
주소: 대구광역시 중구 달구벌대로 2109-32<br>
TEL 053-424-0449
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/gd12.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
<div style= "border: 3px solid gray; float: left; width: 510; padding:15px; 0; margin:90px 350px; ">
<table>
<tr>
<td width="120"><img src="img/file/d13.jpg"> </td>
<td width="250">매장: 미야꼬우동<br>
지역: 대구> 동성로/중앙로/종로<br>
업종: 세계음식 > 일본음식/초밥<br>
주소: 대구광역시 중구 동성로2길 31<br>
TEL 053-426-5660
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/gd13.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-225px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/d14.jpg"> </td>
<td width="250">매장: 수봉반점<br>
지역: 대구> 경북대/비산/침산<br>
업종: 세계음식 > 중국음식<br>
주소: 대구광역시 북구 대현남로2길 60<br>
TEL 053-941-1503
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/gd14.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
<div style= "border: 3px solid gray; float: left; width: 510; padding:15px; 0; margin:-50px 350px; ">
<table>
<tr>
<td width="120"><img src="img/file/d15.jpg"> </td>
<td width="250">매장: 뜨삽<br>
지역: 대구> 두산동/수성못/지산<br>
업종: 세계음식 > 이태리레스토랑<br>
주소: 대구광역시 수성구 용학로 106-7<br>
TEL 053-764-1003
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/gd15.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-85px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/d16.png"> </td>
<td width="250">매장: 버들식당<br>
지역: 대구> 두류/내당/서문시장<br>
업종: 한국음식 > 곱창/양/대창/막창<br>
주소: 대구광역시 달서구 두류공원로28길 8<br>
TEL 053-656-1991
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/gd16.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
<div style= "border: 3px solid gray; float: left; width: 510; padding:15px; 0; margin:90px 350px; ">
<table>
<tr>
<td width="120"><img src="img/file/d17.png"> </td>
<td width="250">매장: 한상<br>
지역: 대구> 동성로/중앙로/종로<br>
업종: 한국음식 > 한정식<br>
주소: 대구광역시 중구 동성로6길 43<br>
TEL 053-424-4840
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/gd17.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-225px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/d18.jpg"> </td>
<td width="250">매장: 뺑드깜빠뉴<br>
지역: 대구> 시지<br>
업종: 세계음식 > 베이커리/제과점<br>
주소: 대구광역시 수성구 달구벌대로652길 69-5<br>
TEL 053-792-0445
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/gd18.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
<div style= "border: 3px solid gray; float: left; width: 510; padding:15px; 0; margin:-50px 350px; ">
<table>
<tr>
<td width="120"><img src="img/file/d19.jpg"> </td>
<td width="250">매장: 원조북성로우동불고기<br>
지역: 대구> 동성로/중앙로/종로<br>
업종: 한국음식 > 불고기/갈비살/차돌박이<br>
주소: 대구광역시 중구 서성로 72<br>
TEL 010-9989-9199
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/gd19.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-85px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/d20.jpg"> </td>
<td width="250">매장: 옛집식당<br>
지역: 대구> 경북대/비산/침산<br>
업종: 한국음식 > 해장국/국밥<br>
주소: 대구광역시 중구 달성공원로6길 48-5<br>
TEL 053-554-4498
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/gd20.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 		
 		
 		
 		
 


				
					
					
				
					<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
					<script src="js/bootstrap.js"></script>

</body>
</html>
 