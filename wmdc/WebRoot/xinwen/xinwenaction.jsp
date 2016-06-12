<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.util.*"%>
<%@ page import="com.bean.xinwen"%>
<%@ page import="com.dao.xinwenDao"%>
<%
DBO db=new DBO();
request.setCharacterEncoding("gb2312");
ResultSet rs=null;
String sql="";
int row=1;
	
try{
		xinwenDao dao=new xinwenDao();
		xinwen xinwen=new xinwen();
			xinwen.setXwid((String)request.getParameter("keyid"));
xinwen.setBt((String)request.getParameter("bt"));
xinwen.setNr((String)request.getParameter("nr"));
xinwen.setSj((String)request.getParameter("sj"));
xinwen.setYh((String)request.getParameter("yh"));

			dao.insert(xinwen);
}catch(Exception e){
System.out.println(e.toString());}
if(row==1){
out.println("<script>");
out.println("alert('操作成功');");
out.println("window.location='xinwenadd.jsp'");
out.println("</script>");
}else{
out.println("<script>");
out.println("alert('操作失败');");
out.println("window.location='xinwenadd.jsp'");
out.println("</script>");
}
db.close();
%>

