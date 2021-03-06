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
<link href="https://fonts.googleapis.com/css?family=Gamja+Flower|Lobster" rel="stylesheet">

<title> 맛집 둘러보기!</title>
<style type="text/css">
	a, a:hover {
		color: #000000;
		text-decoration: none;
	}
	
.intro{
  width:100%;
  height:30px;
}
.intro h1{
  font-family:'Oswald', sans-serif;
  letter-spacing:2px;
  font-weight:bold;
  font-size:14px;
  color:#222;
  text-align:center;
  margin-top:10px;
}
.intro a{
  color:#e74c3c;
  font-weight:bold;
  letter-spacing:0;
}
.intro img{
  width:180px;
  heght:180px;
  margin-left:5px;
  margin-right:5px;
  position:relative;
  top:5px;
}
img {
width:180px;
height:180px;
}

*{margin:0;padding:0;box-sizing:border-box;-webkit-box-sizing:border-box;-moz-box-sizing:border-box;}
#container{
  width:875px;
  height:230px;
  margin:50px auto;
}
.button-1{
  width:180px;
  height:180px;
  border:10px solid #34495e;
  float:left;
  text-align:center;
  cursor:pointer;
  position:relative;
  box-sizing:border-box;
  overflow:hidden;
  margin:0 0 40px 0;
}
.button-1 a{
  font-family:'Oswald', sans-serif;
  font-size:14px;
  color:#34495e;
  text-decoration:none;
  line-height:180px;
  transition:all .5s ease;
  z-index:2;
  position:relative;
}
.eff-1{
  width:180px;
  height:180px;
  top:-150px;
  background:#34495e;
  position:absolute;
  transition:all .5s ease;
  z-index:1;
}
.button-1:hover .eff-1{
  top:0;
}
.button-1:hover a{
  color:#fff;
}

.button-2{
  width:180px;
  height:180px;
  border:10px solid #34495e;
  float:left;
  text-align:center;
  cursor:pointer;
  position:relative;
  box-sizing:border-box;
  overflow:hidden;
  margin:0 0 40px 50px;
}
.button-2 a{
  font-family:'Oswald', sans-serif;
  font-size:14px;
  color:#34495e;
  text-decoration:none;
  line-height:180px;
  transition:all .5s ease;
  z-index:2;
  position:relative;
}
.eff-2{
  width:180px;
  height:180px;
  top:-150px;
  background:#34495e;
  position:absolute;
  transition:all .5s ease;
  z-index:1;
}
.button-2:hover .eff-2{
  top:0;
}
.button-2:hover a{
  color:#fff;
}

.button-3{
  width:180px;
  height:180px;
  border:10px solid #34495e;
  float:left;
  text-align:center;
  cursor:pointer;
  position:relative;
  box-sizing:border-box;
  overflow:hidden;
  margin:0 0 40px 40px;
}
.button-3 a{
  font-family:'Oswald', sans-serif;
  font-size:14px;
  color:#34495e;
  text-decoration:none;
  line-height:180px;
  transition:all .5s ease;
  z-index:2;
  position:relative;
}
.eff-3{
  width:180px;
  height:180px;
  top: -150px;
  background:#34495e;
  position:absolute;
  transition:all .5s ease;
  z-index:1;
}
.button-3:hover .eff-3{
  top:0;
}
.button-3:hover a{
  color:#fff;
}

.button-4{
  width:180px;
  height:180px;
  border:10px solid #34495e;
  float:left;
  text-align:center;
  cursor:pointer;
  position:relative;
  box-sizing:border-box;
  overflow:hidden;
  margin:0 0 40px 50px;
}
.button-4 a{
  font-family:'Oswald', sans-serif;
  font-size:14px;
  color:#34495e;
  text-decoration:none;
  line-height:180px;
  transition:all .5s ease;
  z-index:2;
  position:relative;
}
.eff-4{
  width:180px;
  height:180px;
  top:-150px;
  background:#34495e;
  position:absolute;
  transition:all .5s ease;
  z-index:1;
}
.button-4:hover .eff-4{
  top:0;
}
.button-4:hover a{
  color:#fff;
}

.button-5{
  width:180px;
  height:180px;
  border:10px solid #34495e;
  float:left;
  text-align:center;
  cursor:pointer;
  position:relative;
  box-sizing:border-box;
  overflow:hidden;
  margin:0 0 40px 0;
}
.button-5 a{
  font-family:'Oswald', sans-serif;
  font-size:14px;
  color:#34495e;
  text-decoration:none;
  line-height:180px;
  transition:all .5s ease;
  z-index:2;
  position:relative;
}
.eff-5{
  width:180px;
  height:180px;
  top:-150px;
  background:#34495e;
  position:absolute;
  transition:all .5s ease;
  z-index:1;
}
.button-5:hover .eff-5{
  top:0;
}
.button-5:hover a{
  color:#fff;
}
.button-6{
  width:180px;
  height:180px;
  border:10px solid #34495e;
  float:left;
  text-align:center;
  cursor:pointer;
  position:relative;
  box-sizing:border-box;
  overflow:hidden;
  margin:0 0 40px 50px;
}
.button-6 a{
  font-family:'Oswald', sans-serif;
  font-size:14px;
  color:#34495e;
  text-decoration:none;
  line-height:180px;
  transition:all .5s ease;
  z-index:2;
  position:relative;
}
.eff-6{
  width:180px;
  height:180px;
  top:-150px;
  background:#34495e;
  position:absolute;
  transition:all .5s ease;
  z-index:1;
}
.button-6:hover .eff-6{
  top:0;
}
.button-6:hover a{
  color:#fff;
}

