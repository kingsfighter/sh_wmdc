<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.util.*"%>
<%@ page import="com.bean.ddmx"%>
<%@ page import="com.dao.ddmxDao"%>
<%
DBO db=new DBO();
request.setCharacterEncoding("gb2312");
ResultSet rs=null;
String sql="";
int row=1;
	
try{
		ddmxDao dao=new ddmxDao();
		ddmx ddmx=new ddmx();
			ddmx.setDdmxid((String)request.getParameter("keyid"));
ddmx.setDd((String)request.getParameter("dd"));
ddmx.setSp((String)request.getParameter("sp"));
ddmx.setSl((String)request.getParameter("sl"));
ddmx.setJg((String)request.getParameter("jg"));
ddmx.setSj((String)request.getParameter("sj"));
ddmx.setZt((String)request.getParameter("zt"));

			dao.insert(ddmx);
}catch(Exception e){
System.out.println(e.toString());}
if(row==1){
out.println("<script>");
out.println("alert('操作成功');");
out.println("window.location='ddmxadd.jsp'");
out.println("</script>");
}else{
out.println("<script>");
out.println("alert('操作失败');");
out.println("window.location='ddmxadd.jsp'");
out.println("</script>");
}
db.close();
%>

