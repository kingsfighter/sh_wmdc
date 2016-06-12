<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.util.*"%>
<%@ page import="com.dao.ddmxDao"%>
<%
request.setCharacterEncoding("gb2312");
DBO db=new DBO();
String keyid=(String)request.getParameter("keyid");
String sql="";
ResultSet rs=null;
db.open();
String   dd="",sp="",sl="",jg="",sj="",zt="";
	ddmxDao dao=new ddmxDao();


		
		if(keyid!=null&&!keyid.equals("")){
			
			sql+=" and ddmxid='"+keyid+"'";
			
		}
		
			rs=dao.qlist(sql);

if(rs.next()){
 dd=rs.getString("dd");
sp=rs.getString("sp");
sl=rs.getString("sl");
jg=rs.getString("jg");
sj=rs.getString("sj");
zt=rs.getString("zt");

}
/*
订单明细信息修改页面

*/
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>订单明细信息修改</title>
</head>
<script language="javascript">
function checkDo(){

form.action="ddmxeditaction.jsp";
form.submit();
}
</script>
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
            <td height="22" colspan="2" background="../images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">订单明细修改</span></div>              </td>
            </tr>
     
		
		<tr>
<td width="39%" height="20" bgcolor="#FFFFFF"><div align="center" class="STYLE1">订单</div></td><td height="20" bgcolor="#FFFFFF"><input type="text" name=dd value="<%=dd%>"></td>
</tr>
<tr>
<td width="39%" height="20" bgcolor="#FFFFFF"><div align="center" class="STYLE1">菜品</div></td><td height="20" bgcolor="#FFFFFF"><input type="text" name=sp value="<%=sp%>"></td>
</tr>
<tr>
<td width="39%" height="20" bgcolor="#FFFFFF"><div align="center" class="STYLE1">数量</div></td><td height="20" bgcolor="#FFFFFF"><input type="text" name=sl value="<%=sl%>"></td>
</tr>
<tr>
<td width="39%" height="20" bgcolor="#FFFFFF"><div align="center" class="STYLE1">价格</div></td><td height="20" bgcolor="#FFFFFF"><input type="text" name=jg value="<%=jg%>"></td>
</tr>
<tr>
<td width="39%" height="20" bgcolor="#FFFFFF"><div align="center" class="STYLE1">时间</div></td><td height="20" bgcolor="#FFFFFF"><input type="text" name=sj value="<%=sj%>"></td>
</tr>
<tr>
<td width="39%" height="20" bgcolor="#FFFFFF"><div align="center" class="STYLE1">状态</div></td><td height="20" bgcolor="#FFFFFF"><input type="text" name=zt value="<%=zt%>"></td>
</tr>

		<input type=hidden name=keyid value="<%=keyid%>">
		   <tr>
		     <td height="20" colspan="2" bgcolor="#FFFFFF"><div align="center">
		         
		         <input type="button" name="button" class="common_button"   value="提交" onClick="checkDo();" />&nbsp;<input type="reset" name="button2" id="button" class="common_button"  value="重置">
		       </div></td>
		     </tr>
		
        </table></td>
        <td width="8" background="../images/tab_15.gif">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="35" background="../images/tab_19.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="5" height="35"><img src="../images/tab_18.gif" width="5" height="35" /></td>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td class="STYLE4">&nbsp;&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
        </table></td>
        <td width="16"><img src="../images/tab_20.gif" width="16" height="35" /></td>
      </tr>
    </table></td>
  </tr>
</table>
</form>
<%
//db.close();
%>
</body>
</html>
