<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="custom.CustomDAO" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="custom.Custom" %>
<%@ page import="custom.CustomDAO" %>
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
		if (!userID.equals(custom.getUserID())) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('권한이 존재하지 않습니다')");
			script.println("location.href = 'custom.jsp'");
			script.println("</script>");
		
		} else {
			if (request.getParameter("customTitle") == null || request.getParameter("customContent") == null
					|| request.getParameter("customTitle").equals("") || request.getParameter("customContent").equals("")) {
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("alert('입력이 안 된 사항이 있습니다.')");
					script.println("history.back()");
					script.println("</script>");
				} else {
					CustomDAO customDAO = new CustomDAO();
					int result = customDAO.update(customID, request.getParameter("customTitle"), request.getParameter("customContent"));
					if (result == -1) {
						PrintWriter script = response.getWriter();
						script.println("<script>");
						script.println("alert('글수정이 실패했습니다')");
						script.println("history.back()");
						script.println("</script>");
						
					}
					else {
						PrintWriter script = response.getWriter();
						script.println("<script>");
						script.println("location.href = 'custom.jsp'");
						script.println("</script>");
					}
			
			}
			
		}
	
	
	%>
</body>
</html>
