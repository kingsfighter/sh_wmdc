<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*"%>
<%@ page import="com.util.DBO"%>
<%
DBO db=new DBO();
request.setCharacterEncoding("gb2312");
String yhm=(String)request.getParameter("yhm");
String mm=(String)request.getParameter("mm");
String sql="select * from yonghu where yhm='"+yhm+"' and mm='"+mm+"' and qx='管理员'";
System.out.println("sql="+sql);
db.open();
ResultSet rs=db.query(sql);
out.println("<script>");
if(rs.next()){
session.setAttribute("yhid",rs.getString("yhid"));
session.setAttribute("yhm",rs.getString("yhm"));
session.setAttribute("mm",rs.getString("mm"));

out.println("alert('登录成功');");
out.println("window.location='main.jsp'");
}else{
out.println("alert('用户名或者密码错误');");
out.println("window.location='login.jsp'");
}
out.println("</script>");
%>
