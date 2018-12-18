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
<td width="120"><img src="img/file/g_1.jpg"> </td>
<td width="250">매장: 카페폴앤메리<br>
지역: 강원> 강릉시-경포/안목카페거리<br>
업종: 세계음식 > 햄버거<br>
주소: 강원 강릉시 창해로350번길 33<br>
TEL 033-653-2354</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/g_1.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-225px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/g_2.png"> </td>
<td width="250">매장: 산토리니카페레스토랑<br>
지역: 강원> 춘천시<br>
업종: 세계음식 > 이태리레스토랑<br>
주소: 강원도 춘천시 동면 장학리 144-16<br>
TEL 033-242-3010</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/g_2.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
<div style= "border: 3px solid gray; float: left; width: 510; padding:15px; 0; margin:-50px 350px; ">
<table>
<tr>
<td width="120"><img src="img/file/g_3.jpg"> </td>
<td width="250">매장: 파머스키친<br>
지역: 강원> 양양<br>
업종: 세계음식 > 햄버거<br>
주소: 강원도 양양군 현남면 인구중앙길 95<br>
TEL 033-671-0955</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/g_3.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-85px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/g_4.jpg"> </td>
<td width="250">매장: 라꼬시나바이이성용<br>
지역: 강원> 강릉시-경포/안목카페거리<br>
업종: 세계음식 > 유로피언레스토랑<br>
주소: 강원도 강릉시 난설헌로 228-13<br>
TEL 033-652-1006
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/g_4.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
<div style= "border: 3px solid gray; float: left; width: 510; padding:15px; 0; margin:90px 350px; ">
<table>
<tr>
<td width="120"><img src="img/file/g_5.jpg"> </td>
<td width="250">매장: 리뜰리에김가<br>
지역: 강원> 원주시<br>
업종: 세계음식 > 베이커리/제과점<br>
주소: 강원도 원주시 행구로 314<br>
TEL 033-735-5677</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/g_5.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-225px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/g_6.jpg"> </td>
<td width="250">매장: 봉브레드<br>
지역: 강원> 속초<br>
업종: 세계음식 > 베이커리/제과점<br>
주소: 강원도 속초시 동해대로 4344-1<br>
TEL 033-633-4826</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/g_6.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
<div style= "border: 3px solid gray; float: left; width: 510; padding:15px; 0; margin:-50px 350px; ">
<table>
<tr>
<td width="120"><img src="img/file/g_7.png"> </td>
<td width="250">매장: 자매키친<br>
지역: 강원> 춘천시<br>
업종: 세계음식 > 카페/커피숍<br>
주소: 강원 춘천시 당간지주길 71-15<br>
TEL 033-251-2283</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/g_7.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-85px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/g_8.jpg"> </td>
<td width="250">매장: 대원당<br>
지역: 강원>춘천시<br>
업종: 세계음식 > 베이커리/제과점<br>
주소: 강원도 춘천시 퇴계로 183 <br>
TEL 033-254-8187
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/g_8.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
<div style= "border: 3px solid gray; float: left; width: 510; padding:15px; 0; margin:90px 350px; ">
<table>
<tr>
<td width="120"><img src="img/file/g_9.jpg"> </td>
<td width="250">매장: 카페 나폴리아<br>
지역: 강원>속초<br>
업종: 세계음식>카페/커피숍<br>
주소: 강원도 속초시 장사동 477<br>
TEL 033-638-7007
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/g_9.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-225px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/g_10.jpg"> </td>
<td width="250">매장: 산토리니커피<br>
지역: 강원> 강릉시-경포/안목카페거리<br>
업종: 세계음식 > 카페/커피숍<br>
주소: 강원도 강릉시 견소동 5 <br>
TEL 033-653-0931
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/g_10.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
<div style= "border: 3px solid gray; float: left; width: 510; padding:15px; 0; margin:-50px 350px; ">
<table>
<tr>
<td width="120"><img src="img/file/g_11.jpg"> </td>
<td width="250">매장: 쉘리스<br>
지역: 강원>강릉시<br>
업종: 세계음식 > 카페/커피숍<br>
주소: 강원도 강릉시 사천면 사천진리 266-31 <br>
TEL 033-644-2355</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/g_11.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-85px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/g_12.jpg"> </td>
<td width="250">매장: 문화제과<br>
지역: 강원> 삼척/장호항<br>
업종: 세계음식 > 도넛<br>
주소: 강원도 삼척시 교가길 14 <br>
TEL 033-572-3100</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/g_12.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
<div style= "border: 3px solid gray; float: left; width: 510; padding:15px; 0; margin:90px 350px; ">
<table>
<tr>
<td width="120"><img src="img/file/g_13.jpg"> </td>
<td width="250">매장: 꼬삔이공방<br>
지역: 강원> 춘천시<br>
업종: 세계음식 > 베이커리/제과점<br>
주소: 강원도 춘천시 박사로 927 <br>
TEL 033-</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/g_13.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-225px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/g_14.jpg"> </td>
<td width="250">매장: 로쿄<br>
지역: 강원> 춘천시<br>
업종: 세계음식 > 카페/커피숍<br>
주소: 강원도 춘천시 옥천길54번길 23 <br>
TEL 033-</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/g_14.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
<div style= "border: 3px solid gray; float: left; width: 510; padding:15px; 0; margin:-50px 350px; ">
<table>
<tr>
<td width="120"><img src="img/file/g_15.jpg"> </td>
<td width="250">매장: 장금성<br>
지역: 강원> 원주시<br>
업종: 세계음식 > 중국음식<br>
주소: 강원도 원주시 판부면 금대리 1284-1 <br>
TEL 033-765-1267
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/g_15.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-85px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/g_16.jpg"> </td>
<td width="250">매장: 회영루<br>
지역: 강원> 춘천시<br>
업종: 세계음식 > 중국음식<br>
주소: 강원도 춘천시 낙원동 14-2<br>
TEL 033-254-3841</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/g_16.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
<div style= "border: 3px solid gray; float: left; width: 510; padding:15px; 0; margin:90px 350px; ">
<table>
<tr>
<td width="120"><img src="img/file/g_17.jpg"> </td>
<td width="250">매장: 엄지네포장마차<br>
지역: 강원> 강릉시<br>
업종: 나이트라이프 > 포장마차어<br>
주소: 강원도 강릉시 경강로2255번길 21 <br>
TEL 033-642-0178
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/g_17.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-225px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/g_18.jpg"> </td>
<td width="250">매장: 버드나무브루어리<br>
지역: 강원> 강릉시<br>
업종: 나이트라이프 > 맥주/호프<br>
주소: 강원도 강릉시 경강로 1961<br>
TEL 033-920-9380
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/g_18.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
<div style= "border: 3px solid gray; float: left; width: 510; padding:15px; 0; margin:-50px 350px; ">
<table>
<tr>
<td width="120"><img src="img/file/g_19.jpg"> </td>
<td width="250">매장: 싱글핀에일웍스<br>
지역: 강원> 양양<br>
업종: 나이트라이프 > 맥주/호프<br>
주소: 강원도 양양군 하조대2길 48-42 <br>
TEL 033-672-1155
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/g_19.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-85px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/g_20.jpg"> </td>
<td width="250">매장: 크래프트루트<br>
지역: 강원> 속초<br>
업종: 나이트라이프 > 맥주/호프<br>
주소: 강원도 속초시 관광로408번길 1 <br>
TEL 070-8872-1001</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/g_20.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 		
 		
 		
 		
 


				
					
					
				
					<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
					<script src="js/bootstrap.js"></script>

</body>
</html>
 