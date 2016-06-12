<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>



<table width="243" border="0" cellpadding="0" cellspacing="1" bgcolor="#FED5BC">
  <tr>
    <td bgcolor="#FFFFFF"><table width="243" border="0" cellPadding="0" cellSpacing="0">
<tr><td height="36" align="center" background="images/loginh2.gif"><p class="nav"><strong>会员中心</strong></td>
</tr>
<tr>
<td align="center"><%
if(session.getAttribute("yhm")!=null){
%><table border="0" cellpadding="0" cellspacing="0" width="92%">
<tr><td height="30" align="center">[欢迎您：<%=session.getAttribute("yhm")%>| <a href="quit.jsp">退出登录</a>]</td>
</tr>
<tr><td height="80" align="center"><p style="line-height: 150%">

<a href="orders.jsp">我的订单</a> <br>
|<a href="pwd.jsp">修改个人信息</a><br>
|<a href="mm.jsp">密码</a><br />

<a href="buy.jsp">我的购物车</a>


</td></tr></table>

<%
}else{
%>
  <table border="0" cellpadding="0" cellspacing="0" width="92%"><form method="POST" name="formlogin" action="leftlogincheck.jsp">
<tr>
  <td height="30" align="center"><font color="#336699">用户名：    
    <input name="yhm" size="16" maxlength="20">
  </font></td>
</tr>
<tr>
  <td height="30" align="center"><font color="#336699">密　码：
    <input name="mm" type="password" size="16" maxlength="20"></font></td></tr>
<tr>
  <td height="35" align="center"><input type=image border="0" src="images/loginok.gif"></td>
</tr>
  </form>
</table><%
}
%>
  <table width="92%"  border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td height="28" align="center"><p><img src="images/login_ti.gif" width="14" height="14" align="absmiddle"> 如果您不是会员，请先<a href="reg.jsp" target="">注册会员</a>！</p>
     </td>
    </tr>
  </table>
  </td>
</tr>
<tr><td></a></td></tr></table></td>
  </tr>
</table>


