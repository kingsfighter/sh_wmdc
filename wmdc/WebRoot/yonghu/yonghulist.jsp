<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.util.*"%>
<%@ page import="com.dao.yonghuDao"%>
<%
DBO db=new DBO();
request.setCharacterEncoding("gb2312");
yonghuDao dao = new yonghuDao();
ResultSet rs=null;
String sql="";
rs=dao.qlist(sql);
/*
用户信息查看页面

*/
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>无标题文档</title>
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
<script>
var  highlightcolor='#c1ebff';
//此处clickcolor只能用win系统颜色代码才能成功,如果用#xxxxxx的代码就不行,还没搞清楚为什么:(
var  clickcolor='#51b2f6';
function  changeto(){
source=event.srcElement;
if  (source.tagName=="TR"||source.tagName=="TABLE")
return;
while(source.tagName!="TD")
source=source.parentElement;
source=source.parentElement;
cs  =  source.children;
//alert(cs.length);
if  (cs[1].style.backgroundColor!=highlightcolor&&source.id!="nc"&&cs[1].style.backgroundColor!=clickcolor)
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor=highlightcolor;
}
}

function  changeback(){
if  (event.fromElement.contains(event.toElement)||source.contains(event.toElement)||source.id=="nc")
return
if  (event.toElement!=source&&cs[1].style.backgroundColor!=clickcolor)
//source.style.backgroundColor=originalcolor
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor="";
}
}

function  clickto(){
source=event.srcElement;
if  (source.tagName=="TR"||source.tagName=="TABLE")
return;
while(source.tagName!="TD")
source=source.parentElement;
source=source.parentElement;
cs  =  source.children;
//alert(cs.length);
if  (cs[1].style.backgroundColor!=clickcolor&&source.id!="nc")
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor=clickcolor;
}
else
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor="";
}
}
</script>
</head>

<body>

<form name="form" action="" method="post">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="30" background="../images/tab_05.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="5" height="30"><img src="../images/tab_03.gif" width="5" height="30" /></td>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="70%" valign="middle"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="5%"><div align="center"><img src="../images/tb.gif" width="16" height="16" /></div></td>
                <td width="95%" class="STYLE1">&nbsp;</td>
              </tr>
            </table></td>
            <td width="54%"><span class="STYLE1"><span class="STYLE3">
</span></span>
              <table border="0" align="right" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="60"><table width="87%" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                      <td class="STYLE1"><div align="center">
                      </div></td>
                      <td class="STYLE1"><div align="center"></div></td>
                    </tr>
                  </table></td>
                  <td width="60"><table width="90%" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                      <td class="STYLE1"><div align="center"><img src="../images/22.gif" width="14" height="14" /></div></td>
                      <td class="STYLE1"><a href="yonghuadd.jsp"><div align="center">新增</div></a></td>
                    </tr>
                  </table></td>
                  <td width="60">&nbsp;</td>
                </tr>
            </table></td></tr>
        </table></td>
        <td width="16"><img src="../images/tab_07.gif" width="16" height="30" /></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="8" background="../images/tab_5.gif">&nbsp;</td>
        <td><table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="b5d6e6" onMouseOver="changeto()"  onMouseOut="changeback()">
        
		<tr>
<td width="3%" height="22" background="images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">序号</span></div></td>
 <td width="5%" height="22" background="images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">用户编号</span></div></td>
 <td width="5%" height="22" background="images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">用户名</span></div></td>
 <td width="5%" height="22" background="images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">密码</span></div></td>
 <td width="5%" height="22" background="images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">姓名</span></div></td>
 <td width="5%" height="22" background="images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">权限</span></div></td>
 <td width="5%" height="22" background="images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">电话</span></div></td>
 <td width="5%" height="22" background="images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">地址</span></div></td>
 <td width="17%" height="22" background="images/bg.gif" bgcolor="#FFFFFF" class="STYLE1"><div align="center">操作</td>
</tr>

		
       
		  <%
		  int i=1;
		  while(rs.next()){
		  %>
		  <tr>
<td height="20" bgcolor="#FFFFFF"><div align="center" class="STYLE1"><%=i%></td>
 <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1"><%=rs.getString("yhid")%></span></div></td>
 <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1"><%=rs.getString("yhm")%></span></div></td>
 <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1"><%=rs.getString("mm")%></span></div></td>
 <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1"><%=rs.getString("xm")%></span></div></td>
 <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1"><%=rs.getString("qx")%></span></div></td>
 <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1"><%=rs.getString("dh")%></span></div></td>
 <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1"><%=rs.getString("dz")%></span></div></td>
<td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE4"><img src="../images/edt.gif" width="16" height="16" /><a href="yonghuedit.jsp?keyid=<%=rs.getString("yhid")%>">编辑</a>&nbsp; &nbsp;<img src="../images/del.gif" width="16" height="16" /><a href="yonghudel.jsp?keyid=<%=rs.getString("yhid")%>"   onClick="javascript:if(confirm('是否删除')){return true;}else{return false;}">删除</a>&nbsp; &nbsp;<img src="../images/tb.gif" width="16" height="16" /><a href="yonghudetail.jsp?keyid=<%=rs.getString("yhid")%>">查看</a></span></div></td>
</tr>

		  <%
		  i++;
		  }
		  %>
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
            <td class="STYLE4">&nbsp;&nbsp;共有 <%=i-1%>条记录</td>
            <td>&nbsp;</td>
          </tr>
        </table></td>
        <td width="16"><img src="../images/tab_20.gif" width="16" height="35" /></td>
      </tr>
    </table></td>
  </tr>
</table>
</form>
</body>
</html>
