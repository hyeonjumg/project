<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="custom2.Custom2DAO" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<jsp:useBean id="custom2" class="custom2.Custom2" scope="page" />
<jsp:setProperty name="custom2" property="custom2Title" />
<jsp:setProperty name="custom2" property="custom2Content" />
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
		} else {
			if (custom2.getCustom2Title() == null || custom2.getCustom2Content() == null) {
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("alert('입력이 안 된 사항이 있습니다.')");
					script.println("history.back()");
					script.println("</script>");
				} else {
					Custom2DAO custom2DAO = new Custom2DAO();
					int result = custom2DAO.write(custom2.getCustom2Title(), userID, custom2.getCustom2Content());
					if (result == -1) {
						PrintWriter script = response.getWriter();
						script.println("<script>");
						script.println("alert('글쓰기에 실패했습니다')");
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
			
		}
	
	
	%>
</body>
</html>
