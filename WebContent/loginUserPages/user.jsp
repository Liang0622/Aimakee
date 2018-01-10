<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<script type="text/javascript" src="js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="js/common.js"></script>
<script type="text/javascript" src="js/user.js"></script>
 <title>爱玛克登录页</title>
</head>
<body onload="margin_top_height();">
<div id="wrap">
<%@ include file="../elements/top.jsp" %>
<%@ include file="../elements/search.jsp" %>
<div class="main">
    <div class="location"><span class="icon"></span>你现在的位置：<a href="#">爱玛克</a>&gt;<a class="current_a" href="#">欢迎页</a> </div>
 	<div class="user_content">
 		<div class="con_left">
            <div class="pad_border">
                <ul class="user_menu">
                    <li class="user_icon1"><a class="hot" ">欢迎页</a></li>
                    <li class="user_icon2"><a >我的订单</a></li>
                    <li class="user_icon3"><a >我的积分</a></li>
                    <li class="user_icon4"><a >地址薄</a></li>
                    <li class="user_icon5"><a >基本信息</a></li>
                    <li class="user_icon6"><a >我的图库</a></li>
                    <li class="user_icon7"><a >我的推荐</a></li>
                    <li class="user_icon8"><a >我的评论</a></li>
                    <li class="user_icon9"><a >留言管理</a></li>
                </ul>
                <div class="user_logout"><a href="exitServlet" title="退出"><img src="images/user_btn1.jpg" alt="退出" /></a></div>
            </div>
        </div>
 		<div class="con_right">
        	<div class="pad_border">
            	<div class="user_con">
                    <p><c:out value="${sessionScope.user.userName}"/> 欢迎您回到 ECSHOP！</p>
                    <p>您的上一次登录时间: 2010-09-15 09:44:20</p>
                    <p>您的等级是 注册用户 ,您还差 10000 积分达到 vip</p>
                    <p>您还没有通过邮件认证 点此发送认证邮件</p>
                    <div class="user_pub"><img src="images/user_icon2.jpg" align="middle" /> 用户中心公告！</div>
                    <div class="array2">
                        <div class="box1">
                            <div class="title">您的账户</div>
                            <div class="detail">
                                <p>余额：<span class="txt1">￥0.00元</span></p>
                                <p>红包：共计 0 个，价值 ￥0.00元</p>
                            </div>
                        </div>
                        <div class="box2">
                            <div class="title">用户提醒</div>
                            <div class="detail">
                                <p>您最近30天内提交了2个订单</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
	</div>
</div>
<%@ include file="../elements/bottom.jsp" %>
</div>
</body>
</html>
