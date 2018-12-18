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
<td width="120"><img src="img/file/z_1.jpg"> </td>
<td width="250">매장: 길거리야한옥마을점<br>
지역: 전북> 전주-한옥마을<br>
업종: 세계음식 > 패스트푸드<br>
주소: 전라북도 전주시 완산구 교동 267-2<br>
TEL 063-286-5533</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('http://www.santa-lucia.co.kr/')"><br><br>
<input type="button" value="Website" onClick="window.open('google/j1.jsp')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-225px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/z_2.jpg"> </td>
<td width="250">매장: 차녀<br>
지역: 전북> 전주-전주객사<br>
업종: 세계음식 > 이태리레스토랑<br>
주소: 전라북도 전주시 완산구 중앙동 2가 29-2번지<br>
TEL 063-285-0500
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/j2.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
<div style= "border: 3px solid gray; float: left; width: 510; padding:15px; 0; margin:-50px 350px; ">
<table>
<tr>
<td width="120"><img src="img/file/z_3.png"> </td>
<td width="250">매장: 프리모파스타<br>
지역: 전북> 전주시<br>
업종: 세계음식 > 패밀리레스토랑<br>
주소: 전라북도 전주시 완산구 효자동3가 1527-7<br>
TEL 063-225-6688
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/j3.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-85px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/z_4.jpg"> </td>
<td width="250">매장: 리스토란테콜리<br>
지역: 전북> 전주시<br>
업종: 세계음식 > 이태리레스토랑<br>
주소: 전라북도 전주시 완산구 효자동3가 1627-1<br>
TEL 063-221-2226
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/j4.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
<div style= "border: 3px solid gray; float: left; width: 510; padding:15px; 0; margin:90px 350px; ">
<table>
<tr>
<td width="120"><img src="img/file/z_5.jpg"> </td>
<td width="250">매장: 맘스브레드<br>
지역: 전북> 전주시<br>
업종: 세계음식 > 베이커리/제과점<br>
주소: 전라북도 전주시 완산구 효자동2가 1318-3<br>
TEL 063-225-1108
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/j5.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-225px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/z_6.jpg"> </td>
<td width="250">매장: PNB풍년제과본점<br>
지역: 전북> 전주-한옥마을<br>
업종: 세계음식 > 베이커리/제과점<br>
주소: 전라북도 전주시 완산구 경원동1가 40-5<br>
TEL 063-285-6666
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/j6.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
<div style= "border: 3px solid gray; float: left; width: 510; padding:15px; 0; margin:-50px 350px; ">
<table>
<tr>
<td width="120"><img src="img/file/z_7.jpg"> </td>
<td width="250">매장: 1723<br>
지역: 전북> 전주-한옥마을<br>
업종: 세계음식 > 카페/커피숍<br>
주소: 전라북도 전주시 완산구 교동 98-2<br>
TEL 063-288-1723
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/j7.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-85px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/z_8.jpg"> </td>
<td width="250">매장: 촌놈의손맛<br>
지역: 전북> 전주-한옥마을<br>
업종: 세계음식 > 일본음식/초밥<br>
주소: 전라북도 전주시 완산구 은행로 65-3 <br>
TEL 063-535-5555
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/j8.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
<div style= "border: 3px solid gray; float: left; width: 510; padding:15px; 0; margin:90px 350px; ">
<table>
<tr>
<td width="120"><img src="img/file/z_9.png"> </td>
<td width="250">매장: 아프로<br>
지역: 전북> 전주시<br>
업종: 세계음식 > 이자까야<br>
주소: 전라북도 전주시 완산구 효자동3가 1541-9<br>
TEL 063-227-5799
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/j9.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-225px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/z_10.jpg"> </td>
<td width="250">매장: 옛촌막걸리<br>
지역: 전북> 전주시<br>
업종: 나이트라이프 > 막걸리/동동주<br>
주소: 전라북도 전주시 완산구 서신동 843-16<br>
TEL 063-272-9992
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/j10.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
<div style= "border: 3px solid gray; float: left; width: 510; padding:15px; 0; margin:-50px 350px; ">
<table>
<tr>
<td width="120"><img src="img/file/z_11.jpg"> </td>
<td width="250">매장: 한옥전통수제떡갈비<br>
지역: 전북> 전주-한옥마을<br>
업종: 한국음식 > 돼지갈비/갈매기살<br>
주소: 전라북도 전주시 완산구 풍남동1가 23-1<br>
TEL 063-286-6869
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/j11.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-85px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/z_12.jpg"> </td>
<td width="250">매장: 락원가든<br>
지역: 전북> 김제<br>
업종: 한국음식 > 닭볶음탕/닭갈비/닭발<br>
주소: 전라북도 김제시 금산면 금산리 471-1<br>
TEL 063-543-3738
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/j12.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>

 		
 		
 		
 		
 


				
					
					
				
					<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
					<script src="js/bootstrap.js"></script>

</body>
</html>
 