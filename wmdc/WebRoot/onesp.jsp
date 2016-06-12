<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.util.*"%>
<%
request.setCharacterEncoding("gb2312");
DBO db=new DBO();
String   sp="",lb="",cd="",jg="",ms="",tp="",sftj="",sl="";
String keyid=(String)request.getParameter("spid");
String sql="select * from shangpin where spid="+keyid;
ResultSet rs=null;
db.open();
try{
System.out.println("sql=="+sql);
rs=db.query(sql);

/*
菜品信息查看页面
*/
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
  <td align="right"></td>
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


<tr>
  <td height="134" align="center" bgcolor="#FFFFFF"><table width="730" align="center" cellpadding="0" cellspacing="0">
    <tr>
      <td align="center" width="300" rowspan="2" height="220"><table width="206" height="206" border="0" cellpadding="5" cellspacing="2" bgcolor="#CBDADE" id="table2">
          <tr>
            <td align="center" bgcolor="#FFFFFF"><img style="CURSOR: hand" src="upload/<%=tp%>" onerror="this.src='img/noimage.jpg';cur_pic_id='img/noimage.jpg';" name="rImage" onClick="javascript:window.open(cur_pic_id,'','')"  width="200" border="0"></td>
          </tr>
      </table></td>
      <td align="center" width="450" valign="top"><table cellspacing="0" cellpadding="5" width="450">
          <tr>
            <td height="26" style="font-size:12pt; color: #000080; font-weight: bold" colspan="2"><b>菜品名称：<%=sp%></b></td>
          </tr>
          <tr>
            <td height="26" colspan="2">菜品类型：<%=lb%> 菜品编号：<%=keyid%> 厨艺：<font color="#D03430"><%=cd%></font></td>
          </tr>
          <tr>
            <td height="26" colspan="2">单价：￥<%=jg%>元&nbsp;&nbsp;  剩余数量： <%=sl%></td>
          </tr>
          <form action="buy.jsp" method=post>
           <input type="hidden" name="sp" value="<%=keyid%>">
           <input type="hidden" name="jg" value="<%=jg%>">
        
            <tr>
              <td width="50" height="26">定购数量：
                <input type="text" name="sl" size="1" value="1" class="input"></td>
              <td width="330" height="26"><input type=image src="img/order.gif" name="I1">
                &nbsp; </td>
            </tr>
          </form>
     
          <tr>
            <td height="26" colspan="2">&nbsp;</td>
          </tr>
         
      </table></td>
    </tr>
    <tr>
      <td><p>&nbsp;</p></td>
    </tr>
  </table></td>
</tr>

<tr>
  <td height="134" align="center" bgcolor="#FFFFFF"><table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#CBDFEB">
   
    <tr>
      <td height=36 background="images/type_bg.gif" bgcolor="#FFFFFF" class="nav"><p style="margin-left: 312px"> <img src="images/zhuhe_li.gif" width="18" height="18" align="absmiddle"> 简介：</td>
    </tr>
    <tr>
      <td align="center" bgcolor="#FFFFFF"><table border="0" cellpadding="0" cellspacing="0" width="95%" height="50">
          <tr>
            <td><%=ms%></td>
          </tr>
      </table></td>
    </tr>
    <tr>
      <td height=5 bgcolor="#FFFFFF"></td>
    </tr>

   
    <tr>
      <td height=20 align="center" bgcolor="#FFFFFF"><table width="100%"  border="0" cellpadding="5" cellspacing="1" bgcolor="#A5C1D7">
        <tr>
          <td height="27" background="images/message_bg2.gif" ><p style="margin-left: 312px"><font color="#ffffff" class="nav"><strong>产品评论：</strong></font></p></td>
        </tr>
        <tr>
          <td bgcolor="#FFFFFF"><table width="700" border="0" align="center" cellpadding="0" cellspacing="0" id="table35">
              <tr>
                <td height="30" bgcolor="#EEEEEE" colspan="2" width="250" class="yin"  style="font-size: 10pt; font-weight: bold; color:#FA860B">&nbsp;</td>
                <td align="middle" width="200" bgcolor="#EEEEEE"></td>
                <td align="middle" width="150" bgcolor="#EEEEEE"></td>
              </tr>
              <tr>
                <td align="middle" height="2" bgcolor="#FFAA00" colspan="5"></td>
              </tr>
              <tr>
                <td align="middle" width="250" height="30" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; border-bottom: 1px solid #CCCCCC" bgcolor="#F5F5F5">编号</td>
                <td style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; border-bottom: 1px solid #CCCCCC" bgcolor="#F5F5F5" width="250">评论</td>
                <td width="200" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; border-bottom: 1px solid #CCCCCC" bgcolor="#F5F5F5">评价人</td>
                <td width="150" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; border-bottom: 1px solid #CCCCCC" bgcolor="#F5F5F5">时间</td>
              </tr>
              <%
   String sql1="select * from pinglun where 1=1 and sp='"+keyid+"'";
db.open();
System.out.println("sql1=="+sql1);
ResultSet rs1=db.query(sql1);
while(rs1.next()){
   %>
              <tr>
                <td align="middle" width="250" height="30" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; border-bottom: 1px solid #CCCCCC" bgcolor="#F5F5F5"><%=rs1.getString("plid")%></td>
                <td style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; border-bottom: 1px solid #CCCCCC" width="250" bgcolor="#F5F5F5"><%=rs1.getString("pl")%></td>
                <td width="200" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; border-bottom: 1px solid #CCCCCC" bgcolor="#F5F5F5"><%=rs1.getString("yh")%></td>
                <td width="150" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; border-bottom: 1px solid #CCCCCC" bgcolor="#F5F5F5"><%=rs1.getString("sj")%></td>
              </tr>
              <%
	 }
	 %>
            </table>
              <br />
			
              <table border="0" cellpadding="0" cellspacing="5" width="630" bgcolor="#EEEEEE">
                <tr>
                  <td align="center" bgcolor="#EEEEEE">  <%
			  String yhm=(String)session.getAttribute("yhm");
			  sql="select * from ddmx where yh='"+yhm+"' and sp='"+keyid+"' and zt='已处理' ";
			  db.open();
		rs=db.query(sql);
		if(rs.next()){
			  %><table border="0" cellpadding="0" cellspacing="0" width="100%" background="img/pattern.gif" style="border: 1px solid #C0C0C0">
                      <form method="post" action="pinglundo.jsp">
                        <tr class="">
                          <td width="40%"  align="right">用户</td>
                          <td width="60%"><input type="text" name="yh" value="<%=session.getAttribute("yhm")%>" /></td>
                        </tr>
                        <input type="hidden" name="sp" value="<%=keyid%>" />
                        <tr class="">
                          <td width="40%"  align="right">评价</td>
                          <td width="60%"><input type="text" name="pj" value="" /></td>
                        </tr>
                        <tr class="">
                          <td width="40%"  align="right">时间</td>
                          <td width="60%"><input type="text" name="sj" value="<%=StaticMethod.getStringDate()%>" /></td>
                        </tr>
                        <tr>
                          <td height="30" align="right" width="100"></td>
                          <td height="30" width="525">&nbsp;
                              <input type="image" src="img/regbutton.gif" name="submit" /></td>
                        </tr>
                      </form>
                  </table>
				  <%
				  }
				  
				  
				  }catch(Exception e){
				  System.out.println(e.toString());
				  }
				  %>
				  
				  </td>
                </tr>
            </table></td>
        </tr>
      </table></td>
    </tr>
  </table></td>
</tr>

</table></td></tr>

<tr><td width="98%" height="23" align="center">
    <br>
	
	</td>
  </tr>
</table></td>
</tr></table></td>
</tr></table></div><jsp:include page="bottom.jsp"/>