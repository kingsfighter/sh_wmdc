<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.util.*"%>
<%@ page import="com.bean.pinglun"%>
<%@ page import="com.dao.pinglunDao"%>
<%
DBO db=new DBO();
request.setCharacterEncoding("gb2312");
ResultSet rs=null;
String sql="";
int row=1;
	/**
	
	评论
	**/
try{
		pinglunDao dao=new pinglunDao();
		pinglun pinglun=new pinglun();
			pinglun.setPlid((String)request.getParameter("keyid"));
pinglun.setSp((String)request.getParameter("sp"));
pinglun.setPl((String)request.getParameter("pl"));
pinglun.setYh((String)request.getParameter("yh"));
pinglun.setSj((String)request.getParameter("sj"));

			dao.modify(pinglun);
}catch(Exception e){
System.out.println(e.toString());}
if(row==1){
out.println("<script>");
out.println("alert('操作成功');");
out.println("window.location='pinglunlist.jsp'");
out.println("</script>");
}else{
out.println("<script>");
out.println("alert('操作失败');");
out.println("window.location='pinglunlist.jsp'");
out.println("</script>");
}
db.close();
%>

