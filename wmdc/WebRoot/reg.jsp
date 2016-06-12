<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>

<jsp:include page="header.jsp"/>
<script language="javascript">
function regch(){
if(form.yhm.value==""){
alert('用户名不能为空!')
form.yhm.focus();
return false;
}
if(form.mm.value==""){
alert('密码不能为空!')
form.mm.focus();
return false;
}
if(form.xm.value==""){
alert('真实姓名不能为空!')
form.xm.focus();
return false;
}
if(form.dh.value==""){
alert('电话不能为空!')
form.dh.focus();
return false;
}
if(form.dz.value==""){
alert('地址不能为空!')
form.dz.focus();
return false;
}
if(form.dh.value.length<7||form.dh.value.length>13){
alert("输入的电话号码不对");
return;
}
if(form.mm.value.length<6||form.mm.value.length>21){
alert("输入的密码不对");
return;
}
//isEmail(form.email.value);
form.action="yonghudo.jsp";
form.submit();
}

       function isEmail(strEmail)
        {
            if (strEmail.search(/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/) != -1)
                return true;
            else
                alert("您输入的Email不合法，请重新输入!"); 
        }   
</script>
<center>
<table width="743" border="0" cellpadding="0" style="border-collapse: collapse">
<tr><td width="743" height="48" style="border-top: 2px solid #FFFFFF" background="img/reg1.gif"><p style="margin-left: 40px">新用户注册：</td></tr>
<tr><td background="img/regbg.gif" align="center">
<table width="90%" border="0" cellpadding="5" cellspacing="0" style="margin-bottom: 6"><form action="" method="post" name="form" ><tr> 
<td align="right" width="150">用 户 名： </td>
<td><input style="FONT-SIZE: 12px; WIDTH: 210px" type="text" name="yhm" size="20" class=input><font color="#FF0000"> *</font></td></tr>
<tr><td align="right" width="150">密&nbsp;&nbsp;&nbsp; 码：</td>
<td><input style="FONT-SIZE: 12px; WIDTH: 210px" type="password" name="mm" size="20" class=input><font color="#FF0000"> *</font></td></tr>

<tr>
  <td align="right">真实姓名:</td>
  <td><input style="FONT-SIZE: 12px; WIDTH: 210px" type="text" name="xm" size="20" class="input" /></td>
</tr>
<tr>
  <td align="right">电话：</td>
  <td><input style="FONT-SIZE: 12px; WIDTH: 210px" type="text" name="dh" size="20" class="input" /></td>
</tr>
<tr>
  <td align="right">地址:</td>
  <td><input style="FONT-SIZE: 12px; WIDTH: 210px" type="text" name="dz" size="20" class="input" /></td>
</tr>

<tr><td align="right" width="150"></td><td><input type="button" src="img/regbutton.gif" value="提交" onclick="regch();"></td></tr>
<tr><td align="right" width="150"></td>
<td>提交注册前请阅读如下注册协议，提交注册表示同意以下协议！</td></tr></form></table></td></tr>
<tr><td width="100%"><img border="0" src="img/reg2.gif"></td></tr>
<tr><td width="743" height="48" style="border-top: 2px solid #FFFFFF" background="img/reg1.gif"><p style="margin-left: 40px">用户注册协议：&nbsp; （请认真阅读注册协议，这关系到您在本站享有的权利和义务）</td></tr>
<tr><td width="100%" height="50" background="img/regbg.gif" align="center">
<table border="0" width="90%" cellspacing="0" cellpadding="0"><tr><td><table border="0" width="90%" cellspacing="0" cellpadding="0">
  <tbody>
    <tr>
      <td><p><strong>继续注册前请先阅读会员注册协议<br>
        </strong>欢迎您加入本站，为维护网上公共秩序和社会稳定，请您自觉遵守以下条款：<br>
        一、不得利用本站危害国家安全、泄露国家秘密，不得侵犯国家社会集体的和公民的合法权益，不得利用本站制作、复制和传播下列信息：?<br>
        （一）煽动抗拒、破坏宪法和法律、行政法规实施的；<br>
        （二）煽动颠覆国家政权，推翻社会主义制度的；<br>
        （三）煽动分裂国家、破坏国家统一的；<br>
        （四）煽动民族仇恨、民族歧视，破坏民族团结的；<br>
        （五）捏造或者歪曲事实，散布谣言，扰乱社会秩序的；<br>
        （六）宣扬封建迷信、淫秽、色情、赌博、暴力、凶杀、恐怖、教唆犯罪的；<br>
        （七）公然侮辱他人或者捏造事实诽谤他人的，或者进行其他恶意攻击的；<br>
        （八）损害国家机关信誉的；<br>
        （九）其他违反宪法和法律行政法规的；<br>
        （十）进行商业广告行为的。<br>
        二、互相尊重，对自己的言论和行为负责。</p></td>
    </tr>
  </tbody>
</table><p style="line-height: 150%; margin: 5"></td></tr></table>
</td></tr>
<tr><td width="100%"><img border="0" src="img/reg2.gif"></td></tr></table></center><jsp:include page="bottom.jsp"/>