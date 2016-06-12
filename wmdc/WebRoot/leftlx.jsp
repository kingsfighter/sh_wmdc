<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.util.*"%>
<%
request.setCharacterEncoding("gb2312");
DBO db=new DBO();

//视频信息查询
%>
<table width="243" border="0" cellPadding="0" cellSpacing="1" bgcolor="#D8D8D8">
	<tr>
	  <td height="31" background="images/left_h2.gif" bgcolor="#FFFFFF"><p style="margin-left:35px" class="nav"><font color="#ffffff">菜品类别</font></td>
	</tr>
	<tr><td align="center" bgcolor="#F8FDFE">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="8"></td>
  </tr>
</table>
  <%
  String sqllx="select * from splb";
  ResultSet rslx=null;
  rslx=db.query(sqllx);
  while(rslx.next()){
  %>
<table cellspacing=0 cellpadding=0 width="220"  border=0 style="border-collapse: collapse" bordercolor="#111111">
<tr><td height="23" colspan="3" align="center">
  <table border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td width="220" height="26" align="center" background="images/left_h3.gif"><a href="shangpin.jsp?lb=<%=rslx.getString("splbid")%>"><font color="#000099"><%=rslx.getString("lb")%></font></a></td>
    </tr>
  </table></td>
</tr></table><br>
<%
}
%>
<SCRIPT language=javascript1.2 src="inc/menu.js"></SCRIPT>
<SCRIPT language=JavaScript src="inc/sort.js"></SCRIPT></td>
	</tr></table>
