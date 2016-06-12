<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.util.*"%>
<%@ page import="com.bean.shangpin"%>
<%@ page import="com.dao.shangpinDao"%>
<%
DBO db=new DBO();
request.setCharacterEncoding("gb2312");
ResultSet rs=null;
String sql="";
int row=1;
	/**
	
	菜品
	**/
try{
		shangpinDao dao=new shangpinDao();
		shangpin shangpin=new shangpin();
			shangpin.setSpid((String)request.getParameter("keyid"));
shangpin.setSp((String)request.getParameter("sp"));
shangpin.setLb((String)request.getParameter("lb"));
shangpin.setCd((String)request.getParameter("cd"));
shangpin.setJg((String)request.getParameter("jg"));
shangpin.setMs((String)request.getParameter("ms"));
shangpin.setTp((String)request.getParameter("tp"));
shangpin.setSftj((String)request.getParameter("sftj"));
shangpin.setSl((String)request.getParameter("sl"));
			dao.modify(shangpin);
}catch(Exception e){
System.out.println(e.toString());}
if(row==1){
out.println("<script>");
out.println("alert('操作成功');");
out.println("window.location='shangpinlist.jsp'");
out.println("</script>");
}else{
out.println("<script>");
out.println("alert('操作失败');");
out.println("window.location='shangpinlist.jsp'");
out.println("</script>");
}
db.close();
%>

