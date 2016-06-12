<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%
String kname=(String)request.getParameter("kname");
%>
<form name="form" method="post" action="fileup_load.jsp?kname=<%=kname%>" enctype="multipart/form-data">
	  <input type="file" name="upfile" value="" />
	  <input type="submit" value="ÉÏ´«"/>
</form>


