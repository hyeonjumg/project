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
   height: 250px;
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
  <img src="img/srt12.png" class="myImage"/>
<hr width =50% color="gray" align="left" size=5/>
<h3> 매장 명 : 해운대소문난암소갈비집</h3>
<h4>1964년 문을 열어 2대째 이어져 온 역사깊은 한우 전문점이다. 독특한 양념으로 순수 한우고기의 특성을<br>
 최대한 살려 부드럽고 구수한 맛으로 해운대 갈비의 명성을 떨친 원조 해운대 갈비집이다. 한옥을 개조한 곳으로,<br>
  독립된 공간이 확보되어 있어 차분한 분위기에서 식사가 가능하며 단체 모임으로 방문하기에도 좋은 곳이다. <br>
  암소갈비를 전문으로 하고 있으며 양념 갈비, 생갈비 등이 인기 메뉴이며 특히 생갈비는 한정 판매이기 때문에 미리<br>
   예약하지 않으면 맛보기 힘들다. 고기를 어느정도 먹은 후에는 이 곳의 시그니처인 감자사리를 추가해 먹는 것을 추천한다. </h4>
<input type="button" value="CLICK" onClick="window.open('http://www.해운대소문난암소갈비.kr/')">
<input type="button" value="BACK" onClick="location.href='restr.jsp'"> 
<hr width =50% color="gray" align="left" size=5/>
  
 
  </div>

 		
				
					
					
				
					<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
					<script src="js/bootstrap.js"></script>

</body>
</html>