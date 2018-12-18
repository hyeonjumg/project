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
<td width="120"><img src="img/file/u_1.jpg"> </td>
<td width="250">매장: 더파티울산점<br>
지역: 울산>성남동/옥교동<br>
업종: 세계음식>뷔페<br>
주소: 울산광역시 중구 번영로 329 중앙시장<br>
TEL 052-241-5500</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/u1.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-225px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/u_2.png"> </td>
<td width="250">매장: 꼬꼬사우나찜닭삼산본점<br>
지역: 울산>삼산동<br>
업종: 한국음식>삼계탕/백숙/찜닭<br>
주소: 울산광역시 남구 삼산동 1522-3 2층<br>
TEL 052-268-8869</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/u2.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
<div style= "border: 3px solid gray; float: left; width: 510; padding:15px; 0; margin:-50px 350px; ">
<table>
<tr>
<td width="120"><img src="img/file/u_3.jpg"> </td>
<td width="250">매장: 달동테이블<br>
지역: 울산>달동<br>
업종: 세계음식>이태리레스토랑<br>
주소: 울산광역시 남구 왕생로 66<br>
TEL 052-227-0312</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/u3.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-85px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/u_4.jpg"> </td>
<td width="250">매장: 브라운시티<br>
지역: 울산>삼산동<br>
업종: 세계음식>패밀리레스토랑<br>
주소: 울산광역시 남구 삼산동 1526-9 18층<br>
TEL 052-265-3937</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/u4.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
<div style= "border: 3px solid gray; float: left; width: 510; padding:15px; 0; margin:90px 350px; ">
<table>
<tr>
<td width="120"><img src="img/file/u_5.png"> </td>
<td width="250">매장: 파스타올리브<br>
지역: 울산>신정동/야음동<br>
업종: 세계음식>이태리레스토랑<br>
주소: 울산광역시 남구 신정동 1128-1<br>
TEL 052-271-8433</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/u5.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-225px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/u_6.png"> </td>
<td width="250">매장: 카카오하루울산대학교점<br>
지역: 울산>울산대/무거동<br>
업종: 세계음식 > 카페/커피숍<br>
주소: 울산광역시 남구 대학로64번길 7-1<br>
TEL 070-7625-5175</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/u6.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
<div style= "border: 3px solid gray; float: left; width: 510; padding:15px; 0; margin:-50px 350px; ">
<table>
<tr>
<td width="120"><img src="img/file/u_7.jpg"> </td>
<td width="250">매장: 윤연당<br>
지역: 울산> 달동<br>
업종: 세계음식 > 베이커리/제과점<br>
주소: 울산광역시 남구 삼산로122번길 9-1<br>
TEL 052-236-5050</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/u7.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-85px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/u_8.jpg"> </td>
<td width="250">매장: 투썸플레이스울산간절곶점<br>
지역: 울산> 울주군<br>
업종: 세계음식>카페/커피숍<br>
주소: 울산광역시 울주군 간절곶1길 30-20<br>
TEL 052-239-3012</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/u8.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
<div style= "border: 3px solid gray; float: left; width: 510; padding:15px; 0; margin:90px 350px; ">
<table>
<tr>
<td width="120"><img src="img/file/u_9.jpg"> </td>
<td width="250">매장: OAZO<br>
지역: 울산> 성남동/옥교동<br>
업종: 세계음식>브런치<br>
주소: 울산광역시 중구 중앙길 130 <br>
TEL 052-246-5070
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/u9.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-225px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/u_10.jpg"> </td>
<td width="250">매장: 미락식당<br>
지역: 대전>울산> 성남동/옥교동<br>
업종: 한국음식 > 곱창/양/대창/막창<br>
주소: 울산광역시 중구 중앙길 100 <br>
TEL 052-245-7984
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/u10.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
<div style= "border: 3px solid gray; float: left; width: 510; padding:15px; 0; margin:-50px 350px; ">
<table>
<tr>
<td width="120"><img src="img/file/u_11.jpg"> </td>
<td width="250">매장: 욘주라멘<br>
지역: 울산> 성남동/옥교동<br>
업종: 세계음식 > 일본음식/초밥<br>
주소: 울산광역시 중구 중앙시장1길 3 <br>
TEL 052-243-4840</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/u11.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-85px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/u_12.png"> </td>
<td width="250">매장: 난스시<br>
지역: 울산> 삼산동<br>
업종: 세계음식 > 일본음식/초밥<br>
주소: 울산광역시 남구 정동로80번길 22 동천빌딩<br>
TEL 052-269-3548</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/u12.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
<div style= "border: 3px solid gray; float: left; width: 510; padding:15px; 0; margin:90px 350px; ">
<table>
<tr>
<td width="120"><img src="img/file/u_13.jpg"> </td>
<td width="250">매장: 롯데호텔울산도림<br>
지역: 울산>삼산동<br>
업종: 세계음식 > 중국음식<br>
주소: 울산광역시 남구 삼산동 1480-1 롯데호텔 24층<br>
TEL 052-960-4280</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/u13.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-225px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/u_14.jpg"> </td>
<td width="250">매장: 쿠지라<br>
지역: 울산> 성남동/옥교동<br>
업종: 세계음식 > 일본음식/초밥<br>
주소: 울산광역시 중구 중앙시장길 2-5<br>
TEL 010-9339-5046</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/u14.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
<div style= "border: 3px solid gray; float: left; width: 510; padding:15px; 0; margin:-50px 350px; ">
<table>
<tr>
<td width="120"><img src="img/file/u_15.jpg"> </td>
<td width="250">매장: 남해꽃게탕<br>
지역: 울산> 삼산동<br>
업종: 한국음식 > 해물탕/해물요리/꽃게<br>
주소: 울산광역시 남구 돋질로302번길 17 <br>
TEL 052-276-0576
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/u15.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-85px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/u_16.jpg"> </td>
<td width="250">매장: 송강정<br>
지역: 울산> 삼산동<br>
업종: 한국음식 > 한정식<br>
주소: 울산광역시 남구 삼신로 52<br>
TEL 052-258-6633</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/u16.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
<div style= "border: 3px solid gray; float: left; width: 510; padding:15px; 0; margin:90px 350px; ">
<table>
<tr>
<td width="120"><img src="img/file/u_17.png"> </td>
<td width="250">매장: 무주골장어<br>
지역: 울산> 병영/반구/성안<br>
업종: 한국음식 > 장어구이/꼼장어<br>
주소: 울산광역시 중구 성안1길 155-6 <br>
TEL 052-243-2842</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/u17.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-225px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/u_18.jpg"> </td>
<td width="250">매장: 원터가든<br>
지역: 울산> 울주군<br>
업종: 한국음식 > 오리 훈제/구이/로스/탕<br>
주소: 울산광역시 울주군 웅촌로 642-17 <br>
TEL 052-225-3277
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/u18.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
<div style= "border: 3px solid gray; float: left; width: 510; padding:15px; 0; margin:-50px 350px; ">
<table>
<tr>
<td width="120"><img src="img/file/u_19.jpg"> </td>
<td width="250">매장: 기와집숯불고기<br>
지역: 울산> 울주군<br>
업종: 한국음식 > 꽃등심/등심/육회<br>
주소: 울산광역시 울주군 두동면 539-1<br>
TEL 052-262-7288
</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/u19.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 <div style="border: 3px solid gray; float: left; width: 510; padding:15px 10px; margin:-85px 915px; ">
<table>
<tr>
<td width="120"><img src="img/file/u_20.jpg"> </td>
<td width="250">매장: 북경통닭<br>
지역: 울산> 일산해수욕장<br>
업종: 한국음식 > 치킨/훈제<br>
주소: 울산광역시 동구 전하동 300-264<br>
TEL 052-233-0880</td>
<td align="center"><input type="button" value="Map View" onClick="window.open('google/u20.jsp')"><br><br>
<input type="button" value="Website" onClick="window.open('http://www.santa-lucia.co.kr/')">
</td>
</tr>
</table>
</div>
 		
 		
 		
 		
 


				
					
					
				
					<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
					<script src="js/bootstrap.js"></script>

</body>
</html>
 