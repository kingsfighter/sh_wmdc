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
	/**
	
	订单
	**/
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

			dao.modify(dingdan);
			String zt=(String)request.getParameter("zt");
			if(zt.equals("已处理")){
			sql="select * from ddmx where dd='"+(String)request.getParameter("keyid")+"'";
			db.open();
			rs=db.query(sql);
			while(rs.next()){
			
			sql="update shangpin set sl=sl-"+rs.getString("sl")+" where spid='"+rs.getString("sp")+"'";
			System.out.println("sql=="+sql);
			db.open();
			db.update(sql);
			}
			
			}
			
}catch(Exception e){
System.out.println(e.toString());}
if(row==1){
out.println("<script>");
out.println("alert('操作成功');");
out.println("window.location='dingdanlist.jsp'");
out.println("</script>");
}else{
out.println("<script>");
out.println("alert('操作失败');");
out.println("window.location='dingdanlist.jsp'");
out.println("</script>");
}
db.close();
%>

