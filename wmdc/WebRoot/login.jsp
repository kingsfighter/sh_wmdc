<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>�����̨</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-color: #016aa9;
	overflow:hidden;
}
.STYLE1 {
	color: #000000;
	font-size: 12px;
}
-->
</style></head>
<script language="javascript">
function login(){
form.action="loginin.jsp";
form.submit();
}
function zhuce(){
form.action="tab/zhuce.jsp";
form.submit();
}
</script>
<body>
<form name="form" action="loginin.jsp" method="post">
<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td><table width="962" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td height="235" background="img/login_03.gif">&nbsp;</td>
      </tr>
      <tr>
        <td height="53"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="394" height="53" background="img/login_05.gif">&nbsp;</td>
            <td width="206" background="img/login_06.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="16%" height="25"><div align="right"><span class="STYLE1">�û�</span></div></td>
                <td width="57%" height="25"><div align="center">
                  <input type="text" name="yhm" style="width:105px; height:17px; background-color:#292929; border:solid 1px #7dbad7; font-size:12px; color:#6cd0ff">
                </div></td>
                <td width="27%" height="25"><a href="#" onClick="zhuce();"></a></td>
              </tr>
              <tr>
                <td height="25"><div align="right"><span class="STYLE1">����</span></div></td>
                <td height="25"><div align="center">
                  <input type="password" name="mm" style="width:105px; height:17px; background-color:#292929; border:solid 1px #7dbad7; font-size:12px; color:#6cd0ff">
                </div></td>
                <td height="25"><div align="left"><a href="#" onClick="login();"><img src="img/dl.gif"  width="49" height="18" border="0"></a></div></td>
              </tr>
            </table></td>
            <td width="362" background="img/login_07.gif">&nbsp;</td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td height="213" background="img/login_08.gif">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
</table>
</form></body>
</html>
