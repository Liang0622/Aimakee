<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link type="text/css" rel="stylesheet" href="css/common.css" />
<link type="text/css" rel="stylesheet" href="css/user.css" />
<link type="text/css" rel="stylesheet" href="css/user_register.css" />
<script type="text/javascript" src="js/common.js"></script>
<script type="text/javascript" src="js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="js/jquery.validate.js"></script>
<script type="text/javascript" src="js/user_register.js"></script>
<title>爱玛克登录页</title>
</head>
<body onload="margin_top_height();">
<div id="wrap">
<%@ include file="elements/top.jsp" %>
<%@ include file="elements/search.jsp" %>
<div class="main">
    <div class="location"><span class="icon"></span>你现在的位置：<a href="#">爱玛克</a>&gt;<a class="current_a" >注册</a> </div>
    <div class="login_con">
        <div class="login_left1">
            <div class="login_title">注册新会员</div>
            <div class="login_form1">
                <form action="user.php" method="post" name="formUser">
                    <table width="100%"  border="0" align="left" cellpadding="5" cellspacing="3">
                        <tr>
                            <td width="80" align="right">用户名</td>
                            <td width="450">
                            <input name="username" type="text" size="25" id="username"  class="inputBg" value=""/>
                                <span id="username_notice" style="color:#FF0000"> *</span></td>
                        </tr>
                        <tr>
                            <td width="80" align="right">email</td>
                            <td width="450"><input name="email" type="text" size="25" id="email" onblur="checkEmail(this.value);"  class="inputBg"/>
                                <span id="email_notice" style="color:#FF0000"> *</span></td>
                        </tr>
                        <tr>
                            <td width="80" align="right">密码</td>
                            <td width="450"><input name="password" type="password" id="password1" onblur="check_password(this.value);" onkeyup="checkIntensity(this.value)" class="inputBg" size="25" />
                                <span style="color:#FF0000" id="password_notice"> *</span></td>
                        </tr>
                        <tr>
                            <td width="80" align="right">密码强度</td>
                            <td width="450"><table width="145" border="0" cellspacing="0" cellpadding="1">
                                    <tr align="center">
                                        <td width="33%" id="pwd_lower">弱</td>
                                        <td width="33%" id="pwd_middle">中</td>
                                        <td width="33%" id="pwd_high">强</td>
                                    </tr>
                                </table></td>
                        </tr>
                        <tr>
                            <td width="80" align="right">确认密码</td>
                            <td width="450"><input name="confirm_password" type="password" id="conform_password" onblur="check_conform_password(this.value);"  class="inputBg"  size="25"/>
                                <span style="color:#FF0000" id="conform_password_notice"> *</span></td>
                        </tr>
                        <tr>
                            <td width="80" align="right">密码提示问题</td>
                            <td width="450"><select name='passwordQuestion'>
                                    <option value='0'>请选择密码提示问题</option>
                                    <option value="friend_birthday">我最好朋友的生日？</option>
                                    <option value="old_address">我儿时居住地的地址？</option>
                                    <option value="motto">我的座右铭是？</option>
                                    <option value="favorite_movie">我最喜爱的电影？</option>
                                    <option value="favorite_song">我最喜爱的歌曲？</option>
                                    <option value="favorite_food">我最喜爱的食物？</option>
                                    <option value="interest">我最大的爱好？</option>
                                    <option value="favorite_novel">我最喜欢的小说？</option>
                                    <option value="favorite_equipe">我最喜欢的运动队？</option>
                                </select></td>
                        </tr>
                        <tr>
                            <td width="80" align="right" id="passwd_quesetion">密码问题答案</td>
                            <td width="450"><input name="passwordAnswer" type="text" size="25" class="inputBg" maxlength='20'/>
                                <span style="color:#FF0000"> *</span></td>
                        </tr>
                        <tr>
                            <td width="80" align="right" id="extend_field2i">QQ
                            <td width="450"><input name="userQQ" type="text" size="25" class="inputBg" />
                                <span style="color:#FF0000"> *</span></td>
                        </tr>
                        <tr>
                            <td width="80" align="right" id="extend_field5i">手机
                            <td width="450"><input name="mobilePhone" type="text" size="25" class="inputBg" />
                                <span style="color:#FF0000"> *</span></td>
                        </tr>
                        <tr>
                        	<td colspan="2"><div class="normalInput errorC">
							<input class="kapkey" type="text" maxlength="6" placeholder="验证码">
							<span class="formLine"></span>
							<span class="linkABlue" id="getKey">获取验证码</span>
						</div></td>
                        </tr>
                        <tr>
                            <td width="80">&nbsp;</td>
                            <td width="450"><label>
                                    <input name="agreement" type="checkbox" value="1" checked="checked" />
                                我已看过并接受《<a href="article.php?cat_id=-1" style="color:blue" target="_blank">用户协议</a>》</label></td>
                        </tr>
                        <tr>
                            <td width="80">&nbsp;</td>
                            <td width="450" align="left"><input name="act" type="hidden" value="act_register" >
                                <input type="hidden" name="back_act" value="" />
                                <input name="Submit" type="submit" value="" class="us_Submit_reg"></td>
                        </tr>
                        <tr>
                            <td colspan="2">&nbsp;</td>
                        </tr>
                    </table>
                </form>
            </div>
        </div>
        <div class="login_right1">
            <p class="color2"><a href="user_login.jsp" title="">我已有账号，我要登录</a></p>
        </div>
    </div>
</div>
<%@ include file="elements/bottom.jsp" %>
</div>

</body>
</html>
