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
<link type="text/css" rel="stylesheet" href="css/help.css" />
<script type="text/javascript" src="js/common.js"></script>
<title>爱玛克登录页</title>
</head>
<body onload="margin_top_height();">
<div id="wrap">
<%@ include file="elements/top.jsp" %>
<%@ include file="elements/search.jsp" %>
<div class="main">
    <div class="location"><span class="icon"></span>你现在的位置：<a href="#">爱玛克</a>&gt;<a class="current_a" href="#">登录</a> </div>
    <div class="content">
		<div class="con_left">
			<div class="top_pic"></div>
            <ul class="help_array">
            	<li class="titie">常见问题</li>
	            <li><a href="#" title="">怎样在线支付？</a></li>
              	<li><a href="#" title="">产品有问题如何退货？</a></li>
                <li><a href="#" title="">送货范围及资费标准？</a></li>
            </ul>
            <ul class="help_array">
            	<li class="titie">个性定制</li>
	            <li><a href="#" title="">什么是个性定制</a></li>
              	<li><a href="#" title="">如何个性定制</a></li>
            </ul>
             <ul class="help_array">
            	<li class="titie">生产定制</li>
	            <li><a href="#" title="">礼品制作周期表</a></li>
              	<li><a href="#" title="">礼品保养须知</a></li>
            </ul>
            <ul class="help_array">
            	<li class="titie">支付配送</li>
	            <li><a href="#" title="">卡当网优惠券使用须知</a></li>
              	<li><a href="#" title="">如何购买</a></li>
                <li><a href="#" title="">支付有哪些方式</a></li>
            </ul>               
            <ul class="help_array">
            	<li class="titie">售后中心</li>
                <li><a href="#" title="">礼品售后服？</a></li>
            </ul> 
            <ul class="help_array">
            	<li class="titie">客服中心</li>
	            <li><a href="#" title="">用户协议</a></li>
              	<li><a href="#" title="">客服介绍</a></li>
            </ul>
            <div class="banner"><a href="#" title=""><img src="images/help_banner.jpg" height="68" width="208" alt="广告图" /></a></div>                               
        </div>
        <div class="con_right">
            <div class="help_top">如何个性定制</div>
            <div class="help_con">
				<p class="titile">什么是个性定制</p>
                <p class="detail"> "个性定制"，又称"礼品、纪念品DIY"，是卡当网最核心的服务，它可以让您在T-shirt、杯子、靠垫等各种产品上印制你自己喜欢的图案和文字，您只需选择产品模版、再上传自己的照片、设计图或添加文字，确认效果后下订单，卡当就可以把您设计的效果图变成个性化的成品，还会按照您的要求送到您指定的地点。</p>
                <div class="pic"><img src="images/help_pic1.jpg" alt="图片" width="667" height="101" /></div>
               	<p class="titile">什么是个性定制</p>
                <p class="detail"> "个性定制"，又称"礼品、纪念品DIY"，是卡当网最核心的服务，它可以让您在T-shirt、杯子、靠垫等各种产品上印制你自己喜欢的图案和文字，您只需选择产品模版、再上传自己的照片、设计图或添加文字，确认效果后下订单，卡当就可以把您设计的效果图变成个性化的成品，还会按照您的要求送到您指定的地点。</p>
                <div class="pic"><img src="images/help_pic2.jpg" alt="图片" width="676" height="318" /></div>
            </div>         
        	<div class="help_bottom">
                <span><a href="#" title="" >TOP<img src="images/help_icon3.jpg" alt="图标" width="8" height="7" /></a></span>
                <span><a href="#" title="" >报告<img src="images/help_icon3.jpg" alt="图标" width="8" height="7" /></a></span>
            </div>
        </div>
    </div>
</div>

<%@ include file="elements/bottom.jsp" %>
</div>
</body>
</html>
