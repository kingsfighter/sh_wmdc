<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.util.*"%>
<%
request.setCharacterEncoding("gb2312");
DBO db=new DBO();
String sql="select * from xinwen where 1=1 ";
db.open();
ResultSet rs=db.query(sql);
//留言信息查询
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
<jsp:include page="leftlx.jsp"/>

</td>
<td width="730" align="right" valign="top"> 
<table width="100%" height="5" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
<tr>
  <td align="right">&nbsp; </td>
</tr>


<tr> <td  height="32" align="center" background="images/right_h1.gif">
<table width="100%" border="0" cellspacing="0">
<tr><td width="5%">&nbsp;
</td>
  <td width="63%" height="30"><font color="#ffffff" class="nav"><b></b></font> &nbsp;&nbsp;新闻<font color="#ffffff">&nbsp;</font></td>
  <td width="32%">
             
  
</td>
</tr></table></td>
</tr>


<tr> <td width="100%" align="center">
<table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#E7E7E7">


<tr>
  <td height="134" align="center" bgcolor="#FFFFFF"><table width="700" border="0" align="center" cellpadding="0" cellspacing="0" id="table35">
    <tr>
      <td height="30" bgcolor="#EEEEEE" colspan="2" width="250" class="yin"  style="font-size: 10pt; font-weight: bold; color:#FA860B">&nbsp;</td>
      <td align="middle" width="200" bgcolor="#EEEEEE"></td>
      <td align="middle" width="150" bgcolor="#EEEEEE"></td>
      
      <td align="middle" width="150" bgcolor="#EEEEEE"></td>
    </tr>
    <tr>
      <td align="middle" height="2" bgcolor="#FFAA00" colspan="5"></td>
    </tr>
    <tr>
     
      <td style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; border-bottom: 1px solid #CCCCCC" bgcolor="#F5F5F5" width="250">编号</td>
      <td width="200" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; border-bottom: 1px solid #CCCCCC" bgcolor="#F5F5F5">标题</td>
      <td width="150" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; border-bottom: 1px solid #CCCCCC" bgcolor="#F5F5F5">发布人</td>
      <td width="100" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; border-bottom: 1px solid #CCCCCC" bgcolor="#F5F5F5">时间</td>
      <td width="100" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; border-bottom: 1px solid #CCCCCC" bgcolor="#F5F5F5">查看</td>
    </tr>
		<%
					if(rs!=null){
					while(rs.next()){
					%>
    <tr>
      <td align="middle" width="250" height="30" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; border-bottom: 1px solid #CCCCCC" bgcolor="#F5F5F5"><%=rs.getString("xwid")%></td>
      <td style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; border-bottom: 1px solid #CCCCCC" width="250" bgcolor="#F5F5F5"><%=rs.getString("bt")%></td>
      <td width="200" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; border-bottom: 1px solid #CCCCCC" bgcolor="#F5F5F5"><%=rs.getString("yh")%></td>
      <td width="150" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; border-bottom: 1px solid #CCCCCC" bgcolor="#F5F5F5"><%=rs.getString("sj")%></td>
   
      <td width="150" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; border-bottom: 1px solid #CCCCCC" bgcolor="#F5F5F5"><a href="onexinwen.jsp?keyid=<%=rs.getString("xwid")%>">查看</a></td>
    </tr>
	<%
	}
	}
	%>
  </table></td>
</tr>



</table></td></tr>

<tr>
  <td width="98%" height="23" align="center">&nbsp;</td>
</tr></table></td>
</tr></table></div><jsp:include page="bottom.jsp"/>