<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>



<table width="243" border="0" cellpadding="0" cellspacing="1" bgcolor="#FED5BC">
  <tr>
    <td bgcolor="#FFFFFF"><table width="243" border="0" cellPadding="0" cellSpacing="0">
<tr><td height="36" align="center" background="images/loginh2.gif"><p class="nav"><strong>��Ա����</strong></td>
</tr>
<tr>
<td align="center"><%
if(session.getAttribute("yhm")!=null){
%><table border="0" cellpadding="0" cellspacing="0" width="92%">
<tr><td height="30" align="center">[��ӭ����<%=session.getAttribute("yhm")%>| <a href="quit.jsp">�˳���¼</a>]</td>
</tr>
<tr><td height="80" align="center"><p style="line-height: 150%">

<a href="orders.jsp">�ҵĶ���</a> <br>
|<a href="pwd.jsp">�޸ĸ�����Ϣ</a><br>
|<a href="mm.jsp">����</a><br />

<a href="buy.jsp">�ҵĹ��ﳵ</a>


</td></tr></table>

<%
}else{
%>
  <table border="0" cellpadding="0" cellspacing="0" width="92%"><form method="POST" name="formlogin" action="leftlogincheck.jsp">
<tr>
  <td height="30" align="center"><font color="#336699">�û�����    
    <input name="yhm" size="16" maxlength="20">
  </font></td>
</tr>
<tr>
  <td height="30" align="center"><font color="#336699">�ܡ��룺
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
      <td height="28" align="center"><p><img src="images/login_ti.gif" width="14" height="14" align="absmiddle"> ��������ǻ�Ա������<a href="reg.jsp" target="">ע���Ա</a>��</p>
     </td>
    </tr>
  </table>
  </td>
</tr>
<tr><td></a></td></tr></table></td>
  </tr>
</table>


