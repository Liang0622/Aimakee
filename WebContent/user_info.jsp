<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<script type="text/javascript" src="js/common.js"></script>
<title>爱玛克登录页</title>
</head>
<body onload="margin_top_height();">
<div id="wrap">
<%@ include file="elements/top.jsp" %>
<%@ include file="elements/search.jsp" %>
<div class="main">
    <div class="location"><span class="icon"></span>你现在的位置：<a href="#">爱玛克</a>&gt;<a class="current_a" href="#">基本信息</a> </div>
 	<div class="user_content">
 		<div class="con_left">
            <div class="pad_border">
                <ul class="user_menu">
                    <li class="user_icon1"><a href="user.jsp">欢迎页</a></li>
                    <li class="user_icon2"><a href="user_order.jsp">我的订单</a></li>
                    <li class="user_icon3"><a href="user_credit.jsp">我的积分</a></li>
                    <li class="user_icon4"><a href="user_address.jsp">地址薄</a></li>
                    <li class="user_icon5"><a class="hot" href="user_info.jsp">基本信息</a></li>
                    <li class="user_icon6"><a href="user_album.jsp">我的图库</a></li>
                    <li class="user_icon7"><a href="user_recommend.jsp">我的推荐</a></li>
                    <li class="user_icon8"><a href="user_comment.jsp">我的评论</a></li>
                    <li class="user_icon9"><a href="user_message.jsp">留言管理</a></li>
                </ul>
                <div class="user_logout"><a href="exitServlet" title="退出"><img src="images/user_btn1.jpg" alt="退出" /></a></div>
            </div>
        </div>
 		<div class="con_right">
        	<div class="pad_border">
            	<div class="user_con">
                	<div class="subject"><span>基本信息</span></div>
                    <form action="flow.php" method="post" name="theForm" id="theForm" onsubmit="return checkConsignee(this)">
                        <table width="98%" align="center"> 
                            <tr>
                                <td class="align_right">出生日期： </td>
                                <td class="align_left">
                                <select name="birthdayYear">
	                                <option value="1950">1950</option>
	                                <option value="2007">2007</option>
	                                <option value="2008">2008</option>
	                                <option value="2009">2009</option>
	                                <option value="2010">2010</option>
	                                <option value="2011">2011</option>
                                </select>&nbsp;
                                <select name="birthdayMonth">
	                                <option value="1">01</option>
	                                <option value="2">02</option>
	                                <option value="3">03</option>
	                                <option value="4">04</option>
	                                <option value="5">05</option>
	                                <option value="6">06</option>
	                                <option value="7">07</option>
	                                <option value="8">08</option>
	                                <option value="9">09</option>
	                                <option value="10">10</option>
	                                <option value="11">11</option>
	                                <option value="12">12</option>
                                </select>&nbsp;
                                <select name="birthdayDay">
	                                <option value="1">01</option>
	                                <option value="2">02</option>
	                                <option value="3">03</option>
	                                <option value="4">04</option>
	                                <option value="29">29</option>
	                                <option value="30">30</option>
	                                <option value="31">31</option>
                                </select> </td>
                            </tr>
                            <tr>
                              <td class="align_right">性　别：</td>
                                <td class="align_left">
                                    <span><input type="radio" name="sex" value="0" checked="checked"/>保密</span>
                                    <span><input type="radio" name="sex" value="1"/>男</span>
                                    <span><input type="radio" name="sex" value="2"/>女</span>
                                </td>
                            </tr>
                            <tr>
                              <td class="align_right">电子邮件地址：</td>
                              <td valign="middle" class="align_left">
                                <input name="email" type="text" value="<c:out value="${sessionScope.user.userEmail}" default="" />" size="25" class="inputBg" />
                                <span> *</span>
                              </td>
                            </tr>	
                            <tr>
                              <td class="align_right">QQ：</td>
                                <td valign="middle" class="align_left">
                                	<input name="email" type="text" value="<c:out value="${sessionScope.user.userQQ}" default="" />" class="inputBg" />
                                	<span> *</span></td>
                            </tr>
                            <tr>
                              <td class="align_right">手机：</td>
                                <td valign="middle" class="align_left">
                                <input name="email" type="text" value="<c:out value="${sessionScope.user.mobilePhone}" default="" />" class="inputBg" />
                                <span> *</span></td>
                            </tr>
                            <tr>
                              <td class="align_right">密码提示问题：</td>
                                <td valign="middle" class="align_left">
                                    <select name='sel_question' class="select2" >
                                        <option value='0'>请选择密码提示问题</option>
                                        <option value="old_address">我儿时居住地的地址？</option>
                                        <option value="motto">我的座右铭是？</option>
                                        <option value="favorite_movie">我最喜爱的电影？</option>
                                        <option value="favorite_song">我最喜爱的歌曲？</option>
                                        <option value="favorite_food" >我最喜爱的食物？</option>
                                        <option value="interest">我最大的爱好？</option>
                                        <option value="favorite_novel">我最喜欢的小说？</option>
                                        <option value="favorite_equipe">我最喜欢的运动队？</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                              <td class="align_right">密码问题答案：</td>
                                <td class="align_left">
                                    <input name="email" type="text" value="<c:out value="${sessionScope.user.passwordAnswer}" default="" />" size="25" class="inputBg" />
                                    <span> *</span>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" class="td_center">
                                    <input name="act" type="hidden" value="act_edit_profile" />
                                    <input name="submit" type="submit" value="确认修改" />
                                </td>
                            </tr>
                        </table>
                    </form>
                    <form name="formPassword" action="user.php" method="post" onSubmit="">
                        <table width="98%" align="center">
                            <tr>
                                <td width="32%" class="align_right">原密码：</td>
                                <td class="align_left"><input name="old_password" type="password" size="24"  class="inputBg" /></td>
                            </tr>
                            <tr>
                                <td class="align_right">新密码：</td>
                                <td class="align_left"><input name="new_password" type="password" size="24"  class="inputBg" /></td>
                            </tr>
                            <tr>
                                <td class="align_right">确认密码：</td>
                                <td class="align_left"><input name="comfirm_password" type="password" size="24"  class="inputBg" /></td>
                            </tr>
                            <tr>
                                <td colspan="2" class="td_center td_center1"><input name="act" type="hidden" value="act_edit_password" />
                                    <input name="submit" type="submit"  value="确认修改" />
                                </td>
                            </tr>
                        </table>
                    </form>
                </div>
            </div>
        </div>
	</div>
</div>
<%@ include file="elements/bottom.jsp" %>
</div>
</body>
</html>
