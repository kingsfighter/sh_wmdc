<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.util.*"%>
<%@ page import="com.dao.dingdanDao"%>
<%
request.setCharacterEncoding("gb2312");



DBO db=new DBO();
String ddid=(String)request.getParameter("ddid");
String   ddmc="",yh="",gmsj="",zt="",dz="",dh="",shr="";
String sql="";
ResultSet rs=null;
	dingdanDao dao=new dingdanDao();


		
		//if(keyid!=null&&!keyid.equals("")){
			
			sql+=" and ddid='"+ddid+"'";
			
	//	}
		
			rs=dao.qlist(sql);

if(rs.next()){
 ddmc=rs.getString("ddmc");
yh=rs.getString("yh");
gmsj=rs.getString("gmsj");
zt=rs.getString("zt");
dz=rs.getString("dz");
dh=rs.getString("dh");
shr=rs.getString("shr");

}
%>
<jsp:include page="header.jsp"/>
<div align="center">
<table width=980 border=0 cellpadding=0 cellspacing=0 bgcolor="#FFFFFF">
<tr><td width=250 valign="top">

<table width="243" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="8"></td>
  </tr>
</table>
<jsp:include page="leftlogin.jsp"/><br>


</td>
<td width="730" align="right" valign="top"> 
<table width="100%" height="5" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
<tr>
  <td align="right"><a href="12"target="_blank"></a> </td>
</tr>


<tr> <td  height="32" align="center" background="images/right_h1.gif">
<table width="100%" border="0" cellspacing="0">
<tr><td width="5%">&nbsp;
</td>
  <td width="63%" height="30"><font color="#ffffff" class="nav"><b></b></font> &nbsp;&nbsp;��������<font color="#ffffff">&nbsp;</font></td>
  <td width="32%">
             
  </script>
</td>
</tr></table></td>
</tr>
<script language="javascript">

function check(){
if(buyform.dz.value==""){
alert("��ַ����Ϊ��");
return ;
}
if(buyform.dh.value==""){
alert("�绰����Ϊ��");
return;
}
if(buyform.shr.value==""){
alert("�ջ��˲���Ϊ��");
return;
}
if(buyform.dh.value.length<7||buyform.dh.value.length>13){
alert("����ĵ绰���벻��");
return;
}
//alert(buyform.dh.value.length);
buyform.action="dingdando.jsp";
buyform.submit();
}
</script>


<tr> <td width="100%" align="center">
<form action="" method="post" name="buyform">

<table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#E7E7E7">


<tr>
  <td height="134" align="center" bgcolor="#FFFFFF">
    �������:<%=ddid%><br>
  �û�:<%=yh%><br>
    ����ʱ��:<%=gmsj%><br>
	  ״̬:<%=zt%><br>

		  ��ַ:<%=dz%><br>
  		  �绰:<%=dh%><br>
  
  <table border="0" cellpadding="0" cellspacing="0" width="100%" background="img/pattern.gif" style="border: 1px solid #C0C0C0">

    <tr>
      <td height="30" align="center" width="10"></td>
      <td height="30" align="center">����</td>
      <td height="30" align="center">����</td>
      <td height="30" align="center">����</td>
      <td height="30" align="center">�ϼ�</td>

    </tr>
  
	
	<%
	
	 sql="select a.*,b.sp as spmc from ddmx a,shangpin b where 1=1 and a.sp=b.spid and a.dd='"+ddid+"' ";
db.open();
 rs=db.query(sql);
//������ϸ��Ϣ��ѯ
float a=0;
while(rs.next())
{	%>
      <tr>
        <td height="30" align="center" width="10"></td>
        <td height="30" align="center" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; border-bottom: 1px solid #C0C0C0"><a href="onesp.jsp?spid=<%=rs.getString("sp")%>"><%=rs.getString("spmc")%></a></td>
        <td height="30" align="center" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; border-bottom: 1px solid #C0C0C0"> <%=rs.getString("jg")%>Ԫ</td>
        <td height="30" align="center" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; border-bottom: 1px solid #C0C0C0"><%=rs.getString("sl")%></td>
        <td height="30" align="center" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; border-bottom: 1px solid #C0C0C0"> <%=Float.parseFloat(rs.getString("jg"))*Float.parseFloat(rs.getString("sl"))%>Ԫ</td>

       
      </tr>
	  
	  
	  <%
	  	a=a+rs.getFloat("sl")*rs.getFloat("jg");
	  }
	  %>
    
  
    </tr>
	
  </table>
   </td>
</tr>



</table></form></td></tr>

<tr>
  <td width="98%" height="23" align="center">&nbsp;</td>
</tr></table></td>
</tr></table></div><jsp:include page="bottom.jsp"/>