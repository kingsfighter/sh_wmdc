<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.util.*"%>
<%
request.setCharacterEncoding("gb2312");
if(session.getAttribute("yhm")==null){
//return;
%>
<script language="javascript">
alert("���¼!!!");
window.location="index.jsp";
</script>
<%
}



DBO db=new DBO();
String sp=(String)request.getParameter("sp");
String sl=(String)request.getParameter("sl");
String jg=(String)request.getParameter("jg");
String yh=(String)session.getAttribute("yhm");
String zt="δ����";
//String 
String sql1="";
if(sp!=null){
 sql1="insert into ddmx(sp,sl,jg,yh,zt) values('"+sp+"','"+sl+"','"+jg+"','"+yh+"','"+zt+"')";
 try{

	
		//int row =0;
		db.update(sql1);
}catch(Exception e){
System.out.println(e.toString());}
}
%>
<jsp:include page="header.jsp"/>
<div align="center">
<table width=980 border=0 cellpadding=0 cellspacing=0 bgcolor="#FFFFFF">
<tr><td width=250 valign="top">
  <!--#include file="inlog.asp"-->
<table width="243" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="8"></td>
  </tr>
</table>
<jsp:include page="leftlogin.jsp"/><br>

<script language="javascript" src="inven.asp?ven_id=1"></script>
<!--#include file="inph.asp"--></td>
<td width="730" align="right" valign="top"> 
<table width="100%" height="5" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
<tr>
  <td align="right"><a href="5"target="_blank"></a> </td>
</tr>


<tr> <td  height="32" align="center" background="images/right_h1.gif">
<table width="100%" border="0" cellspacing="0">
<tr><td width="5%">&nbsp;
</td>
  <td width="63%" height="30"><font color="#ffffff" class="nav"><b></b></font> &nbsp;&nbsp;���ﳵ<font color="#ffffff">&nbsp;</font></td>
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
  <td height="134" align="center" bgcolor="#FFFFFF"><table border="0" cellpadding="0" cellspacing="0" width="100%" background="img/pattern.gif" style="border: 1px solid #C0C0C0">
    <tr>
      <td height="30" colspan="8"><p style="margin-left: 20px"><b>�����ﳵ�еĲ�Ʒ��</b>����ʾ�����ﳵ��Ĳ�Ʒ��δ���ɶ�����</p></td>
    </tr>
    <tr>
      <td height="30" align="center" width="10"></td>
      <td height="30" align="center">ʳƷ����</td>
      <td height="30" align="center">����</td>
      <td height="30" align="center">����</td>
      <td height="30" align="center">�ϼ�</td>

      <td height="30" align="center">����</td>
      <td height="30" align="center" width="10"></td>
    </tr>
  
	
	<%
	
	String sql="select a.*,b.sp as spmc from ddmx a,shangpin b where 1=1 and a.sp=b.spid and a.yh='"+yh+"' and zt='δ����'";
db.open();
ResultSet rs=db.query(sql);
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

        <td height="30" align="center" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; border-bottom: 1px solid #C0C0C0"><a href="ddmxdelete.jsp?keyid=<%=rs.getString("ddmxid")%>" onClick="javascript:if(confirm('�Ƿ�ɾ��')){return true;}else{return false;}">ɾ��</a></td>
        <td height="30" align="center" width="10"></td>
      </tr>
	  
	  
	  <%
	  	a=a+rs.getFloat("sl")*rs.getFloat("jg");;
	  }
	  %>
    
    <tr>
      <td height="30" colspan="8" align="center">�۸��ܼ�<%=a%>Ԫ&nbsp;</td>
    </tr>
	<tr>
      <td height="30" colspan="8" align="center"><table ><td height="26" width="19%"></td><td><b>����д�����˵���ϸ��Ϣ</b></td></tr>
<tr> <td height="26" align="right" width="19%">������</td><td><input type="text" name="yh" size="20" class=input value="<%=session.getAttribute("yhm")%>"></td></tr>
<tr><td height="26" align="right" width="19%">�绰��</td><td><input type="text" name="dh" size="20" class=input value=""></td></tr>
<tr> <td height="26" align="right" width="19%">��ַ��</td><td><input style="FONT-SIZE: 12px; WIDTH: 210px" type="text" name="dz" size="40" class=input value=""></td></tr>
<tr> <td height="26" align="right" width="19%">�ջ��ˣ�</td><td><input style="FONT-SIZE: 12px; WIDTH: 210px" type="text" name="shr" size="40" class=input value=""></td></tr>
</table></td>
    </tr><input type="hidden" name="zj" value="<%=a%>">
    <tr>
      <td height="30" colspan="8" align="center"><input name="button" type="button" onclick="javascript:window.location='index.jsp'" value="��������" />
        &nbsp;
        <input name="button" type="button" onclick="check()" value="���ڽ���" />
      </td>
    </tr>
  </table>
   </td>
</tr>



</table></form></td></tr>

<tr>
  <td width="98%" height="23" align="center">&nbsp;</td>
</tr></table></td>
</tr></table></div><jsp:include page="bottom.jsp"/>