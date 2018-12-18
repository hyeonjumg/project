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
<td width="120"><img src="img/file/d_1.jpg"> </td>
<td width="250">매장: 왕관식당<br>
지역: 대전>대전역/은행/대흥/선화<br>
업종: 한국음식>비빔밥/돌솥밥/쌈밥<br>
주소: 대전광역시 동구 선화로196번길6<br>
TEL 042-221-1663</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/d1.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-225px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/d_2.jpg"> </td>
<td width="250">매장: 바로그집<br>
지역: 대전>대전역/은행/대흥/선화<br>
업종: 한국음식>떡볶이/순대/튀김/만두<br>
주소: 대전광역시 중구 중앙로 145 지하상가<br>
TEL 042-254-8925<br></td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/d2.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
<div style= "border: 3px solid gray; float: left; width: 510; padding:15px; 0; margin:-50px 350px; ">
<table>
<tr>
<td width="120"><img src="img/file/d_3.png"> </td>
<td width="250">매장: 꽁뚜<br>
지역: 대전>신탄진/회덕/대청호<br>
업종: 세계음식>중국음식<br>
주소: 대전광역시 대덕구 신탄진로36번길 111<br>
TEL 042-483-9999</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/d3.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-85px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/d_4.jpg"> </td>
<td width="250">매장: 설해돈<br>
지역: 대전>둔산/시청<br>
업종: 세계음식>돈가스<br>
주소: 대전광역시 서구 둔산동 993 라온채빌딩<br>
TEL 042-484-1119</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/d4.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
<div style= "border: 3px solid gray; float: left; width: 510; padding:15px; 0; margin:90px 350px; ">
<table>
<tr>
<td width="120"><img src="img/file/d_5.jpg"> </td>
<td width="250">매장: 살구나무집<br>
지역: 대전>탄방/용문/가장/갈마<br>
업종: 한국음식>한정식<br>
주소: 대전광역시 서구 용문동 226-9<br>
TEL 042-526-0326</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/d5.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-225px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/d_6.jpg"> </td>
<td width="250">매장: 복수분식<br>
지역: 대전>대전역/은행/대흥/선화<br>
업종: 한국음식>라면/칼국수/국수/수제비<br>
주소: 대전광역시 중구 충무로 107번길 52
TEL 042-253-6518</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/d6.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
<div style= "border: 3px solid gray; float: left; width: 510; padding:15px; 0; margin:-50px 350px; ">
<table>
<tr>
<td width="120"><img src="img/file/d_7.jpg"> </td>
<td width="250">매장: 서울치킨<br>
지역: 대전>대전역/은행/대흥/선화<br>
업종: 한국음식>치킨/훈제<br>
주소: 대전광역시 중구 중앙로112번길 34
TEL 042-252-7333</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/d7.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-85px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/d_8.jpg"> </td>
<td width="250">매장: 홀리크로스<br>
지역: 대전>둔산/시청<br>
업종: 세계음식>카페/커피숍<br>
주소: 대전광역시 서구 둔산로 25<br>
TEL 042-485-4688</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/d8.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
<div style= "border: 3px solid gray; float: left; width: 510; padding:15px; 0; margin:90px 350px; ">
<table>
<tr>
<td width="120"><img src="img/file/d_9.jpg"> </td>
<td width="250">매장: 초록지붕<br>
지역: 대전>대전역/은행/대흥/선화<br>
업종: 세계음식>카페/커피숍<br>
주소: 대전광역시 중구 보문로262번길 25<br>
TEL 042-226-4415</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/d9.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-225px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/d_10.png"> </td>
<td width="250">매장: 성심당<br>
지역: 대전>대전역/은행/대흥/선화<br>
업종: 세계음식>베이커리/제과점<br>
주소: 대전광역시 동구 중앙로 215 대전역<br>
TEL 042-220-4138</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/d10.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
<div style= "border: 3px solid gray; float: left; width: 510; padding:15px; 0; margin:-50px 350px; ">
<table>
<tr>
<td width="120"><img src="img/file/d_11.jpg"> </td>
<td width="250">매장: 더집<br>
지역: 대전>신탄진/회덕/대청호<br>
업종: 나이트라이프>막걸리/동동주<br>
주소: 대전광역시 중구 중앙로130번길 44<br>
TEL 042-257-3140</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/d11.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-85px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/d_12.png"> </td>
<td width="250">매장: 부여순대<br>
지역: 대전>가오/대동/판암<br>
업종: 한국음식>순대국<br>
주소: 대전광역시 동구 동부로 5-3<br>
TEL 042-282-3091</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/d12.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
<div style= "border: 3px solid gray; float: left; width: 510; padding:15px; 0; margin:90px 350px; ">
<table>
<tr>
<td width="120"><img src="img/file/d_13.jpg"> </td>
<td width="250">매장: 도안동감나무집<br>
지역: 대전>유성/노은<br>
업종: 한국음식>오리 훈제/구이/로스/탕<br>
주소: 대전광역시 유성구 복용동 368-1<br>
TEL 042-822-2366</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/d13.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-225px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/d_14.jpg"> </td>
<td width="250">매장: 토박이<br>
지역: 대전>대전역/은행/대흥/선화<br>
업종: 한국음식>닭볶음탕/닭갈비/닭발<br>
주소: 대전광역시 중구 중앙로156번길 41-9
TEL 042-252-3470</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/d14.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
<div style= "border: 3px solid gray; float: left; width: 510; padding:15px; 0; margin:-50px 350px; ">
<table>
<tr>
<td width="120"><img src="img/file/d_15.jpg"> </td>
<td width="250">매장: 모모스테이크<br>
지역: 대전>대전역/은행/대흥/선화<br>
업종: 세계음식>일본음식/초밥<br>
주소: 대전광역시 중구 대종로 480번길 29<br>
TEL 042-224-4395</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/d15.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-85px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/d_16.jpg"> </td>
<td width="250">매장: 병규돈가스<br>
지역: 대전>월평/만년<br>
업종: 세계음식>돈가스<br>
주소: 대전광역시 서구 만년남로 3번길 8-8
TEL 042-486-3929</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/d16.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
<div style= "border: 3px solid gray; float: left; width: 510; padding:15px; 0; margin:90px 350px; ">
<table>
<tr>
<td width="120"><img src="img/file/d_17.jpg"> </td>
<td width="250">매장: 토끼정 둔산점<br>
지역: 대전>둔산/시청<br>
업종: 세계음식>일본음식/초밥<br>
주소: 대전광역시 서구 대덕대로 226<br>
TEL 042-472-5585</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/d17.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-225px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/d_18.jpg"> </td>
<td width="250">매장: 더제이뷔페<br>
지역: 대전>연구단지/관평/테크노밸리<br>
업종: 세계음식>뷔페<br>
주소: 대전광역시 유성구 계롱로 55 유성자이<br>
TEL 042-254-8925<br></td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/d18.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
<div style= "border: 3px solid gray; float: left; width: 510; padding:15px; 0; margin:-50px 350px; ">
<table>
<tr>
<td width="120"><img src="img/file/d_19.jpg"> </td>
<td width="250">매장: 누오보나폴리<br>
지역: 대전>연구단지/관평/테크노밸리<br>
업종: 세계음식>이태리레스토랑<br>
주소: 대전광역시 유성구 농대로 15<br>
TEL 042-322-9582</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/d19.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-85px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/d_20.jpg"> </td>
<td width="250">매장: 한스랍스타<br>
지역: 대전>월평/만년<br>
업종: 세계음식>씨푸드<br>
주소: 대전광역시 서구 만년동 282<br>
TEL 042-864-3700</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/d20.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 		
 		
 		
 		
 


				
					
					
				
					<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
					<script src="js/bootstrap.js"></script>

</body>
</html>
 