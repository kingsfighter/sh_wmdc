<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.util.*"%>
<%@ page import="com.bean.quanxian"%>
<%@ page import="com.dao.quanxianDao"%>
<%
DBO db=new DBO();
request.setCharacterEncoding("gb2312");
ResultSet rs=null;
String sql="";
int row=1;
	
try{
		quanxianDao dao=new quanxianDao();
		quanxian quanxian=new quanxian();
			quanxian.setQxid((String)request.getParameter("keyid"));
quanxian.setQx((String)request.getParameter("qx"));

			dao.insert(quanxian);
}catch(Exception e){
System.out.println(e.toString());}
if(row==1){
out.println("<script>");
out.println("alert('操作成功');");
out.println("window.location='quanxianadd.jsp'");
out.println("</script>");
}else{
out.println("<script>");
out.println("alert('操作失败');");
out.println("window.location='quanxianadd.jsp'");
out.println("</script>");
}
db.close();
%>

