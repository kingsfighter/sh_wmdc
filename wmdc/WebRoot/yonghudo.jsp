<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.util.*"%>

<%
/*
�û���Ӻ�̨
*/
DBO db=new DBO();
request.setCharacterEncoding("gb2312");
ResultSet rs=null;
	String keyid =(String)request.getParameter("keyid");
String yhm=(String)request.getParameter("yhm");
String mm=(String)request.getParameter("mm");
String xm=(String)request.getParameter("xm");
String dh=(String)request.getParameter("dh");
String dz=(String)request.getParameter("dz");




String sql="";
 sql="insert into yonghu(yhm,mm,xm,dh,dz,qx) values('"+yhm+"','"+mm+"','"+xm+"','"+dh+"','"+dz+"','�û�')";
;//�û�SQL ���
int row=1;
		
try{

	
		//int row =0;
		row=db.update(sql);
}catch(Exception e){
System.out.println(e.toString());}
if(row==1){
out.println("<script>");
out.println("alert('�����ɹ�');");
out.println("window.location='index.jsp'");
out.println("</script>");
}else{
out.println("<script>");
out.println("alert('����ʧ��');");
out.println("window.location='reg.jsp'");
out.println("</script>");
}
db.close();
%>

