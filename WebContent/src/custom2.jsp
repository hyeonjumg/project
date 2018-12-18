<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="custom2.Custom2DAO" %>
<%@ page import="custom2.Custom2" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<link rel="stylesheet" href="css/bootstrap2.css">
<link href="https://fonts.googleapis.com/css?family=Gamja+Flower|Lobster" rel="stylesheet">
<title> 맛집 둘러보기!</title>
<style type="text/css">
	a, a:hover {
		color: #000000;
		text-decoration: none;
	}
	h3 {
	font-family:'Oswald', sans-serif;
	font-size:20px;
	font-weight:bold;
	}
	input[type=button] {
            background-color: gray;
            border: none;
            text-decoration: none;
            color: white;
            padding: 25px 25px;
            margin: 0 520px;
            cursor: pointer;
            text-align:center;
            width: 10%; 
            }
            input.dd {
            background-color: gray;
            border: none;
            text-decoration: none;
            color: white;
            padding: 25px 25px;
            margin: -75px 350px;
            cursor: pointer;
            text-align:center;
            width: 10%;
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
 		<h3 style="text-align: left;"><I><a href="custom2.jsp">고객센터 [묻고 답하기]</a></I></h3><BR><BR>
 		<input type="button" value="Q & A" class="dd" onClick="location.href='custom.jsp'">
 		<input type="button" value="묻고 답하기" onClick="location.href='custom2.jsp'">
 			<br><br><br><BR><BR>
 			<div class="row">
 					<table class="table table-striped" style="text-align: center;  border: 1px solid #dddddd">
 						<thead>
 							<tr>
 								<td style="background-color: #eeeeee; text-align: center;">번호</td>
 								<td style="background-color: #eeeeee; text-align: center;">제목</td>
 								<td style="background-color: #eeeeee; text-align: center;">작성자</td>
 								<td style="background-color: #eeeeee; text-align: center;">작성날짜</td>
 								
 							</tr>
 						</thead>
 						<tbody>
 						<%
 							Custom2DAO custom2DAO = new Custom2DAO();
 							ArrayList<Custom2> list = custom2DAO.getList(pageNumber);
 							for(int i = 0; i < list.size(); i++) {
 								
 							
 						%>
 							<tr>
 								<td><%= list.get(i).getCustom2ID() %></td>
 								<td><a href="custom2view.jsp?custom2ID=<%= list.get(i).getCustom2ID() %>"><%= list.get(i).getCustom2Title() %></a></td>
 								<td><%= list.get(i).getUserID() %></td>
 								<td><%= list.get(i).getCustom2Date() %></td>
 								
 							</tr>
 							<%
 								}
 							%>
 						</tbody>
 					</table>
 					<%
 						if(pageNumber != 1) {
 					%>
 						<a href="custom2.jsp?pageNumber=<%=pageNumber -1 %>" class="btn btn-success btn-arraw-left">이전</a>
 					<%
 						} if(custom2DAO.nextPage(pageNumber + 1)) {
 					%>
 						<a href="custom2.jsp?pageNumber=<%=pageNumber +1 %>" class="btn btn-success btn-arraw-left">다음</a>
 					<%
 						}
 					%>
 					<a href="custom2write.jsp" class="btn btn-primary pull-right">문의하기</a>
 			</div>
 		
 		</div>
 


				
					
					
				
					<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
					<script src="js/bootstrap.js"></script>

</body>
</html>
 
