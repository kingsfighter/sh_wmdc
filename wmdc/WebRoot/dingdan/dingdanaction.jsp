<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.util.*"%>
<%@ page import="com.bean.dingdan"%>
<%@ page import="com.dao.dingdanDao"%>
<%
DBO db=new DBO();
request.setCharacterEncoding("gb2312");
ResultSet rs=null;
String sql="";
int row=1;
	
try{
		dingdanDao dao=new dingdanDao();
		dingdan dingdan=new dingdan();
			dingdan.setDdid((String)request.getParameter("keyid"));
dingdan.setDdmc((String)request.getParameter("ddmc"));
dingdan.setYh((String)request.getParameter("yh"));
dingdan.setGmsj((String)request.getParameter("gmsj"));
dingdan.setZt((String)request.getParameter("zt"));
dingdan.setDz((String)request.getParameter("dz"));
dingdan.setDh((String)request.getParameter("dh"));
dingdan.setShr((String)request.getParameter("shr"));

			dao.insert(dingdan);
}catch(Exception e){
System.out.println(e.toString());}
if(row==1){
out.println("<script>");
out.println("alert('操作成功');");
out.println("window.location='dingdanadd.jsp'");
out.println("</script>");
}else{
out.println("<script>");
out.println("alert('操作失败');");
out.println("window.location='dingdanadd.jsp'");
out.println("</script>");
}
db.close();
%>

