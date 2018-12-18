<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="custom.Custom" %>
<%@ page import="custom.CustomDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<link rel="stylesheet" href="css/bootstrap2.css">



<title> 맛집 둘러보기!</title>
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
</head>
<body>
	<%
		String userID = null;
		if (session.getAttribute("userID") != null) {
			userID = (String) session.getAttribute("userID");
		}
		int customID = 0;
		if (request.getParameter("customID") != null) {
			customID = Integer.parseInt(request.getParameter("customID"));
		}
		if (customID == 0) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('유효하지 않은 글입니다')");
			script.println("location.href = 'custom.jsp'");
			script.println("</script>");
		}
		Custom custom = new CustomDAO().getCustom(customID);
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
 		<div class="container">
 		<br><br><br>
 		<h3 style="text-align: left;"><i>고객센터 [Q & A]</i></h3>
 			<div class="row">
 			<table class="table table-striped" style="text-align: center;  border: 1px solid #dddddd">
 						<thead>
 							<tr>
 								<td colspan="3" style="background-color: #eeeeee; text-align: center;">글 보기</td>
 								
 							</tr>
 						</thead>
 						<tbody>
 							<tr>
 								<td style="width: 20%;">글 제목</td>
 								<td colspan="2"><%= custom.getCustomTitle().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n", "<br>") %></td>
 							</tr>
 							<tr>
 								<td>작성자</td>
 								<td colspan="2"><%= custom.getUserID() %></td>
 							</tr>
 							<tr>
 								<td>작성일자</td>
 								<td colspan="2"><%= custom.getCustomDate() %></td>
 							</tr>
 							<tr>
 								<td>내용</td>
 								<td colspan="2" style="min-height: 200px; text-align: left;">><%= custom.getCustomContent().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n", "<br>") %></td>
 							</tr>
 						</tbody>
 					</table>
 					<a href="custom.jsp" class="btn btn-primary">목록</a>
 					<%
 						if(userID != null && userID.equals(custom.getUserID())) {	
 					
 						}
 					%>
 			
 			</div>
 		
 		</div>
 


				
					
					
				
					<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
					<script src="js/bootstrap.js"></script>

</body>
</html>
 
