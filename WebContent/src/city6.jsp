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
<td width="120"><img src="img/file/g1.jpg"> </td>
<td width="250">매장: 넓으실<br>
지역: 광주> 광산/수완지구/첨단<br>
업종: 한국음식 > 한정식<br>
주소: 광주광역시 북구 대촌길6번길 20-6<br>
TEL 062-972-8201
</td>
<td align="center"><input type="button" value="Map View" value="Map View" onClick="window.open('google/gu1.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-225px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/g2.jpg"> </td>
<td width="250">매장: 옛날밥상<br>
지역: 광주> 봉선동/주월동<br>
업종: 한국음식 > 한정식<br>
주소: 광주광역시 남구 용대로119번길 6 옛날밥상<br>
TEL 062-653-7337
</td>
<td align="center"><input type="button" value="Map View" value="Map View" onClick="window.open('google/gu2.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
<div style= "border: 3px solid gray; float: left; width: 510; padding:15px; 0; margin:-50px 350px; ">
<table>
<tr>
<td width="120"><img src="img/file/g3.jpg"> </td>
<td width="250">매장: 타오<br>
지역: 광주> 광산/수완지구/첨단<br>
업종: 세계음식 > 이태리레스토랑<br>
주소: 광주광역시 광산구 임방울대로 327<br> 
TEL 062-955-2215
</td>
<td align="center"><input type="button" value="Map View" value="Map View" onClick="window.open('google/gu3.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-85px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/g4.jpg"> </td>
<td width="250">매장: 나정상회<br>
지역: 광주> 상무/화정/농성<br>
업종: 한국음식 > 돼지갈비/갈매기살<br>
주소: 광주광역시 서구 상무자유로 24<br>
TEL 062-944-1489
</td>
<td align="center"><input type="button" value="Map View" value="Map View" onClick="window.open('google/gu4.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
<div style= "border: 3px solid gray; float: left; width: 510; padding:15px; 0; margin:90px 350px; ">
<table>
<tr>
<td width="120"><img src="img/file/g5.jpg"> </td>
<td width="250">매장: 명선헌<br>
지역: 광주> 조선대/지산/산수<br>
업종: 한국음식 > 한정식<br>
주소: 광주광역시 동구 지호로127번길 11<br>
TEL 062-228-2942
</td>
<td align="center"><input type="button" value="Map View" value="Map View" onClick="window.open('google/gu5.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-225px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/g6.jpg"> </td>
<td width="250">매장: 거목한정식<br>
지역: 광주> 양림동<br>
업종: 한국음식 > 한정식<br>
주소: 광주광역시 남구 천변좌로364번길 3-6 거목한정식<br>
TEL 062-672-0333
</td>
<td align="center"><input type="button" value="Map View" value="Map View" onClick="window.open('google/gu6.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
<div style= "border: 3px solid gray; float: left; width: 510; padding:15px; 0; margin:-50px 350px; ">
<table>
<tr>
<td width="120"><img src="img/file/g7.png"> </td>
<td width="250">매장: 홍아네<br>
지역: 광주> 상무/화정/농성<br>
업종: 한국음식 > 한정식<br>
주소: 광주광역시 서구 마륵복개로150번길 7<br>
TEL 062-384-9401
</td>
<td align="center"><input type="button" value="Map View" value="Map View" onClick="window.open('google/gu7.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-85px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/g8.png"> </td>
<td width="250">매장: 금다연한정식<br>
지역: 광주> 상무/화정/농성<br>
업종: 한국음식 > 한정식<br>
주소: 광주광역시 서구 상무연하로 72 골든유토피아<br>
TEL 062-374-1000
</td>
<td align="center"><input type="button" value="Map View" value="Map View" onClick="window.open('google/gu8.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
<div style= "border: 3px solid gray; float: left; width: 510; padding:15px; 0; margin:90px 350px; ">
<table>
<tr>
<td width="120"><img src="img/file/g9.jpg"> </td>
<td width="250">매장: 베비에르<br>
지역: 광주> 금호동/풍암동<br>
업종: 세계음식 > 베이커리/제과점<br>
주소: 광주광역시 서구 풍암중앙로 37 그랜드프라자<br>
TEL 062-682-0696
</td>
<td align="center"><input type="button" value="Map View" value="Map View" onClick="window.open('google/gu9.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-225px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/g10.png"> </td>
<td width="250">매장: 유향<br>
지역: 광주> 광산/수완지구/첨단<br>
업종: 세계음식 > 중국음식<br>
주소: 광주광역시 광산구 수완로11번길 3<br>
TEL 062-954-9530
</td>
<td align="center"><input type="button" value="Map View" value="Map View" onClick="window.open('google/gu10.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
<div style= "border: 3px solid gray; float: left; width: 510; padding:15px; 0; margin:-50px 350px; ">
<table>
<tr>
<td width="120"><img src="img/file/g11.jpg"> </td>
<td width="250">매장: 연화식당<br>
지역: 광주> 상무/화정/농성<br>
업종: 한국음식 > 파전/모듬전/빈대떡<br>
주소: 광주광역시 서구 마륵복개로 147 아트빌<br>
TEL 062-384-1142
</td>
<td align="center"><input type="button" value="Map View" value="Map View" onClick="window.open('google/gu11.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-85px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/g12.jpg"> </td>
<td width="250">매장: 나주곰탕하얀집<br>
지역: 광주> 송정/하남<br>
업종: 한국음식 > 설렁탕/곰탕/도가니탕<br>
주소: 광주광역시 광산구 월곡산정로 89<br>
TEL 062-953-0893
</td>
<td align="center"><input type="button" value="Map View" value="Map View" onClick="window.open('google/gu12.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
<div style= "border: 3px solid gray; float: left; width: 510; padding:15px; 0; margin:90px 350px; ">
<table>
<tr>
<td width="120"><img src="img/file/g13.png"> </td>
<td width="250">매장: 조선옥<br>
지역: 광주> 봉선동/주월동<br>
업종: 한국음식 > 한정식<br>
주소: 광주광역시 남구 효덕로 105<br>
TEL 062-654-3322
</td>
<td align="center"><input type="button" value="Map View" value="Map View" onClick="window.open('google/gu13.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-225px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/g14.jpg"> </td>
<td width="250">매장: 온더블랙<br>
지역: 광주> 상무/화정/농성<br>
업종: 세계음식 > 스테이크하우스<br>
주소: 광주광역시 서구 상무공원로 12 인애빌딩<br>
TEL 062-226-5432
</td>
<td align="center"><input type="button" value="Map View" value="Map View" onClick="window.open('google/gu14.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
<div style= "border: 3px solid gray; float: left; width: 510; padding:15px; 0; margin:-50px 350px; ">
<table>
<tr>
<td width="120"><img src="img/file/g15.jpg"> </td>
<td width="250">매장: 시골집<br>
지역: 광주> 봉선동/주월동<br>
업종: 한국음식 > 돼지갈비/갈매기살<br>
주소: 광주광역시 남구 대남대로139번길 4-6 평화인테리어<br>
TEL 062-652-3082
</td>
<td align="center"><input type="button" value="Map View" value="Map View" onClick="window.open('google/gu15.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-85px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/g16.jpg"> </td>
<td width="250">매장: 송정떡갈비<br>
지역: 광주> 송정/하남<br>
업종: 한국음식 > 불고기/갈비살/차돌박이<br>
주소: 광주광역시 광산구 광산로29번길 1<br>
TEL 062-944-1439
</td>
<td align="center"><input type="button" value="Map View" value="Map View" onClick="window.open('google/gu16.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
<div style= "border: 3px solid gray; float: left; width: 510; padding:15px; 0; margin:90px 350px; ">
<table>
<tr>
<td width="120"><img src="img/file/g17.png"> </td>
<td width="250">매장: 명화식육식당<br>
지역: 광주> 광산/수완지구/첨단<br>
업종: 한국음식 > 찌개/전골/국/탕<br>
주소: 광주광역시 광산구 평동로 421<br>
TEL 062-943-7760
</td>
<td align="center"><input type="button" value="Map View" value="Map View" onClick="window.open('google/gu17.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-225px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/g18.png"> </td>
<td width="250">매장: 김강심칼국수<br>
지역: 광주> 금호동/풍암동<br>
업종: 한국음식 > 라면/칼국수/국수/수제비<br>
주소: 광주광역시 서구 회재로 841<br>
TEL 062-682-0801
</td>
<td align="center"><input type="button" value="Map View" value="Map View" onClick="window.open('google/gu18.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
<div style= "border: 3px solid gray; float: left; width: 510; padding:15px; 0; margin:-50px 350px; ">
<table>
<tr>
<td width="120"><img src="img/file/g19.jpg"> </td>
<td width="250">매장: 무진장떡볶이<br>
지역: 광주> 조선대/지산/산수<br>
업종: 한국음식 > 떡볶이/순대/튀김/만두<br>
주소: 광주광역시 동구 필문대로287번길 24-14<br>
TEL 062-232-8369
</td>
<td align="center"><input type="button" value="Map View" value="Map View" onClick="window.open('google/gu19.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-85px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/g20.jpg"> </td>
<td width="250">매장: 남가정<br>
지역: 광주> 조선대/지산/산수<br>
업종: 한국음식 > 한정식<br>
주소: 광주광역시 동구 지호로 137-7<br>
TEL 062-227-4114
</td>
<td align="center"><input type="button" value="Map View" value="Map View" onClick="window.open('google/gu20.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 		
 		
 		
 		
 


				
					
					
				
					<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
					<script src="js/bootstrap.js"></script>

</body>
</html>
 