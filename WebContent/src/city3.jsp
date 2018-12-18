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
<td width="120"><img src="img/file/i1.jpg"> </td>
<td width="250">매장: 황해해물칼국수<br>
지역: 인천> 영종도<br>
업종: 한국음식 > 라면/칼국수/국수/수제비<br>
주소: 인천광역시 중구 용유로21번길 3<br>
TEL 032-746-3017
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/gk1.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-230px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/i2.png"> </td>
<td width="250">매장: 해송쌈밥<br>
지역: 인천> 영종도<br>
업종: 한국음식 > 비빔밥/돌솥밥/쌈밥<br>
주소: 인천광역시 중구 공항서로 177<br>
TEL 032-747-0073
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/gk2.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
<div style= "border: 3px solid gray; float: left; width: 510; padding:15px; 0; margin:-50px 350px; ">
<table>
<tr>
<td width="120"><img src="img/file/i3.jpg"> </td>
<td width="250">매장: 정아식당<br>
지역: 인천> 부평<br>
업종: 한국음식 > 닭볶음탕/닭갈비/닭발<br>
주소: 인천광역시 부평구 산곡1동 170-1<br> 
TEL 032-513-1576<br>
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/gk3.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-85px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/i4.jpg"> </td>
<td width="250">매장: 부암갈비<br>
지역: 인천> 구월/간석/만수<br>
업종: 한국음식 > 돼지갈비/갈매기살<br>
주소: 인천광역시 남동구 용천로 149<br>
TEL 032-425-5538<br>
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/gk4.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
<div style= "border: 3px solid gray; float: left; width: 510; padding:15px; 0; margin:90px 350px; ">
<table>
<tr>
<td width="120"><img src="img/file/i5.png"> </td>
<td width="250">매장: 통꼬집<br>
지역: 인천> 송도<br>
업종: 한국음식 > 돼지갈비/갈매기살<br>
주소: 인천광역시 연수구 송도동 15-10<br>
TEL 032-831-9282
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/gk5.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-225px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/i6.jpg"> </td>
<td width="250">매장: 와규홀릭<br>
지역: 인천> 구월동<br>
업종: 세계음식 > 스테이크하우스<br>
주소: 인천광역시 남동구 구월1동 1474-2<br>
TEL 032-432-5070<br>
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/gk6.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
<div style= "border: 3px solid gray; float: left; width: 510; padding:15px; 0; margin:-50px 350px; ">
<table>
<tr>
<td width="120"><img src="img/file/i7.jpg"> </td>
<td width="250">매장: 트리플듀에<br>
지역: 인천> 송도<br>
업종: 세계음식 > 피자<br>
주소: 인천광역시 연수구 송도동 22-22 21<br>
TEL 070-7723-2323<br>
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/gk7.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-85px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/i8.jpg"> </td>
<td width="250">매장: 모녀떡볶이<br>
지역: 인천> 부평-문화의거리<br>
업종: 한국음식 > 떡볶이/순대/튀김/만두<br>
주소: 인천광역시 부평구 광장로 16<br>
TEL 032-504-9636
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/gk8.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
<div style= "border: 3px solid gray; float: left; width: 510; padding:15px; 0; margin:90px 350px; ">
<table>
<tr>
<td width="120"><img src="img/file/i9.jpg"> </td>
<td width="250">매장: 편가네된장<br>
지역: 인천> 강화도/석모도<br>
업종: 한국음식 > 비빔밥/돌솥밥/쌈밥<br>
주소: 인천광역시 강화군 가능포로89번길 11 편가네된장<br>
TEL 032-937-6479
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/gk9.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-225px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/i10.jpg"> </td>
<td width="250">매장: 학운정<br>
지역: 인천> 부평<br>
업종: 한국음식 > 비빔밥/돌솥밥/쌈밥<br>
주소: 인천광역시 서구 열우물로208번길 12<br>
TEL 032-584-8584
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/gk10.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
<div style= "border: 3px solid gray; float: left; width: 510; padding:15px; 0; margin:-50px 350px; ">
<table>
<tr>
<td width="120"><img src="img/file/i11.jpg"> </td>
<td width="250">매장: 스시애<br>
지역: 인천> 부평<br>
업종: 세계음식 > 일본음식/초밥<br>
주소: 인천광역시 부평구 부흥로 261<br>
TEL 032-506-5550
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/gk11.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-85px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/i12.jpg"> </td>
<td width="250">매장: 일미산장어숯불장어<br>
지역: 인천> 강화도/석모도<br>
업종: 한국음식 > 장어구이/꼼장어<br>
주소: 인천광역시 강화군 더리미길 2<br>
TEL 032-933-8585
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/gk12.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
<div style= "border: 3px solid gray; float: left; width: 510; padding:15px; 0; margin:90px 350px; ">
<table>
<tr>
<td width="120"><img src="img/file/i13.jpg"> </td>
<td width="250">매장: 아띠오아나폴리핏제리아<br>
지역: 인천> 송도<br>
업종: 세계음식 > 이태리레스토랑<br>
주소: 인천광역시 연수구 컨벤시아대로 69<br>
TEL 032-834-7222
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/gk13.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-225px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/i14.jpg"> </td>
<td width="250">매장: 신승반점<br>
지역: 인천> 동인천/차이나타운<br>
업종: 세계음식 > 중국음식<br>
주소: 인천광역시 중구 차이나타운로26번길<br>
TEL 032-762-9467
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/gk14.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
<div style= "border: 3px solid gray; float: left; width: 510; padding:15px; 0; margin:-50px 350px; ">
<table>
<tr>
<td width="120"><img src="img/file/i15.jpg"> </td>
<td width="250">매장:안승베이커리구월본점<br>
지역: 인천> 구월동<br>
업종: 세계음식 > 베이커리/제과점<br>
주소: 인천광역시 남동구 인주대로 664 메인프라자 2차<br>
TEL 032-463-0045
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/gk15.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-85px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/i16.jpg"> </td>
<td width="250">매장: 권오길손국수본점<br>
지역: 인천> 청라지구/검단<br>
업종: 한국음식 > 라면/칼국수/국수/수제비<br>
주소: 인천광역시 서구 검단로 789 권오길 손국수<br>
TEL 032-564-7541
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/gk16.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
<div style= "border: 3px solid gray; float: left; width: 510; padding:15px; 0; margin:90px 350px; ">
<table>
<tr>
<td width="120"><img src="img/file/i17.png"> </td>
<td width="250">매장: 가리비칼국수<br>
지역: 인천> 논현동<br>
업종: 한국음식 > 라면/칼국수/국수/수제비<br>
주소: 인천광역시 남동구 도림동 636-2<br>
TEL 032-432-0030
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/gk17.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-225px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/i18.jpg"> </td>
<td width="250">매장: 청해김밥<br>
지역: 인천> 주안/인하대<br>
업종: 한국음식 > 떡볶이/순대/튀김/만두<br>
주소: 인천광역시 미추홀구 경인로 414<br>
TEL 032-429-7212
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/gk18.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
<div style= "border: 3px solid gray; float: left; width: 510; padding:15px; 0; margin:-50px 350px; ">
<table>
<tr>
<td width="120"><img src="img/file/i19.jpg"> </td>
<td width="250">매장: 우리옥<br>
지역: 인천> 강화도/석모도<br>
업종: 한국음식 > 한정식<br>
주소: (지번) 인천광역시 강화군 강화읍 신문리 184-1<br>
TEL 032-934-2427
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/gk19.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-85px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/i20.jpg"> </td>
<td width="250">매장: 충남서산집<br>
지역: 인천> 강화도/석모도<br>
업종: 한국음식 > 해물탕/해물요리/꽃게<br>
주소: 인천광역시 강화군 중앙로 1200<br>
TEL 032-933-8403
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/gk20.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 		
 		
 		
 		
 


				
					
					
				
					<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
					<script src="js/bootstrap.js"></script>

</body>
</html>
 