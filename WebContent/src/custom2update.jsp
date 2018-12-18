<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="custom2.Custom2" %>
<%@ page import="custom2.Custom2DAO" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<link rel="stylesheet" href="css/bootstrap2.css">
<link href="https://fonts.googleapis.com/css?family=Gamja+Flower|Lobster" rel="stylesheet">

<style>
h3 {
	font-family:'Oswald', sans-serif;
	font-size:20px;
	font-weight:bold;
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

</style>

<title> 맛집 둘러보기!</title>
</head>
<body>
	<%
		String userID = null;
		if (session.getAttribute("userID") != null) {
			userID = (String) session.getAttribute("userID");
		}
		if (userID == null) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('로그인 하세요')");
			script.println("location.href = 'login.jsp'");
			script.println("</script>");
		
		}
		int custom2ID = 0;
		if (request.getParameter("custom2ID") != null) {
			custom2ID = Integer.parseInt(request.getParameter("custom2ID"));
		}
		if (custom2ID == 0) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('유효하지 않은 글입니다')");
			script.println("location.href = 'custom2.jsp'");
			script.println("</script>");
		}
		Custom2 custom2 = new Custom2DAO().getCustom2(custom2ID);
		if (!userID.equals(custom2.getUserID())) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('권한이 존재하지 않습니다')");
			script.println("location.href = 'custom2.jsp'");
			script.println("</script>");
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
                <li><a href="impor.jsp">해외음식</a></li>
                <li><a href="city.jsp">지역별맛집</a></li>
                <li><a href="board.jsp">공유게시판</a></li>
                <li class="active"><a href="custom.jsp">고객문의</a></li>
           </ul>
          
           	 <ul class="nav navbar-nav navbar-right" id="bs-example-navbar-collapse-1">
           <li class="dropdown">
           		<li><a href="memberupdate.jsp">회원정보</a>
           		<li><a href="logout.jsp">LOGOUT</a>
           		
                    
          </li>
          </ul>
                
  </div>
 </nav>
 		<div class="container">
 		<br><br><br>
 		<h3 style="text-align: left;"><i>고객센터 [묻고답하기]</i></h3>
 			<div class="row">
 			<form method="post" action="custom2updateAction.jsp?custom2ID=<%= custom2ID %>">
 			<table class="table table-striped" style="text-align: center;  border: 1px solid #dddddd">
 						<thead>
 							<tr>
 								<td colspan="2" style="background-color: #eeeeee; text-align: center;">글 수정</td>
 								
 							</tr>
 						</thead>
 						<tbody>
 							<tr>
 								<td><input type="text" class="form-control" placeholder="글 제목" name="custom2Title" maxlength="50" value="<%= custom2.getCustom2Title() %>"></td>
 								</tr>
 								<tr>
 								<td><textarea class="form-control" placeholder="글 내용" name="custom2Content" maxlength="2048" style="height: 350px;"><%= custom2.getCustom2Content() %></textarea></td>
 								</tr>
 							
 						</tbody>
 						
 					</table>
 					<input type="submit" class="btn btn-primary pull-right" value="글 수정">
 			</form>
 					
 					
 			</div>
 		
 		</div>
 


				
					
					
				
					<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
					<script src="js/bootstrap.js"></script>

</body>
</html>
 
