<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.util.*"%>

<%
/*
������Ӻ�̨
*/
DBO db=new DBO();
request.setCharacterEncoding("gb2312");
ResultSet rs=null;
	String keyid =(String)request.getParameter("keyid");
String sp=(String)request.getParameter("sp");
String yh=(String)request.getParameter("yh");
String pj=(String)request.getParameter("pj");
String sj=(String)request.getParameter("sj");

String sql="";
 sql="insert into pinglun(sp,yh,pl,sj) values('"+sp+"','"+yh+"','"+pj+"','"+sj+"')";
;//����SQL ���
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
out.println("window.location='index.jsp'");
out.println("</script>");
}
db.close();
%>

