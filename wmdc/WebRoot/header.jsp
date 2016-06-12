<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.util.*"%>
<%
request.setCharacterEncoding("gb2312");
DBO db=new DBO();

%>
<html>
<head>
<title></title>

<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache, must-revalidate">
<link rel="stylesheet" type="text/css" href="inc/css.css">

</head>
<body topmargin="0" leftmargin="0" rightmargin="0" bottommargin="0">
<table width="980" border="0" align="center" cellpadding="0" cellspacing="0">
<tr>

  <td align="left" height="48" width="731"><img src="images/9947948.gif" width="980" border="0"></td>
</tr>
<tr>
  <td height="35" valign="bottom" width="731"><table border="0" cellpadding="0" cellspacing="0">
    <tr>
    
      <td width="82" background="images/topli_bg2.gif" align="center" height="35">
		<b><a href="index.jsp"><font color="#FFFFFF" class="nav">首 页</font></a></b></td>

     	   
    
      <td width="95" height="35" align="center" background="images/topli_bg22.gif"><b><a href="shangpin.jsp"><font color="#FFFFFF" class="nav">菜品</font></a></b></td>
     
  
  <td width="95" height="35" align="center" background="images/topli_bg22.gif"><b><a href="xinwen.jsp"><font color="#FFFFFF" class="nav">新闻</font></a></b></td>
    </tr>
  </table></td>
</tr>
<tr><td colspan="2" align="center">
  <table width="100%"  border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td height="56" background="images/search_bg.gif"><table border="0" cellpadding="5" cellspacing="0"><form method="POST" name="searchform" action="shangpin.jsp">
<tr><td width="55" align="right"><img src="images/search_li.gif" width="34" height="36"></td>

<td width="195" align="center"><input type="text" name="spmc" size="25" class=input></td>
<td width="112" align="center"><input name="imageField" type="image" src="images/search_ok.gif" width="104" height="26" border="0"></td>
<td width="112" align="center"><a href="search.asp"><font color="#ffffff" class="nav"></font></a></td>
<td width="268" align="center"><b><font style="font-size:12pt; font-family:Arial;color:#FFFF99;">咨询电话：1234567890</font></b></td>
</tr></form></table></td>
    </tr>
  </table>
  </td></tr>
</table>
<table width="980" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="5"></td>
  </tr>
</table>
