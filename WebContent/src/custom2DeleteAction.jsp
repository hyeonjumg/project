<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="custom2.Custom2DAO" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="custom2.Custom2" %>
<%@ page import="custom2.Custom2DAO" %>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>맛집 둘러보기!</title>
</head>
<body>
	<%
		String userID = null;
		if(session.getAttribute("userID") != null) {
		userID = (String) session.getAttribute("userID");
		}
		if (userID == null) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('로그인을 하세요')");
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
		} else {
				Custom2DAO custom2DAO = new Custom2DAO();
				int result = custom2DAO.delete(custom2ID);
				if (result == -1) {
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("alert('글 삭제 실패하였습니다')");
					script.println("history.back()");
					script.println("</script>");
						
				}
				else {
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("location.href = 'custom2.jsp'");
					script.println("</script>");
				}
			
			}
			
		
	
	
	%>
</body>
</html>>
