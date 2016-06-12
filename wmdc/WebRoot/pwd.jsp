<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.util.*"%>
<%
request.setCharacterEncoding("gb2312");
DBO db=new DBO();
String yhid=(String)session.getAttribute("yhid");
String sql="select * from yonghu where 1=1 and yhid='"+yhid+"'";
db.open();
ResultSet rs=db.query(sql);
String yhm="",mm="",xm="",dh="",dz="",email="";
if(rs.next()){
yhm=rs.getString("yhm");
mm=rs.getString("mm");
xm=rs.getString("xm");
dh=rs.getString("dh");
dz=rs.getString("dz");

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
<jsp:include page="leftlx.jsp"/>
<script language="javascript" src="inven.asp?ven_id=1"></script>
<!--#include file="inph.asp"--></td>
<td width="730" align="right" valign="top"> 
<table width="100%" height="5" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
<tr>
  <td align="right"><a href="5"target="_blank"></a> </td>
</tr>


<tr> <td  height="32" align="center" background="images/right_h1.gif">&nbsp;</td>
</tr>


<tr> <td width="100%" align="center">
<table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#E7E7E7">
<script language="javascript">
function  checkmm(){


form.action="pwddo.jsp";
form.submit();
}
</script>




</table></td></tr>

<tr><td width="98%" height="23" align="center"><table width="100%"  border="0" cellpadding="5" cellspacing="1" bgcolor="#A5C1D7">
  <tr>
    <td height="27" background="images/message_bg2.gif" ><p style="margin-left: 312px"><font color="#ffffff" class="nav"><strong>首页->修改个人资料</strong></font></td>
  </tr>
  <tr>
    <td bgcolor="#FFFFFF"><table border="0" cellpadding="0" cellspacing="5" width="630" bgcolor="#EEEEEE">
      <tr>
        <td align="center" bgcolor="#EEEEEE"><table border="0" cellpadding="0" cellspacing="0" width="100%" background="img/pattern.gif" style="border: 1px solid #C0C0C0">
           
            <form method="post" action="pwddo.jsp" name="form" onsubmit="checkmm();">
        
<tr class=""><input type="hidden" name="yhid" value="<%=session.getAttribute("yhid")%>">
<td width="40%"  align="right">用户名</td>
<td width="60%"><input type="text" name="yhm" value="<%=yhm%>" class="input"></td>
 </tr>
<tr class="">
<td width="40%"  align="right">电话</td>
<td width="60%"><input type="text" name="dh" value="<%=dh%>" class="input"></td>
 </tr>
<tr class="">
<td width="40%"  align="right">地址</td>
<td width="60%"><input type="text" name="dz" value="<%=dz%>" class="input"></td>
 </tr>

               
              <tr>
                <td height="30" align="right" width="100"></td>
                <td height="30" width="525">&nbsp;
				<input type="button" value="保存" onclick="checkmm()">
                   
					</td>
              </tr>
            </form>
        
        </table></td>
      </tr>
    </table>
    </td>
  </tr>
</table></td>
</tr></table></td>
</tr></table></div><jsp:include page="bottom.jsp"/>