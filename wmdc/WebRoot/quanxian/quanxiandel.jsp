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
/*
.Ȩ��ɾ��ҳ��


*/	
try{
		quanxianDao dao = new quanxianDao();
			String keyid=(String)request.getParameter("keyid"); 
		dao.delete(keyid);
}catch(Exception e){
System.out.println(e.toString());}
if(row==1){
out.println("<script>");
out.println("alert('�����ɹ�');");
out.println("window.location='quanxianlist.jsp'");
out.println("</script>");
}else{
out.println("<script>");
out.println("alert('����ʧ��');");
out.println("window.location='quanxianlist.jsp'");
out.println("</script>");
}
db.close();
%>

