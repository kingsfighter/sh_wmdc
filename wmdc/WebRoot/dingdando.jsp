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
String sj=StaticMethod.getStringDate();
String yh=(String)request.getParameter("yh");
String zt="δ����";
String dz=(String)request.getParameter("dz");
String dh=(String)request.getParameter("dh");
String shr=(String)request.getParameter("shr");
String zj=(String)request.getParameter("zj");
String sql="";
 sql="insert into dingdan(gmsj,yh,zt,dz,dh,shr,zj) values('"+sj+"','"+yh+"','"+zt+"','"+dz+"','"+dh+"','"+shr+"','"+zj+"')";
//����SQL ���
int row=1;
		
try{

		db.open();
		//int row =0;
		row=db.update(sql);
		
			db.open();
		sql="select max(ddid) as ddid from dingdan ";
		rs=db.query(sql);
		
		String ddid="";
		if(rs.next()){
		ddid=rs.getString("ddid");
		}
			db.open();
			System.out.println("update ddmx set zt='�Ѵ���',dd='"+ddid+"' where yh='"+yh+"' and zt='δ����'");
			
		db.update("update ddmx set zt='�Ѵ���' , dd='"+ddid+"' where yh='"+yh+"' and zt='δ����'");
		
		
		
		
		
}catch(Exception e){
System.out.println(e.toString());}
if(row==1){
out.println("<script>");
out.println("alert('�����ɹ�');");
out.println("window.location='orders.jsp'");
out.println("</script>");
}else{
out.println("<script>");
out.println("alert('����ʧ��');");
out.println("window.location='buy.jsp'");
out.println("</script>");
}
db.close();
%>

