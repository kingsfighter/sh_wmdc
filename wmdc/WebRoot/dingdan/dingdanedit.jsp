<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.util.*"%>
<%@ page import="com.dao.dingdanDao"%>
<%
request.setCharacterEncoding("gb2312");
DBO db=new DBO();
String keyid=(String)request.getParameter("keyid");
String sql="";
ResultSet rs=null;
db.open();
String   ddmc="",yh="",gmsj="",zt="",dz="",dh="",shr="";
	dingdanDao dao=new dingdanDao();


		
		if(keyid!=null&&!keyid.equals("")){
			
			sql+=" and ddid='"+keyid+"'";
			
		}
		
			rs=dao.qlist(sql);

if(rs.next()){
 ddmc=rs.getString("ddmc");
yh=rs.getString("yh");
gmsj=rs.getString("gmsj");
zt=rs.getString("zt");
dz=rs.getString("dz");
dh=rs.getString("dh");
shr=rs.getString("shr");

}
/*
订单信息修改页面

*/
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>订单信息修改</title>
</head>
<script language="javascript">
function checkDo(){

form.action="dingdaneditaction.jsp";
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
            <td height="22" colspan="2" background="../images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">订单修改</span></div>              </td>
            </tr>
     
		
		<tr>
<td width="39%" height="20" bgcolor="#FFFFFF"><div align="center" class="STYLE1">订单名称</div></td><td height="20" bgcolor="#FFFFFF"><input type="text" name=ddmc value="<%=ddmc%>"></td>
</tr>
<tr>
<td width="39%" height="20" bgcolor="#FFFFFF"><div align="center" class="STYLE1">用户</div></td><td height="20" bgcolor="#FFFFFF"><input type="text" name=yh value="<%=yh%>"></td>
</tr>
<tr>
<td width="39%" height="20" bgcolor="#FFFFFF"><div align="center" class="STYLE1">购买时间</div></td><td height="20" bgcolor="#FFFFFF"><input type="text" name=gmsj value="<%=gmsj%>"></td>
</tr>
<tr>
<td width="39%" height="20" bgcolor="#FFFFFF"><div align="center" class="STYLE1">状态</div></td><td height="20" bgcolor="#FFFFFF">
  <input type="radio" name="zt" value="未处理" />未处理
  <input type="radio" name="zt" value="已处理" checked="checked" />已处理
  <input type="radio" name="zt" value="异常" />异常</td>
</tr>
<tr>
<td width="39%" height="20" bgcolor="#FFFFFF"><div align="center" class="STYLE1">地址</div></td><td height="20" bgcolor="#FFFFFF"><input type="text" name=dz value="<%=dz%>"></td>
</tr>
<tr>
<td width="39%" height="20" bgcolor="#FFFFFF"><div align="center" class="STYLE1">电话</div></td><td height="20" bgcolor="#FFFFFF"><input type="text" name=dh value="<%=dh%>"></td>
</tr>
<tr>
<td width="39%" height="20" bgcolor="#FFFFFF"><div align="center" class="STYLE1">收货人</div></td><td height="20" bgcolor="#FFFFFF"><input type="text" name=shr value="<%=shr%>"></td>
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
