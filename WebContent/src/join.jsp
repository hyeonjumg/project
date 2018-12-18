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

    background:#c5c6bb;
    
    font-family: 'Gamja Flower', cursive;
    
    font-size: 16px;
    
    font-weight:normal;
    
    

}

h4{
  font-family: 'Oswald', sans-serif;
  font-weight:bold;
  font-size:20px;
  color:#34495e;
  text-align:left;
  margin:20px auto 30px 0;
}
h5{
  font-family: 'Oswald', sans-serif;
  font-weight:normal;
  font-size:12px;
  color:#34495e;
  text-align:center;
  
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
           		<li><a href="login.jsp">LOGIN</a>
           		<li class="active"><a href="join.jsp">SIGN UP</a>
                    
            </ul>
                
  </div>
 </nav>
	<div class="container">
		<form method="post" action="joinAction.jsp">
			<h4><i>회원가입</i></h4>
			<table class="table table-bordered table-hover " style="text-align: center; border: 1px solid #ddd0">
				
					<tr>
						<td style="width: 70px;"><h5>아이디</h5></td>
						<td>
						 <input type="text" class="form-control" name="userID" maxLength="10"></td>
					</tr>
					<tr>
						<td style="width: 80px;"><h5>비밀번호</h5></td>
						<td colspan="2">
						 <input type="password" class="form-control" name="userPassword" maxLength="20"></td>
						
					</tr>
					<tr>
						<td style="width: 70px;"><h5>이름</h5></td>
						<td colspan="2"><input type="text" class="form-control" name="userName" maxLength="20"></td>
						
					</tr>
					
						
						<tr>
						<td style="width: 70px;"><h5>성별</h5></td>
						<td colspan="2">
						<div class="form-group" style="text-align:center"></div>	
						
							<label class="btn btn-primary active">
								<input type="radio" name="userGender" autocomplete="off" value="남자" checked>남자
							</label>
							<label class="btn btn-primary">
								<input type="radio" name="userGender" autocomplete="off" value="여자" checked>여자
							</label>	
							</td>
							</tr>
							<tr>
						<td style="width: 70px;"><h5>이메일</h5></td>
						<td colspan="2"><input type="email" class="form-control" name="userEmail" maxLength="20"></td>
						
					</tr>	
					<tr>
						<td style="text-align: Left" colspan="3"><input class="btn btn-primary pull-right" type="submit" value="회원가입"></td>
						
					</tr>	
						
						
						
				
				</tbody>
			</table>
		
		
		
		</form>
	
	
	</div>
	 <div id="footer">
   
 copyright @ HYEONJONNG + HYEONSUNG Some Rights Reserved<br>
 This website has been diesigned based on the BC TOWN is the BLOGCOORS website buildong service brands<br>
 Developed directly from provides the thems and plug-ins. Powered by
  </div>
	

</body>
</html>
