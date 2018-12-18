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
<td width="120"><img src="img/file/k_1.png"> </td>
<td width="250">매장: 티룸바이11체스터필드웨이<br>
지역: 경북> 경주시<br>
업종: 세계음식 > 유로피언레스토랑<br>
주소: 경상북도 경주시 화랑로37번길 30-1 <br>
TEL 054-621-7045</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/kb1.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-225px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/k_2.jpg"> </td>
<td width="250">매장: 한미식당<br>
지역: 경북> 칠곡<br>
업종: 세계음식 > 햄버거<br>
주소: 경상북도 칠곡군 석전로 159 <br>
TEL 054-974-0390
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/kb2.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
<div style= "border: 3px solid gray; float: left; width: 510; padding:15px; 0; margin:-50px 350px; ">
<table>
<tr>
<td width="120"><img src="img/file/k_3.jpg"> </td>
<td width="250">매장: 시즈닝<br>
지역: 경북> 경주시-황남동카페거리<br>
업종: 세계음식 > 이태리레스토랑<br>
주소: 경상북도 경주시 첨성로99번길 25-2 <br>
TEL 054-774-7477
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/kb3.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-85px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/k_4.jpg"> </td>
<td width="250">매장: 987<br>
지역: 경북> 경주시-황남동카페거리<br>
업종: 세계음식 > 피자<br>
주소: 경상북도 경주시 포석로1092번길 26<br>
TEL 070-4007-1987
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/kb4.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
<div style= "border: 3px solid gray; float: left; width: 510; padding:15px; 0; margin:90px 350px; ">
<table>
<tr>
<td width="120"><img src="img/file/k_5.jpg"> </td>
<td width="250">매장: 엘토로원조구룡포과메기<br>
지역: 경북> 포항<br>
업종: 세계음식 > 씨푸드<br>
주소: 경북 포항시 북구 죽도로40번길 7-1<br>
TEL 010-5777-9855</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/kb5.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-225px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/k_6.jpg"> </td>
<td width="250">매장: 맘모스제과<br>
지역: 경북> 안동<br>
업종: 세계음식 > 베이커리/제과점<br>
주소: 경상북도 안동시 문화광장길 34 <br>
TEL 054-857-6000
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/kb6.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
<div style= "border: 3px solid gray; float: left; width: 510; padding:15px; 0; margin:-50px 350px; ">
<table>
<tr>
<td width="120"><img src="img/file/k_7.jpg"> </td>
<td width="250">매장: 슈만과클라라<br>
지역: 경북> 경주시<br>
업종: 세계음식 > 카페/커피숍<br>
주소: 경상북도 경주시 한빛길36번길 36-1<br>
TEL 054-749-9449
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/kb7.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-85px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/k_8.jpg"> </td>
<td width="250">매장: 정도너츠<br>
지역: 경북> 영주<br>
업종: 세계음식 > 베이커리/제과점<br>
주소: 경상북도 영주시 동양대로 6-1 가마솥뚝배기 <br>
TEL 054-636-0043
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/kb8.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
<div style= "border: 3px solid gray; float: left; width: 510; padding:15px; 0; margin:90px 350px; ">
<table>
<tr>
<td width="120"><img src="img/file/k_9.jpg"> </td>
<td width="250">매장: 미소머금고<br>
지역: 경북> 영주<br>
업종: 세계음식 > 베이커리/제과점<br>
주소: 경상북도 영주시 지천로 79 호치과의원<br>
TEL 054-638-1799
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/kb9.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-225px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/k_10.jpg"> </td>
<td width="250">매장: CAFE737<br>
지역: 경북> 경주시<br>
업종: 세계음식 > 카페/커피숍<br>
주소: 경상북도 경주시 원화로 189 <br>
TEL 054-741-0235
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/kb10.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
<div style= "border: 3px solid gray; float: left; width: 510; padding:15px; 0; margin:-50px 350px; ">
<table>
<tr>
<td width="120"><img src="img/file/k_11.jpg"> </td>
<td width="250">매장: 벨루스커피<br>
지역: 경북> 경주시<br>
업종: 세계음식 > 카페/커피숍<br>
주소: 경상북도 경주시 천군1길 8-5 <br>
TEL 070-7721-7208
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/kb11.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-85px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/k_12.jpg"> </td>
<td width="250">매장: 중국만두<br>
지역: 경북> 김천<br>
업종: 세계음식 > 중국음식<br>
주소: 경상북도 김천시 용머리5길 5 <br>
TEL 054-434-2581
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/kb12.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
<div style= "border: 3px solid gray; float: left; width: 510; padding:15px; 0; margin:90px 350px; ">
<table>
<tr>
<td width="120"><img src="img/file/k_13.jpg"> </td>
<td width="250">매장: 인디안참숯구이<br>
지역: 경북> 칠곡<br>
업종: 한국음식 > 오리 훈제/구이/로스/탕<br>
주소: 경상북도 칠곡군 기성7길 41 <br>
TEL 054-977-6869</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/kb13.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-225px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/k_14.jpg"> </td>
<td width="250">매장: 명실상감한우<br>
지역: 경북> 상주<br>
업종: 한국음식 > 꽃등심/등심/육회<br>
주소: 경상북도 상주시 영남제일로 1119-9 <br>
TEL 054-531-9911</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/kb14.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
<div style= "border: 3px solid gray; float: left; width: 510; padding:15px; 0; margin:-50px 350px; ">
<table>
<tr>
<td width="120"><img src="img/file/k_15.jpg"> </td>
<td width="250">매장: 장금성<br>
지역: 경북> 김천<br>
업종: 한국음식 > 돼지갈비/갈매기살<br>
주소: 경상북도 김천시 장터길 30 <br>
TEL 054-435-0011
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/kb15.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-85px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/k_16.jpg"> </td>
<td width="250">매장: 한우리가든<br>
지역: 경북> 경주시<br>
업종: 한국음식 > 꽃등심/등심/육회<br>
주소: 경상북도 경주시 숲머리길 218 <br>
TEL 054-771-9999
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/kb16.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
<div style= "border: 3px solid gray; float: left; width: 510; padding:15px; 0; margin:90px 350px; ">
<table>
<tr>
<td width="120"><img src="img/file/k_17.jpg"> </td>
<td width="250">매장: 안동유진찜닭<br>
지역: 경북> 안동<br>
업종: 한국음식 > 삼계탕/백숙/찜닭<br>
주소: 경상북도 안동시 번영1길 47 <br>
TEL 054-854-6019
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/kb17.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-225px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/k_18.jpg"> </td>
<td width="250">매장: 환여횟집<br>
지역: 경북> 포항<br>
업종: 한국음식 > 회<br>
주소: 경상북도 포항시 북구 해안로 189-1 <br>
TEL 054-251-8847
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/kb18.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
<div style= "border: 3px solid gray; float: left; width: 510; padding:15px; 0; margin:-50px 350px; ">
<table>
<tr>
<td width="120"><img src="img/file/k_19.jpg"> </td>
<td width="250">매장: 경주원조콩국<br>
지역: 경북> 경주시-황남동카페거리<br>
업종: 한국음식 > 한정식<br>
주소: 경상북도 경주시 첨성로 113 <br>
TEL 054-743-9644
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/kb19.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-85px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/k_20.jpg"> </td>
<td width="250">매장: 청포집<br>
지역: 경북> 예천<br>
업종: 한국음식 > 한정식<br>
주소: 경상북도 예천군 맛고을길 30 서원민물장어 <br>
TEL 054-655-0264
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/kb20.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 		
 		
 		
 		
 


				
					
					
				
					<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
					<script src="js/bootstrap.js"></script>

</body>
</html>
 