<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.util.*"%>
<%@ page import="com.dao.xinwenDao"%>
<%
request.setCharacterEncoding("gb2312");
DBO db=new DBO();
String keyid=(String)request.getParameter("keyid");
String sql="";
String   bt="",nr="",sj="",yh="";
ResultSet rs=null;
	xinwenDao dao=new xinwenDao();


		
		if(keyid!=null&&!keyid.equals("")){
			
			sql+=" and xwid='"+keyid+"'";
			
		}
		
			rs=dao.qlist(sql);


if(rs.next()){
 bt=rs.getString("bt");
nr=rs.getString("nr");
sj=rs.getString("sj");
yh=rs.getString("yh");

}
//留言信息查询
%>
<jsp:include page="header.jsp"/>
<div align="center">
<table width=980 border=0 cellpadding=0 cellspacing=0 bgcolor="#FFFFFF">
<tr><td width=250 valign="top">

<table width="243" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="8"></td>
  </tr>
</table>
<jsp:include page="leftlogin.jsp"/><br>
<jsp:include page="leftlx.jsp"/>
</td>
<td width="730" align="right" valign="top"> 
<table width="100%" height="5" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
<tr>
  <td align="right"><a href="5"target="_blank"></a> </td>
</tr>


<tr> <td  height="32" align="center" background="images/right_h1.gif">
<table width="100%" border="0" cellspacing="0">
<tr><td width="5%">&nbsp;
</td>
  <td width="63%" height="30"><font color="#ffffff" class="nav"><b></b></font> &nbsp;&nbsp;新闻详情<font color="#ffffff">&nbsp;</font></td>
  <td width="32%">
             
  </script>
</td>
</tr></table></td>
</tr>



<tr><td width="98%" height="23" align="center"><table width="100%"  border="0" cellpadding="5" cellspacing="1" bgcolor="#A5C1D7">
  <tr>
    <td height="27" background="images/message_bg2.gif" ><p style="margin-left: 312px"><strong><font color="#ffffff">详情</font></strong></td>
  </tr>
  <tr>
    <td bgcolor="#FFFFFF"><table border="0" cellpadding="0" cellspacing="5" width="630" bgcolor="#EEEEEE">
      <tr>
        <td align="center" bgcolor="#EEEEEE"><table border="0" cellpadding="0" cellspacing="0" width="100%" background="img/pattern.gif" style="border: 1px solid #C0C0C0">
           
            <form method="post" action="liuyando.jsp">
           <tr>
<th>标题 </th><td><%=bt%></td>
</tr>
<tr>
<th>内容</th><td><%=nr%></td>
</tr>
<tr>
<th>时间</th><td><%=sj%></td>
</tr>
<tr>
<th>发布人</th><td><%=yh%></td>
</tr>

               
              <tr>
                <td height="30" align="right" width="100"></td>
                <td height="30" width="525">&nbsp;
			
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