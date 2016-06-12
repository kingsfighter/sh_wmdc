<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.util.*"%>
<%@ page import="com.bean.splb"%>
<%@ page import="com.dao.splbDao"%>
<%
DBO db=new DBO();
request.setCharacterEncoding("gb2312");
ResultSet rs=null;
String sql="";
int row=1;
/*
.菜品类别删除页面


*/	
try{
		splbDao dao = new splbDao();
			String keyid=(String)request.getParameter("keyid"); 
		dao.delete(keyid);
}catch(Exception e){
System.out.println(e.toString());}
if(row==1){
out.println("<script>");
out.println("alert('操作成功');");
out.println("window.location='splblist.jsp'");
out.println("</script>");
}else{
out.println("<script>");
out.println("alert('操作失败');");
out.println("window.location='splblist.jsp'");
out.println("</script>");
}
db.close();
%>

