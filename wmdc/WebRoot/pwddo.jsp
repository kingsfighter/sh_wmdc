<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.util.*"%>

<%
DBO db=new DBO();
request.setCharacterEncoding("gb2312");
ResultSet rs=null;
String sql="";
int row=1;
//	String keyid=(String)request.getParameter("keyid"); 
		String yhid =(String)request.getParameter("yhid");

String dh=(String)request.getParameter("dh");
String dz=(String)request.getParameter("dz");

String yhm=(String)request.getParameter("yhm");



/*
.用户修改后台页面


*/	
 
sql="update yonghu set yhm='"+yhm+"',dh='"+dh+"',dz='"+dz+"',yhm='"+yhm+"' where yhid='"+yhid+"'";

 //int row=0;

try{
		
			
		 row=db.update(sql);
}catch(Exception e){
System.out.println(e.toString());}
if(row==1){
out.println("<script>");
out.println("alert('操作成功');");
out.println("window.location='index.jsp'");
out.println("</script>");
}else{
out.println("<script>");
out.println("alert('操作失败');");
out.println("window.location='pwd.jsp'");
out.println("</script>");
}
db.close();
%>

