<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<link href="https://fonts.googleapis.com/css?family=Gamja+Flower|Lobster" rel="stylesheet">


<title> 맛집 둘러보기!</title>
<style>

html,

body {

    margin:0;

    padding:0;

    height:100%;

}

#wrapper {

	position:relative;

    min-height:100%;

}

#header {

	height:70px;

    background:#ccc;
    

}

#container {

    padding:20px;

}

#footer {

    position:absolute;

    bottom:0;

    width:100%;

    height:70px;   

    background:#c5c6bb;
    
    font-family: 'Gamja Flower', cursive;
    
    font-size: 16px;
    
    font-weight:normal;
    
    

}


img {
width: 1400px;
height: 500px;
margin: 0 255px;
}
img.my {
width:180px;
height:180px;
}
h1 {
	font-family: 'Lobster', cursive;
	font-size:22px;
	font-weight:bold;
	text-align: center;
	padding: 30px 30px;
	
}

h3 {
	font-family: 'Gamja Flower', cursive;
	font-size:16px;
	font-weight:normal;
	text-align: center;
	padding: 30px 30px;
	
}


</style>
</head>
<body>
	<%
		String userID = null;
		if (session.getAttribute("userID") != null) {
			userID = (String) session.getAttribute("userID");
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
                <li class="active"><a href="main.jsp">홈</a></li>
                <li><a href="mobeom1.jsp">모범맛집</a></li>
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
 <img src = "img/main.jpg">
 <h1><i>RESTAURANTS</i></h1>
 <h3><i>맛집 웹사이트에 관해서는 본 사이트에서 음식,커피점,주류 등을 직접 판매하는 서비스가 진행이 되거나 진행이 되지않고 홈페이지 관리자가 국내에 있는 음식점을 대상으로 <br>
 운영이 되고 있는 매장이 있거나 폐점이 된 매장을 홈페이지 내 에서 회원들에게 알려주어 보다나은 음식점 이용을 할 수 있도록 도움을 드리는 서비스중 하나 입니다.<br>
 위치를 제대로 확인하여 음식점으로 이동을 할 수 있도록 GOOGLE지도 서비스도 함께 진행중이기에 이동하시는데 편리함을 제공합니다.</i></h3>
 
 

  <div id="footer">
   
 copyright @ HYEONJONNG + HYEONSUNG makeBCT Some Rights Reserved<br>
 This website has been diesigned based on the BC TOWN is the BLOGCOORS website buildong service brands<br>
 Developed directly from provides the thems and plug-ins. Powered by
  </div>

  




				
					<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
					<script src="js/bootstrap.js"></script>
					

</body>
</html>
 
