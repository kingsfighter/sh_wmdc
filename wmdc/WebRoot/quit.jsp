<%@ page language="java" contentType="text/html; charset=gb2312"  pageEncoding="gb2312"%>
<%
		request.getSession().invalidate();
		out.println("<script>");
		out.println("alert('³É¹¦ÍË³ö');");
		out.println("</script>");
		response.sendRedirect("index.jsp");
 %>
