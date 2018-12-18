<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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

    background: #c5c6bb;
    
    font-family: 'Gamja Flower', cursive;
    
    font-size: 16px;
    
    font-weight:normal;
    
}
h3 {
	font-family: 'Oswald', sans-serif;
    color: black;
    font-size:22px;
    font-weight:normal;
 }
</style>
</head>
<body>
	<nav class="navbar navbar-default">
  <div class="navbar-header">
   <button type="button" class="navbar-toggle collapsed"
    data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
    aria-expanded="false">
    <span class="icon-bar"></span>
    <span class="icon-bar"></span>
    <span class="icon-bar"></span>
   </button>
   <a class="navbar-brand" href="index.jsp">맛집 웹사이트</a>
  </div>
  <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
    <ul class="nav navbar-nav">
                <li><a href="main.jsp">홈</a></li>
                <li><a href="mobeom1.jsp">모범맛집</a></li>
                <li><a href="restr.jsp">레스토랑</a></li>
                <li><a href="impor.jsp">해외음식</a></li>
                <li><a href="city.jsp">지역별맛집</a></li>
                <li><a href="board.jsp">공유게시판</a></li>
                <li><a href="custom.jsp">고객문의</a></li>
           </ul>
           <ul class="nav navbar-nav navbar-right" id="bs-example-navbar-collapse-1">
           <li class="dropdown">
           		<li class="active"><a href="login.jsp">LOGIN</a>
           		<li><a href="join.jsp">SIGN UP</a>
                    
            </ul>
                
  </div>
 </nav>
 <div class="container"></div>
           <div class="col-lg-4"></div>
           <div class="col-lg-4">         
           <br><br><br><br><br>
              
                <form method="post" action="loginAction.jsp">
                  <h3 style="text-align: left;"><i>LOGIN</i></h3>
                   <div class="form-group">
                    <input type="text" class="form-control1" placeholder="아이디" name="userID"  maxlength="30">
                      </div>
                     <div class="form-group">
                    <input type="password" class="form-control1" placeholder="비밀번호" name="userPassword"  maxlength="30">
                      </div>
                    
                     <input type="submit" class="btn btn-primary form-control1" value="로그인">
                     
                   
                 </form>
                            
        </div>       
      <div class="col-lg-4"></div>
    <div id="footer">
   
 copyright @ HYEONJONNG + HYEONSUNG makeBCT Some Rights Reserved<br>
 This website has been diesigned based on the BC TOWN is the BLOGCOORS website buildong service brands<br>
 Developed directly from provides the thems and plug-ins. Powered by
  </div>
   


				
					
					
				
					<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
					<script src="js/bootstrap.js"></script>

</body>
</html>
		
	
