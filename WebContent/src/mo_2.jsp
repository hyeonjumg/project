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
   height: 240px;
   width: 250px;
   padding: 15px 15px;
            margin: -10px 15px;
   font-family: Veranda;
}

h4{
  font-family: 'Oswald', sans-serif;
  font-weight:normal;
  font-size:12px;
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
                <li class="active"><a href="mobeom1.jsp">모범맛집</a></li>
                <li><a href="restr.jsp">레스토랑</a></li>
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
  <h1><i>모범맛집</i></h1>
  <img src="img/mo_2.jpg" class="myImage"/>
<hr width =50% color="gray" align="left" size=5/>
<h3> 매장 명 : 금수복국</h3>
<h4>해운대에 위치한 46년 전통의 뚝배기 복국 원조이자 복국/ 복요리 전문점이다. 모든 찬류 및 장류, 김치, 양념 등을<br>
 직접 담궈 사용하는 곳으로 믿고 먹을 수 있다. 담백하고 시원한 맑은 국물의 복지리가 대표메뉴. 콩나물과 미나리<br>
  등이 국물 맛을 더욱 깔끔하고 시원하게 해주어 해장하기에도 좋다. 살이 통통하게 오른 복어의 쫄깃한 식감도 인상적<br>
   복 지리가 싱겁거나 얼큰한 국물을 원하는 사람들을 위해 양념장이 별도로 마련되어있다.<br></h4>
<input type="button" value="CLICK" onClick="window.open('http://ksbog.fordining.kr/')">
<input type="button" value="BACK" onClick="location.href='mobeom1.jsp'"> 
<hr width =50% color="gray" align="left" size=5/>
  
 
  </div>

 		
				
					
					
				
					<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
					<script src="js/bootstrap.js"></script>

</body>
</html>