<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.util.*"%>
<%
request.setCharacterEncoding("gb2312");
DBO db=new DBO();

//视频信息查询
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
  <td width="63%" height="30"><font color="#ffffff" class="nav"><b></b></font> &nbsp;&nbsp;欢迎选购菜品<font color="#ffffff">&nbsp;</font></td>
  <td width="32%">
            
           
</td>
</tr></table></td>
</tr>


<tr> <td width="100%" align="center">
<table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#E7E7E7">
<%
String lb=(String)request.getParameter("lb");
String sql="select * from shangpin where 1=1 ";
String s="select count(1) as num from shangpin where 1=1 ";
String spmc=(String)request.getParameter("spmc");
if(spmc!=null){
if(!spmc.equals("")){
sql+=" and sp like '%"+spmc+"%'";
s+=" and sp like '%"+spmc+"%'";
}
}
if(lb!=null){
if(!lb.equals("")){
sql+=" and lb in (select lb from splb where splbid='"+lb+"')";
s+=" and lb in (select lb from splb where splbid='"+lb+"')";

}
}


System.out.println(s);
ResultSet r=db.query(s);
if(r.next()){
if(r.getInt("num")>0){


System.out.println(sql);
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
<tr><td align="center" height="100" rowspan="5" width="189"><a class=photo target="" href="onesp.jsp?spid=<%=rs.getString("spid")%>"><img border="0" onload="DrawImage(this)" src="upload/<%=rs.getString("tp")%>" onerror="this.src='img/noimage.jpg'"  width="200" height="200" /></a></td>
<td height="25" colspan="2"><a style="font-size: 11pt; color:000080; font-weight: bold" target="_blank" href="onesp.jsp?spid=<%=rs.getString("spid")%>">菜品名称：<%=rs.getString("sp")%>【<%=rs.getString("lb")%>】</a></td></tr>
<tr><td height="25" colspan="2"><p style="line-height: 150%; margin-top: 8px; margin-bottom: 8px"><%=rs.getString("ms")%></p></td></tr>
<tr><td height="25" style="font-size: 10pt" colspan="2">价格：￥<%=rs.getString("jg")%>元&nbsp;&nbsp; &nbsp;&nbsp; 厨艺：<font color="#FF0000"><%=rs.getString("cd")%></font></td></tr>
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
<a href="shangpin.jsp?Page=1">第一页</a>　<a href="shangpin.jsp?Page=<%=Page-1%>">上一页</a>
	<% }
if(Page<maxPage){%>
<a href="shangpin.jsp?Page=<%=Page+1%>">下一页</a>　<a href="shangpin.jsp?Page=<%=maxPage%>">最后一页&nbsp;</a>
	<%}	%>
</td>  </tr>
</table>
      </div></td>
<td height="7" width="290">&nbsp;</td>
</tr></table>
</td>
</tr>
<% } }%>

</table></td></tr>

<tr><td width="98%" height="23" align="center">&nbsp;</td>
</tr></table></td>
</tr></table></div><jsp:include page="bottom.jsp"/>