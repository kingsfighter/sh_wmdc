<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.util.*"%>
<%@ page import="com.bean.yonghu"%>
<%@ page import="com.dao.yonghuDao"%>
<%
DBO db=new DBO();
request.setCharacterEncoding("gb2312");
ResultSet rs=null;
String sql="";
int row=1;
	/**
	
	用户
	**/
try{
		yonghuDao dao=new yonghuDao();
		yonghu yonghu=new yonghu();
			yonghu.setYhid((String)request.getParameter("keyid"));
yonghu.setYhm((String)request.getParameter("yhm"));
yonghu.setMm((String)request.getParameter("mm"));
yonghu.setXm((String)request.getParameter("xm"));
yonghu.setQx((String)request.getParameter("qx"));
yonghu.setDh((String)request.getParameter("dh"));
yonghu.setDz((String)request.getParameter("dz"));

			dao.modify(yonghu);
}catch(Exception e){
System.out.println(e.toString());}
if(row==1){
out.println("<script>");
out.println("alert('操作成功');");
out.println("window.location='yonghulist.jsp'");
out.println("</script>");
}else{
out.println("<script>");
out.println("alert('操作失败');");
out.println("window.location='yonghulist.jsp'");
out.println("</script>");
}
db.close();
%>

