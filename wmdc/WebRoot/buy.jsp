<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.util.*"%>
<%
request.setCharacterEncoding("gb2312");
if(session.getAttribute("yhm")==null){
//return;
%>
<script language="javascript">
alert("请登录!!!");
window.location="index.jsp";
</script>
<%
}



DBO db=new DBO();
String sp=(String)request.getParameter("sp");
String sl=(String)request.getParameter("sl");
String jg=(String)request.getParameter("jg");
String yh=(String)session.getAttribute("yhm");
String zt="未处理";
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
  <td width="63%" height="30"><font color="#ffffff" class="nav"><b></b></font> &nbsp;&nbsp;购物车<font color="#ffffff">&nbsp;</font></td>
  <td width="32%">
             
  </script>
</td>
</tr></table></td>
</tr>
<script language="javascript">

function check(){
if(buyform.dz.value==""){
alert("地址不能为空");
return ;
}
if(buyform.dh.value==""){
alert("电话不能为空");
return;
}
if(buyform.shr.value==""){
alert("收货人不能为空");
return;
}
if(buyform.dh.value.length<7||buyform.dh.value.length>13){
alert("输入的电话号码不对");
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
      <td height="30" colspan="8"><p style="margin-left: 20px"><b>您购物车中的产品：</b>（提示：购物车里的菜品并未生成订单）</p></td>
    </tr>
    <tr>
      <td height="30" align="center" width="10"></td>
      <td height="30" align="center">食品名称</td>
      <td height="30" align="center">单价</td>
      <td height="30" align="center">数量</td>
      <td height="30" align="center">合计</td>

      <td height="30" align="center">操作</td>
      <td height="30" align="center" width="10"></td>
    </tr>
  
	
	<%
	
	String sql="select a.*,b.sp as spmc from ddmx a,shangpin b where 1=1 and a.sp=b.spid and a.yh='"+yh+"' and zt='未处理'";
db.open();
ResultSet rs=db.query(sql);
//订单明细信息查询
float a=0;
while(rs.next())
{	%>
      <tr>
        <td height="30" align="center" width="10"></td>
        <td height="30" align="center" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; border-bottom: 1px solid #C0C0C0"><a href="onesp.jsp?spid=<%=rs.getString("sp")%>"><%=rs.getString("spmc")%></a></td>
        <td height="30" align="center" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; border-bottom: 1px solid #C0C0C0"> <%=rs.getString("jg")%>元</td>
        <td height="30" align="center" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; border-bottom: 1px solid #C0C0C0"><%=rs.getString("sl")%></td>
        <td height="30" align="center" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; border-bottom: 1px solid #C0C0C0"> <%=Float.parseFloat(rs.getString("jg"))*Float.parseFloat(rs.getString("sl"))%>元</td>

        <td height="30" align="center" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; border-bottom: 1px solid #C0C0C0"><a href="ddmxdelete.jsp?keyid=<%=rs.getString("ddmxid")%>" onClick="javascript:if(confirm('是否删除')){return true;}else{return false;}">删除</a></td>
        <td height="30" align="center" width="10"></td>
      </tr>
	  
	  
	  <%
	  	a=a+rs.getFloat("sl")*rs.getFloat("jg");;
	  }
	  %>
    
    <tr>
      <td height="30" colspan="8" align="center">价格总计<%=a%>元&nbsp;</td>
    </tr>
	<tr>
      <td height="30" colspan="8" align="center"><table ><td height="26" width="19%"></td><td><b>请填写订货人的详细信息</b></td></tr>
<tr> <td height="26" align="right" width="19%">姓名：</td><td><input type="text" name="yh" size="20" class=input value="<%=session.getAttribute("yhm")%>"></td></tr>
<tr><td height="26" align="right" width="19%">电话：</td><td><input type="text" name="dh" size="20" class=input value=""></td></tr>
<tr> <td height="26" align="right" width="19%">地址：</td><td><input style="FONT-SIZE: 12px; WIDTH: 210px" type="text" name="dz" size="40" class=input value=""></td></tr>
<tr> <td height="26" align="right" width="19%">收货人：</td><td><input style="FONT-SIZE: 12px; WIDTH: 210px" type="text" name="shr" size="40" class=input value=""></td></tr>
</table></td>
    </tr><input type="hidden" name="zj" value="<%=a%>">
    <tr>
      <td height="30" colspan="8" align="center"><input name="button" type="button" onclick="javascript:window.location='index.jsp'" value="继续购物" />
        &nbsp;
        <input name="button" type="button" onclick="check()" value="现在结算" />
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