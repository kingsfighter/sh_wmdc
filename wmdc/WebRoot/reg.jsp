<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>

<jsp:include page="header.jsp"/>
<script language="javascript">
function regch(){
if(form.yhm.value==""){
alert('�û�������Ϊ��!')
form.yhm.focus();
return false;
}
if(form.mm.value==""){
alert('���벻��Ϊ��!')
form.mm.focus();
return false;
}
if(form.xm.value==""){
alert('��ʵ��������Ϊ��!')
form.xm.focus();
return false;
}
if(form.dh.value==""){
alert('�绰����Ϊ��!')
form.dh.focus();
return false;
}
if(form.dz.value==""){
alert('��ַ����Ϊ��!')
form.dz.focus();
return false;
}
if(form.dh.value.length<7||form.dh.value.length>13){
alert("����ĵ绰���벻��");
return;
}
if(form.mm.value.length<6||form.mm.value.length>21){
alert("��������벻��");
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
                alert("�������Email���Ϸ�������������!"); 
        }   
</script>
<center>
<table width="743" border="0" cellpadding="0" style="border-collapse: collapse">
<tr><td width="743" height="48" style="border-top: 2px solid #FFFFFF" background="img/reg1.gif"><p style="margin-left: 40px">���û�ע�᣺</td></tr>
<tr><td background="img/regbg.gif" align="center">
<table width="90%" border="0" cellpadding="5" cellspacing="0" style="margin-bottom: 6"><form action="" method="post" name="form" ><tr> 
<td align="right" width="150">�� �� ���� </td>
<td><input style="FONT-SIZE: 12px; WIDTH: 210px" type="text" name="yhm" size="20" class=input><font color="#FF0000"> *</font></td></tr>
<tr><td align="right" width="150">��&nbsp;&nbsp;&nbsp; �룺</td>
<td><input style="FONT-SIZE: 12px; WIDTH: 210px" type="password" name="mm" size="20" class=input><font color="#FF0000"> *</font></td></tr>

<tr>
  <td align="right">��ʵ����:</td>
  <td><input style="FONT-SIZE: 12px; WIDTH: 210px" type="text" name="xm" size="20" class="input" /></td>
</tr>
<tr>
  <td align="right">�绰��</td>
  <td><input style="FONT-SIZE: 12px; WIDTH: 210px" type="text" name="dh" size="20" class="input" /></td>
</tr>
<tr>
  <td align="right">��ַ:</td>
  <td><input style="FONT-SIZE: 12px; WIDTH: 210px" type="text" name="dz" size="20" class="input" /></td>
</tr>

<tr><td align="right" width="150"></td><td><input type="button" src="img/regbutton.gif" value="�ύ" onclick="regch();"></td></tr>
<tr><td align="right" width="150"></td>
<td>�ύע��ǰ���Ķ�����ע��Э�飬�ύע���ʾͬ������Э�飡</td></tr></form></table></td></tr>
<tr><td width="100%"><img border="0" src="img/reg2.gif"></td></tr>
<tr><td width="743" height="48" style="border-top: 2px solid #FFFFFF" background="img/reg1.gif"><p style="margin-left: 40px">�û�ע��Э�飺&nbsp; ���������Ķ�ע��Э�飬���ϵ�����ڱ�վ���е�Ȩ��������</td></tr>
<tr><td width="100%" height="50" background="img/regbg.gif" align="center">
<table border="0" width="90%" cellspacing="0" cellpadding="0"><tr><td><table border="0" width="90%" cellspacing="0" cellpadding="0">
  <tbody>
    <tr>
      <td><p><strong>����ע��ǰ�����Ķ���Աע��Э��<br>
        </strong>��ӭ�����뱾վ��Ϊά�����Ϲ������������ȶ��������Ծ������������<br>
        һ���������ñ�վΣ�����Ұ�ȫ��й¶�������ܣ������ַ�������Ἧ��ĺ͹���ĺϷ�Ȩ�棬�������ñ�վ���������ƺʹ���������Ϣ��?<br>
        ��һ��ɿ�����ܡ��ƻ��ܷ��ͷ��ɡ���������ʵʩ�ģ�<br>
        ������ɿ���߸�������Ȩ���Ʒ���������ƶȵģ�<br>
        ������ɿ�����ѹ��ҡ��ƻ�����ͳһ�ģ�<br>
        ���ģ�ɿ�������ޡ��������ӣ��ƻ������Ž�ģ�<br>
        ���壩�������������ʵ��ɢ��ҥ�ԣ������������ģ�<br>
        ����������⽨���š����ࡢɫ�顢�Ĳ�����������ɱ���ֲ�����������ģ�<br>
        ���ߣ���Ȼ�������˻���������ʵ�̰����˵ģ����߽����������⹥���ģ�<br>
        ���ˣ��𺦹��һ��������ģ�<br>
        ���ţ�����Υ���ܷ��ͷ�����������ģ�<br>
        ��ʮ��������ҵ�����Ϊ�ġ�<br>
        �����������أ����Լ������ۺ���Ϊ����</p></td>
    </tr>
  </tbody>
</table><p style="line-height: 150%; margin: 5"></td></tr></table>
</td></tr>
<tr><td width="100%"><img border="0" src="img/reg2.gif"></td></tr></table></center><jsp:include page="bottom.jsp"/>