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

String new1=(String)request.getParameter("new1");



/*
.�û��޸ĺ�̨ҳ��


*/	
 
sql="update yonghu set mm='"+new1+"' where yhid='"+yhid+"'";

 //int row=0;

try{
		
			
		 row=db.update(sql);
}catch(Exception e){
System.out.println(e.toString());}
if(row==1){
out.println("<script>");
out.println("alert('�����ɹ�');");
out.println("window.location='mm.jsp'");
out.println("</script>");
}else{
out.println("<script>");
out.println("alert('����ʧ��');");
out.println("window.location='mm.jsp'");
out.println("</script>");
}
db.close();
%>