.button-7{
  width:180px;
  height:180px;
  border:10px solid #34495e;
  float:left;
  text-align:center;
  cursor:pointer;
  position:relative;
  box-sizing:border-box;
  overflow:hidden;
  margin:0 0 40px 50px;
}
.button-7 a{
  font-family:'Oswald', sans-serif;
  font-size:14px;
  color:#34495e;
  text-decoration:none;
  line-height:180px;
  transition:all .5s ease;
  z-index:2;
  position:relative;
}
.eff-7{
  width:180px;
  height:180px;
  top: -150px;
  position:absolute;
  transition:all .5s ease;
  z-index:1;
  box-sizing:border-box;
}
.button-7:hover .eff-7{
  top:0;
}
.button-7:hover a{
  color:#fff;
}

.button-8{
  width:180px;
  height:180px;
  border:10px solid #34495e;
  float:left;
  text-align:center;
  cursor:pointer;
  position:relative;
  box-sizing:border-box;
  overflow:hidden;
  margin:0 0 40px 50px;
}
.button-8 a{
  font-family:'Oswald', sans-serif;
  font-size:14px;
  color:#34495e;
  text-decoration:none;
  line-height:180px;
  transition:all .5s ease;
  z-index:2;
  position:relative;
}
.eff-8{
  width:180px;
  height:180px;
  top: -150px;
  position:absolute;
  transition:all .5s ease;
  z-index:1;
  
}
.button-8:hover .eff-8{
  top:0;
}
.button-8:hover a{
  color:#fff;
}

h1{
  font-family: 'Oswald', sans-serif;
  font-weight:bold;
  font-size:20px;
  color:#34495e;
  text-align:left;
  margin:0 auto 40px 0;
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
h5, h6 {
	font-family: 'Oswald', sans-serif;
    color: black;
    font-weight:normal;
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
    
    margin: -50px 0;
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
  <br><br>
  <div class="button-1">
    <div class="eff-1">
    <img src="img/stt.jpg">
    </div>
    <a href="srt1.jsp"><i>SMT SEOUL</i> </a>
  
  </div>
  <div class="button-4">
    <div class="eff-4">
    <img src="img/srt2.jpg">
    </div>
    <a href="str2.jsp"><i> 로코 8</i> </a>
  </div>
  <div class="button-2">
    <div class="eff-2">
    <img src="img/str3.jpg">
    </div>
    <a href="str3.jsp"><i>아티초코 0125</i> </a>
  </div>
  <div class="button-3">
    <div class="eff-3">
    <img src="img/str4.jpg">
    </div>
    <a href="str4.jsp"><i>팔레드고몽</i> </a>
  </div>
  <div class="button-5">
    <div class="eff-5">
    <img src="img/str5.png">
    </div>
    <a href="str5.jsp"><i>헤아릴</i></a>
  </div>
  <div class="button-6">
    <div class="eff-6">
    <img src="img/str6.png">
    </div>
    <a href="str6.jsp"><i>올리브장작</i></a>
  </div>
  <div class="button-7">
    <div class="eff-7">
    <img src="img/str7.png">
    </div>
    <a href="str7.jsp"><i>비토</i></a>
  </div>
  <div class="button-8">
    <div class="eff-8">
    <img src="img/str8.png">
    </div>
    <a href="str8.jsp"><i>숨비소리</i></a>
  </div>
  <div class="button-5">
    <div class="eff-5">
    <img src="img/str9.jpg">
    </div>
    <a href="str9.jsp"><i>싼타루치아</i></a>
  </div>
  <div class="button-6">
    <div class="eff-6">
    <img src="img/str10.jpg">
    </div>
    <a href="str10.jsp"><i>트리플듀에</i></a>
  </div>
  <div class="button-7">
    <div class="eff-7">
    <img src="img/str11.jpg">
    </div>
    <a href="str11.jsp"><i>온더블랙</i></a>
  </div>
  <div class="button-8">
    <div class="eff-8">
    <img src="img/srt12.png">
    </div>
    <a href="str12.jsp"><i>해운대소문난암소갈비집</i></a>
  </div>
</div>
 		
				 <div id="footer">
   
 copyright @ HYEONJONNG + HYEONSUNG makeBCT Some Rights Reserved<br>
 This website has been diesigned based on the BC TOWN is the BLOGCOORS website buildong service brands<br>
 Developed directly from provides the thems and plug-ins. Powered by
  </div>
					
					
				
					<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
					<script src="js/bootstrap.js"></script>

</body>
</html>
