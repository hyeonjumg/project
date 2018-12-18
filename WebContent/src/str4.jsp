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

<title> 맛집 둘러보기!</title>
<style type="text/css">
	a, a:hover {
		color: #000000;
		text-decoration: none;
	}
	



h1{
  font-family: 'Oswald', sans-serif;
  font-weight:bold;
  font-size:20px;
  color:#34495e;
  text-align:left;
  margin:0 auto 40px 20px;
}
h1:first-letter{
  color:#e74c3c;
  border-bottom:1px solid #e74c3c;
}
footer{
  position:absolute;
  width:100%;
  height:30px;
  border-top:1px solid #34495e;
  bottom:0;
  display:none;
}
footer h1{
  font-family: 'Oswald', sans-serif;
  font-weight:normal;
  font-size:14px;
  color:#34495e;
  text-align:left;
  margin-left:5%;
}
footer a{
  font-family: 'Oswald', sans-serif;
  font-weight:normal;
  font-size:14px;
  color:#34495e;
}
.myImage {
   float: left;
   height: 270px;
   width: 250px;
   padding: 15px 15px;
            margin: -10px 15px;
   font-family: Veranda;
}

h4{
  font-family: 'Oswald', sans-serif;
  font-weight:normal;
  font-size:13px;
  color:#34495e;
  text-align:left;
  margin:0 auto 40px 0;
  }
  
  h3{
  font-family: 'Oswald', sans-serif;
  font-weight:normal;
  font-size:15px;
  color:#fffff;
  text-align:left;
  margin:0 auto 40px 0;
}
   

a {
	color:#000000;
	text-decoration:none;
}
input[type=button] {
            background-color: orange;
            border: none;
            text-decoration: none;
            color: white;
            padding: 15px 15px;
            margin: -15px 15px;
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
                <li class="active"><a href="restr.jsp">레스토랑</a></li>
                <li><a href="impor.jsp">해외음식</a></li>
                <li><a href="city.jsp">지역별맛집</a></li>
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
 
	<div id="container">
  <h1><i>레스토랑</i></h1>
  <img src="img/str4.jpg" class="myImage"/>
<hr width =50% color="gray" align="left" size=5/>
<h3> 매장 명 : 팔레드고몽</h3>
<h4> 1990년부터 영업 중인 프렌치 레스토랑이다. 높은 나무들 사이로 보이는 외관은 신비로운 분위기를<br>
자아낸다. 고풍스러운 인테리어로 프로포즈 등 각종 기념일에 찾는 사람들이 많다. 메뉴는 단품 없이<br>
단일 코스로만 준비되며, 정통 프랑스 조리법에 기반을 두고 한국의 식재료를 이용한 요리를 선보인다.<br>
인기 코스 메뉴는 ‘이베리코 애저구이’다. 캐러맬 사과, 고구마 퓌레, 무화과 쳐트니 등을 함께 곁들여<br>
먹는 새끼 돼지요리다. 입안에서 살살 녹는 부드러운 맛을 느낄 수 있다. 1,000여 종 이상의 와인리스트를<br>
갖추고 있어 음식과 알맞은 와인을 페어링해 즐기기 좋다. .</h4>
<input type="button" value="CLICK" onClick="window.open('http://palaisdegaumont.modoo.at/')">
<input type="button" value="BACK" onClick="location.href='restr.jsp'"> 
<hr width =50% color="gray" align="left" size=5/>
  
 
  </div>

 		
				
					
					
				
					<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
					<script src="js/bootstrap.js"></script>

</body>
</html>