<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.util.*"%>
<%
request.setCharacterEncoding("gb2312");
DBO db=new DBO();

//菜品信息查询
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
<tr><td height="110" align="center">
<table border="0" cellpadding="0" cellspacing="0" id="table1" width="100%">
<tr><td height="5" align="center"></td></tr>
<tr><td height="5" align="center" colspan="5" bgcolor="#D6E5F2"></td></tr>
<tr>
<%
String sql1="select * from shangpin where 1=1 and sftj='是' limit 0,4 ";

db.open();
ResultSet rs1=db.query(sql1);
%>
<%
while(rs1.next()){
%>
<td width="20%" height="130" align="center">
<a href="onesp.jsp?spid=<%=rs1.getString("spid")%>">
<img border="0" onload="DrawImage(this)" src="upload/<%=rs1.getString("tp")%>"  width="160" height="160" onerror="this.src='img/noimage.jpg'"></a></td>
<td width="20%" height="130" align="center"></td>

<%
}
%>


</tr>
<tr><td height="5" align="center" colspan="5" bgcolor="#D6E5F2"></td></tr>
<tr><td height="5" align="center"></td></tr>
</table></td></tr>


<tr> <td  height="32" align="center" background="images/right_h1.gif">
<table width="100%" border="0" cellspacing="0">
<tr><td width="5%">&nbsp;
</td>
  <td width="63%" height="30"><font color="#ffffff" class="nav"><b></b></font> &nbsp;&nbsp;欢迎选购菜品<font color="#ffffff">&nbsp;</font></td>
  <td width="32%">
             
</td>
</tr></table></td>
</tr>


<tr> <td width="100%" align="center">
<table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#E7E7E7">
<%
			
String sql="select * from shangpin where 1=1 ";

db.open();
ResultSet rs=db.query(sql);
			
		int Page=0;	
		int maxPage=0;
					if(rs!=null){
					String str=(String)request.getParameter("Page");
if(str==null){
str="0";
}
int pagesize=4;
rs.last();
int RecordCount=rs.getRow(); 

maxPage=(RecordCount%pagesize==0)?(RecordCount/pagesize):(RecordCount/pagesize+1);
 Page=Integer.parseInt(str);
if(Page<1){
 	Page=1;
}else{
	if(Page>maxPage){
	Page=maxPage;
}}
rs.absolute((Page-1)*pagesize+1);
for(int i=1;i<=pagesize;i++){
					%>

<tr><td height="134" align="center" bgcolor="#FFFFFF"><table width="730" border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse">
<tr><td align="center" height="100" rowspan="5" width="189"><a class=photo target="" href="onesp.jsp?spid=<%=rs.getString("spid")%>"><img border="0" onload="DrawImage(this)" src="upload/<%=rs.getString("tp")%>" onerror="this.src='img/noimage.jpg'" width="200" height="200"></a></td>
<td height="25" colspan="2"><a style="font-size: 11pt; color:000080; font-weight: bold" target="_blank" href="onesp.jsp?spid=<%=rs.getString("spid")%>">菜品名称：<%=rs.getString("sp")%>【<%=rs.getString("lb")%>】</a></td></tr>
<tr><td height="25" colspan="2"><p style="line-height: 150%; margin-top: 8px; margin-bottom: 8px"><%=rs.getString("ms")%></p></td></tr>
<tr><td height="25" style="font-size: 10pt" colspan="2">价格：￥<%=rs.getString("jg")%>元&nbsp;&nbsp; &nbsp;&nbsp; 产地：<font color="#FF0000"><%=rs.getString("cd")%></font></td></tr>
<tr>
    <td height="38" width="243"><div align="center"><a href="onesp.jsp?spid=<%=rs.getString("spid")%>"><img border="0" src="img/order.gif" width="79" height="23"></a> 
      </div></td>
<td height="7" width="290">&nbsp;</td>
</tr></table>
</td>
</tr>
<%
try{
	if(!rs.next()){break;}
}catch(Exception e){System.out.println(e.toString());}
}
}
%>

<tr>
    <td height="38" width="243"><div align="center"><table width="98%"  border="0" cellspacing="0" cellpadding="0">
  <tr>
 <td align="right">当前页数：[<%=Page%>/<%=maxPage%>]&nbsp;
	<%if(Page>1){%>
<a href="index.jsp?Page=1">第一页</a>　<a href="index.jsp?Page=<%=Page-1%>">上一页</a>
	<% }
if(Page<maxPage){%>
<a href="index.jsp?Page=<%=Page+1%>">下一页</a>　<a href="index.jsp?Page=<%=maxPage%>">最后一页&nbsp;</a>
	<%}	%>
</td>  </tr>
</table></div></td>
<td height="7" width="290">&nbsp;</td>
</tr></table>
</td>
</tr>

</table></td></tr>

<tr><td width="98%" height="23" align="center">&nbsp;</td>
</tr></table></td>
</tr></table></div><jsp:include page="bottom.jsp"/>