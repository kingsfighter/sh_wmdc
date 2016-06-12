<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
String yhm="";
if(session.getAttribute("yhm")!=null){
yhm=(String)session.getAttribute("yhm");
}
System.out.println("left-yhm="+yhm);
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>无标题文档</title>
</head>

<body>

<style type="text/css">
<!--
body {margin:0px;}
.STYLE1 {font-size: 12px;color: #FFFFFF;}
.STYLE3 {font-size: 12px;color: #033d61;}
-->
</style>
<style type="text/css">
.menu_title SPAN {	FONT-WEIGHT: bold; LEFT: 3px; COLOR: #ffffff; POSITION: relative; TOP: 2px }
.menu_title2 SPAN {	FONT-WEIGHT: bold; LEFT: 3px; COLOR: #FFCC00; POSITION: relative; TOP: 2px}
a:link {color: #000000;}
a:visited {color: #000000;}
a:hover {color: #000000;}
</style>


<table width="165" height="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td height="28" background="img/main_40.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="19%">&nbsp;</td>
        <td width="81%" height="20"><span class="STYLE1">管理菜单</span></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td valign="top"><table width="151" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td>
		
		
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>            </tr>
         

        </table>
		
		
		
		</td>
      </tr>
      <tr>
        <td>


		




		
		
		
		
		
		
		
		
		




		</td>
      </tr>
      <tr>
        <td>
		
		
		
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="23" background="img/main_47.gif" id="imgmenu1" class="menu_title" onmouseover="this.className='menu_title5';" onclick="showsubmenu(1)" onmouseout="this.className='menu_title';" style="cursor:hand"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td width="18%">&nbsp;</td>
                  <td width="82%" class="STYLE1">用户管理</td>
                </tr>
            </table></td>
          </tr>
          <tr>
            <td background="img/main_51.gif" id="submenu1"  style="DISPLAY: none"><div class="sec_menu" >
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td><table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
                        <tr>
                          <td height="23"><div align="center"><img src="img/left.gif" width="10" height="10" /></div></td>
                          <td height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
                              <tr>
                                <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3"><a href="yonghu/yonghuadd.jsp" target="rightFrame">添加用户</a></span></td>
                              </tr>
                          </table></td>
                        </tr>
                             <tr>
                          <td height="23"><div align="center"><img src="img/left.gif" width="10" height="10" /></div></td>
                          <td height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
                              <tr>
                                <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3"><a href="yonghu/yonghulist.jsp" target="rightFrame">用户管理</a></span></td>
                              </tr>
                          </table></td>
                        </tr>

                    </table></td>
                  </tr>
                  <tr>
                    <td height="5"><img src="img/main_52.gif" width="151" height="5" /></td>
                  </tr>
                </table>
            </div></td>
          </tr>
        </table>
	

		<table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="23" background="img/main_47.gif" id="imgmenu2" class="menu_title" onmouseover="this.className='menu_title5';" onclick="showsubmenu(2)" onmouseout="this.className='menu_title';" style="cursor:hand"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td width="18%">&nbsp;</td>
                  <td width="82%" class="STYLE1">权限管理</td>
                </tr>
            </table></td>
          </tr>
          <tr>
            <td background="img/main_51.gif" id="submenu2"  style="DISPLAY: none"><div class="sec_menu" >
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td><table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
                        <tr>
                          <td height="23"><div align="center"><img src="img/left.gif" width="10" height="10" /></div></td>
                          <td height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
                              <tr>
                                <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3"><a href="quanxian/quanxianadd.jsp" target="rightFrame">添加权限</a></span></td>
                              </tr>
                          </table></td>
                        </tr>
                             <tr>
                          <td height="23"><div align="center"><img src="img/left.gif" width="10" height="10" /></div></td>
                          <td height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
                              <tr>
                                <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3"><a href="quanxian/quanxianlist.jsp" target="rightFrame">权限管理</a></span></td>
                              </tr>
                          </table></td>
                        </tr>

                    </table></td>
                  </tr>
                  <tr>
                    <td height="5"><img src="img/main_52.gif" width="151" height="5" /></td>
                  </tr>
                </table>
            </div></td>
          </tr>
        </table>
	

		<table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="23" background="img/main_47.gif" id="imgmenu3" class="menu_title" onmouseover="this.className='menu_title5';" onclick="showsubmenu(3)" onmouseout="this.className='menu_title';" style="cursor:hand"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td width="18%">&nbsp;</td>
                  <td width="82%" class="STYLE1">菜品类别管理</td>
                </tr>
            </table></td>
          </tr>
          <tr>
            <td background="img/main_51.gif" id="submenu3"  style="DISPLAY: none"><div class="sec_menu" >
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td><table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
                        <tr>
                          <td height="23"><div align="center"><img src="img/left.gif" width="10" height="10" /></div></td>
                          <td height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
                              <tr>
                                <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3"><a href="splb/splbadd.jsp" target="rightFrame">添加菜品类别</a></span></td>
                              </tr>
                          </table></td>
                        </tr>
                             <tr>
                          <td height="23"><div align="center"><img src="img/left.gif" width="10" height="10" /></div></td>
                          <td height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
                              <tr>
                                <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3"><a href="splb/splblist.jsp" target="rightFrame">菜品类别管理</a></span></td>
                              </tr>
                          </table></td>
                        </tr>

                    </table></td>
                  </tr>
                  <tr>
                    <td height="5"><img src="img/main_52.gif" width="151" height="5" /></td>
                  </tr>
                </table>
            </div></td>
          </tr>
        </table>
	

		<table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="23" background="img/main_47.gif" id="imgmenu4" class="menu_title" onmouseover="this.className='menu_title5';" onclick="showsubmenu(4)" onmouseout="this.className='menu_title';" style="cursor:hand"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td width="18%">&nbsp;</td>
                  <td width="82%" class="STYLE1">菜品管理</td>
                </tr>
            </table></td>
          </tr>
          <tr>
            <td background="img/main_51.gif" id="submenu4"  style="DISPLAY: none"><div class="sec_menu" >
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td><table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
                        <tr>
                          <td height="23"><div align="center"><img src="img/left.gif" width="10" height="10" /></div></td>
                          <td height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
                              <tr>
                                <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3"><a href="shangpin/shangpinadd.jsp" target="rightFrame">添加菜品</a></span></td>
                              </tr>
                          </table></td>
                        </tr>
                             <tr>
                          <td height="23"><div align="center"><img src="img/left.gif" width="10" height="10" /></div></td>
                          <td height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
                              <tr>
                                <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3"><a href="shangpin/shangpinlist.jsp" target="rightFrame">菜品管理</a></span></td>
                              </tr>
                          </table></td>
                        </tr>

                    </table></td>
                  </tr>
                  <tr>
                    <td height="5"><img src="img/main_52.gif" width="151" height="5" /></td>
                  </tr>
                </table>
            </div></td>
          </tr>
        </table>
	

		<table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="23" background="img/main_47.gif" id="imgmenu5" class="menu_title" onmouseover="this.className='menu_title5';" onclick="showsubmenu(5)" onmouseout="this.className='menu_title';" style="cursor:hand"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td width="18%">&nbsp;</td>
                  <td width="82%" class="STYLE1">订单管理</td>
                </tr>
            </table></td>
          </tr>
          <tr>
            <td background="img/main_51.gif" id="submenu5"  style="DISPLAY: none"><div class="sec_menu" >
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td><table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
                        <tr>
                          <td height="23"><div align="center"><img src="img/left.gif" width="10" height="10" /></div></td>
                          <td height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
                              <tr>
                                <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3"><a href="dingdan/dingdanadd.jsp" target="rightFrame">添加订单</a></span></td>
                              </tr>
                          </table></td>
                        </tr>
                             <tr>
                          <td height="23"><div align="center"><img src="img/left.gif" width="10" height="10" /></div></td>
                          <td height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
                              <tr>
                                <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3"><a href="dingdan/dingdanlist.jsp" target="rightFrame">订单管理</a></span></td>
                              </tr>
                          </table></td>
                        </tr>

                    </table></td>
                  </tr>
                  <tr>
                    <td height="5"><img src="img/main_52.gif" width="151" height="5" /></td>
                  </tr>
                </table>
            </div></td>
          </tr>
        </table>
	

		<table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="23" background="img/main_47.gif" id="imgmenu7" class="menu_title" onmouseover="this.className='menu_title5';" onclick="showsubmenu(7)" onmouseout="this.className='menu_title';" style="cursor:hand"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td width="18%">&nbsp;</td>
                  <td width="82%" class="STYLE1">新闻管理</td>
                </tr>
            </table></td>
          </tr>
          <tr>
            <td background="img/main_51.gif" id="submenu7"  style="DISPLAY: none"><div class="sec_menu" >
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td><table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
                        <tr>
                          <td height="23"><div align="center"><img src="img/left.gif" width="10" height="10" /></div></td>
                          <td height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
                              <tr>
                                <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3"><a href="xinwen/xinwenadd.jsp" target="rightFrame">添加新闻</a></span></td>
                              </tr>
                          </table></td>
                        </tr>
                             <tr>
                          <td height="23"><div align="center"><img src="img/left.gif" width="10" height="10" /></div></td>
                          <td height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
                              <tr>
                                <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3"><a href="xinwen/xinwenlist.jsp" target="rightFrame">新闻管理</a></span></td>
                              </tr>
                          </table></td>
                        </tr>

                    </table></td>
                  </tr>
                  <tr>
                    <td height="5"><img src="img/main_52.gif" width="151" height="5" /></td>
                  </tr>
                </table>
            </div></td>
          </tr>
        </table>
	

		<table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="23" background="img/main_47.gif" id="imgmenu8" class="menu_title" onmouseover="this.className='menu_title5';" onclick="showsubmenu(8)" onmouseout="this.className='menu_title';" style="cursor:hand"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td width="18%">&nbsp;</td>
                  <td width="82%" class="STYLE1">评论管理</td>
                </tr>
            </table></td>
          </tr>
          <tr>
            <td background="img/main_51.gif" id="submenu8"  style="DISPLAY: none"><div class="sec_menu" >
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td><table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
                             <tr>
                          <td height="23"><div align="center"><img src="img/left.gif" width="10" height="10" /></div></td>
                          <td height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
                              <tr>
                                <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3"><a href="pinglun/pinglunlist.jsp" target="rightFrame">评论管理</a></span></td>
                              </tr>
                          </table></td>
                        </tr>

                    </table></td>
                  </tr>
                  <tr>
                    <td height="5"><img src="img/main_52.gif" width="151" height="5" /></td>
                  </tr>
                </table>
            </div></td>
          </tr>
        </table>
	









		</td>
      </tr>
    </table></td>
  </tr>

</table>
<script>




function showsubmenu(sid)
{
whichEl = eval("submenu" + sid);
imgmenu = eval("imgmenu" + sid);
if (whichEl.style.display == "none")
{
eval("submenu" + sid + ".style.display=\"\";");
imgmenu.background="img/main_47.gif";
}
else
{
eval("submenu" + sid + ".style.display=\"none\";");
imgmenu.background="img/main_48.gif";
}
}

</script>
</body>
</html>
