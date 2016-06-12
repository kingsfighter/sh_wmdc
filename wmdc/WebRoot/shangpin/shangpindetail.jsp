<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.util.*"%>
<%@ page import="com.dao.shangpinDao"%>
<%
request.setCharacterEncoding("gb2312");
DBO db=new DBO();
String keyid=(String)request.getParameter("keyid");
String sql="";
ResultSet rs=null;
db.open();
String   sp="",lb="",cd="",jg="",ms="",tp="",sftj="",sl="";
	shangpinDao dao=new shangpinDao();


		
		if(keyid!=null&&!keyid.equals("")){
			
			sql+=" and spid='"+keyid+"'";
			
		}
		
			rs=dao.qlist(sql);


if(rs.next()){
 sp=rs.getString("sp");
lb=rs.getString("lb");
cd=rs.getString("cd");
jg=rs.getString("jg");
ms=rs.getString("ms");
tp=rs.getString("tp");
sftj=rs.getString("sftj");
sl=rs.getString("sl");
}
/*
菜品信息查看页面

*/
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>菜品详细信息</title>
</head>

<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.STYLE1 {font-size: 12px}
.STYLE3 {font-size: 12px; font-weight: bold; }
.STYLE4 {
	color: #03515d;
	font-size: 12px;
}
-->
</style>
<body>
<form name="form" method="post" >
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="30" background="../images/tab_05.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="5" height="30"><img src="../images/tab_03.gif" width="5" height="30" /></td>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="46%" valign="middle"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="5%"><div align="center"><img src="../images/tb.gif" width="16" height="16" /></div></td>
                <td width="95%" class="STYLE1"><span class="STYLE3"></span></td>
              </tr>
            </table></td>
            <td width="54%">&nbsp;</td>
          </tr>
        </table></td>
        <td width="16"><img src="../images/tab_07.gif" width="16" height="30" /></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="8" background="../images/tab_5.gif">&nbsp;</td>
        <td><table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="b5d6e6" >
          <tr>
            <td height="22" colspan="2" background="../images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">查看菜品</span></div>              </td>
            </tr>
     
		
		<tr>
<td width="39%" height="20" bgcolor="#FFFFFF"><div align="center" class="STYLE1">菜品</div></td><td height="20" bgcolor="#FFFFFF"><%=sp%></td>
</tr>
<tr>
<td width="39%" height="20" bgcolor="#FFFFFF"><div align="center" class="STYLE1">类别</div></td><td height="20" bgcolor="#FFFFFF"><%=lb%></td>
</tr>
<tr>
<td width="39%" height="20" bgcolor="#FFFFFF"><div align="center" class="STYLE1">厨艺</div></td><td height="20" bgcolor="#FFFFFF"><%=cd%></td>
</tr>
<tr>
<td width="39%" height="20" bgcolor="#FFFFFF"><div align="center" class="STYLE1">价格</div></td><td height="20" bgcolor="#FFFFFF"><%=jg%></td>
</tr>
<tr>
<td width="39%" height="20" bgcolor="#FFFFFF"><div align="center" class="STYLE1">描述</div></td><td height="20" bgcolor="#FFFFFF"><%=ms%></td>
</tr>
<tr>
<td width="39%" height="20" bgcolor="#FFFFFF"><div align="center" class="STYLE1">图片</div></td><td height="20" bgcolor="#FFFFFF"><img src="../upload/<%=tp%>" width="80" height="80"></td>
</tr>
<tr>
<td width="39%" height="20" bgcolor="#FFFFFF"><div align="center" class="STYLE1">是否推荐</div></td><td height="20" bgcolor="#FFFFFF"><%=sftj%></td>
</tr>
<tr>
<td width="39%" height="20" bgcolor="#FFFFFF"><div align="center" class="STYLE1">数量</div></td><td height="20" bgcolor="#FFFFFF"><%=sl%></td>
</tr>

		   <tr>
		     <td height="20" colspan="2" bgcolor="#FFFFFF"><div align="center">
		         
		         &nbsp;
		         <input type="button" name="Submit" value="返回" onClick="javascript:window.history.go(-1)">&nbsp;
		       </div></td>
		     </tr>
		
        </table></td>
        <td width="8" background="../images/tab_15.gif">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="35" background="images/tab_19.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="5" height="35"><img src="images/tab_18.gif" width="5" height="35" /></td>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td class="STYLE4">&nbsp;&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
        </table></td>
        <td width="16"><img src="images/tab_20.gif" width="16" height="35" /></td>
      </tr>
    </table></td>
  </tr>
</table>
</form>
<%
db.close();
%>
</body>
</html>
