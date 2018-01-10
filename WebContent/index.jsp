<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>爱玛克首页</title>
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
<link type="text/css" rel="stylesheet" href="css/index.css" />
<script type="text/javascript" src="js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="js/common.js"></script>
<title>爱玛克首页</title>
</head>
<body onload="margin_top_height(1);">
<div id="wrap">
<%@ include file="elements/top.jsp" %>
<%@ include file="elements/search.jsp" %>
<div class="main">
 	<div class="index_content">
    	<div class="con_left">
        <div id="con_left"></div>
            <div class="index_banner1"><a href="#"><img src="images/index_adver3.jpg"/></a></div>
        	<div class="sales">
            	<div class="left_top"><span>促销商品</span><a href="#" title="">更多促销&gt;&gt;</a></div>
                <div class="sales_box">
                	<div class="sales_con">
                        <div class="sales_img"><a href="#" title=""><img src="images/index_pic1.jpg" alt="促销商品图片" /></a></div>
                        <div class="sales_txt"><span>[促销]</span><a href="#" title="">全场8.5折起~大酬宾</a></div>
                        <div class="sales_txt"><span>[促销]</span><a href="#" title="">全场8.5折起~大酬宾</a></div> 
                    </div>
                	<div class="sales_con">
                        <div class="sales_img"><a href="#" title=""><img src="images/index_pic1.jpg" alt="促销商品图片" /></a></div>
                        <div class="sales_txt"><span>[促销]</span><a href="#" title="">全场8.5折起~大酬宾</a></div>
                        <div class="sales_txt"><span>[促销]</span><a href="#" title="">全场8.5折起~大酬宾</a></div> 
                    </div>
                	<div class="sales_con">
                        <div class="sales_img"><a href="#" title=""><img src="images/index_pic1.jpg" alt="促销商品图片" /></a></div>
                        <div class="sales_txt"><span>[促销]</span><a href="#" title="">全场8.5折起~大酬宾</a></div>
                        <div class="sales_txt"><span>[促销]</span><a href="#" title="">全场8.5折起~大酬宾</a></div> 
                    </div>
                </div>
            </div>
        	<div class="buyer_com">
            	<div class="left_top"><span>买家评论</span><a href="#" title="">更多评论&gt;&gt;</a></div>
                <div class="buy_box">
                	<div class="buy_con">
                    	<div class="buy_txt1">服务太义超好，发货速度很快。</div>
                        <div class="buy_txt2"><span class="buy_user">shell***</span><span class="buy_time">2010/08/12</span></div>
                    </div>
                	<div class="buy_con">
                    	<div class="buy_txt1">服务太义超好，发货速度很快。</div>
                        <div class="buy_txt2"><span class="buy_user">shell***</span><span class="buy_time">2010/08/12</span></div>
                    </div>
                    <div class="buy_con">
                    	<div class="buy_txt1">服务太义超好，发货速度很快。</div>
                        <div class="buy_txt2"><span class="buy_user">shell***</span><span class="buy_time">2010/08/12</span></div>
                    </div>    
                    <div class="buy_con">
                    	<div class="buy_txt1">服务太义超好，发货速度很快。</div>
                        <div class="buy_txt2"><span class="buy_user">shell***</span><span class="buy_time">2010/08/12</span></div>
                    </div>                  
                </div>
            </div>             
        </div>
        <div class="con_right">
        	<div class="index_box_1"><a href="#"><img src="images/index_adver1.jpg" alt="广告图" /></a></div>
        	<div class="index_box_2">
				<div id="rollTextMenu1" class="public">
                	<span><a class="pub_a" href="#">[公告]</a><a href="#">爱玛客 个性定制网站 正式开通。欢迎光临~~</a></span>
                    <span><a class="pub_a" href="#">[公告]</a><a href="#">爱玛客宣布与携程结成战略合作伙伴，特推出...</a></span>
                </div>
				<div id="rollTextMenu2" class="public" style="display:none;">
                	<span><a class="pub_a" href="#">[公告]</a><a href="#">爱玛客 fffffffffffff 正式开通。欢迎光临~~</a></span>
                    <span><a class="pub_a" href="#">[公告]</a><a href="#">55555555555555555555555...</a></span>
                </div>
				<div id="rollTextMenu3" class="public" style="display:none;">
                	<span><a class="pub_a" href="#">[公告]</a><a href="#">爱玛客 eeeeeeeeee 正式开通。欢迎光临~~</a></span>
                    <span><a class="pub_a" href="#">[公告]</a><a href="#">7777777777777777，特推出...</a></span>
                </div> 
				<div id="rollTextMenu4" class="public" style="display:none;">
                	<span><a class="pub_a" href="#">[公告]</a><a href="#">爱玛客 aaaaaaaaaaa 正式开通。欢迎光临~~</a></span>
                    <span><a class="pub_a" href="#">[公告]</a><a href="#">999999999999999999999，特推出...</a></span>
                </div>                                                                 
                <div class="public_btn">
                	<a href="javascript:rollText(-1);"><span class="btn_icon1"></span></a>
                    <a href="javascript:rollText(1);"><span class="btn_icon2"></span></a>
                </div>
            </div>
            <div class="index_box_3">
                <div class="right_top"><span>热门推荐</span><a href="#" title="">查看更多热门推荐&gt;&gt;</a></div> 
                <div class="right_box3">
                	<div class="index_banner2"><img src="images/index_adver2.jpg" /></div>
                    <div class="right_con3">
                    	<div class="con_pic3">
                        	<img class="img1" src="images/index_pic10.jpg" alt="图片" />
                        	<span><a href="#"><img class="img2" src="images/my_custom.gif" /></a></span>
                        </div>
                    	<div class="con_pic3">
                        	<img class="img1" src="images/index_pic10.jpg" alt="图片" />
                        	<span><a href="#"><img class="img2" src="images/my_custom.gif" /></a></span>
                        </div>
                        <div class="con_pic3">
                        	<img class="img1" src="images/index_pic10.jpg" alt="图片" />
                        	<span><a href="#"><img class="img2" src="images/my_custom.gif" /></a></span>
                        </div>
                        <div class="con_pic3">
                        	<img class="img1" src="images/index_pic10.jpg" alt="图片" />
                        	<span><a href="#"><img class="img2" src="images/my_custom.gif" /></a></span>
                        </div>                                                
                    </div>
                </div>                             
            </div>
            <div class="index_box_4">
				<div class="right_box4">
                	<div class="con_pic4"><a href="#" title=""><img src="images/index_pic2.jpg" alt="图片名称" /></a></div>
                    <div class="con_txt4"><a href="#">杯子影像</a></div>
                </div>
				<div class="right_box4">
                	<div class="con_pic4"><a href="#" title=""><img src="images/index_pic3.jpg" alt="图片名称" /></a></div>
                    <div class="con_txt4"><a href="#">家具装饰</a></div>
                </div>
                <div class="right_box4">
                	<div class="con_pic4"><a href="#" title=""><img src="images/index_pic4.jpg" alt="图片名称" /></a></div>
                    <div class="con_txt4"><a href="#">时尚饰品</a></div>
                </div>
                <div class="right_box4">
                	<div class="con_pic4"><a href="#" title=""><img src="images/index_pic5.jpg" alt="图片名称" /></a></div>
                    <div class="con_txt4"><a href="#">商务礼品</a></div>
                </div>
                <div class="right_box4">
                	<div class="con_pic4"><a href="#" title=""><img src="images/index_pic6.jpg" alt="图片名称" /></a></div>
                    <div class="con_txt4"><a href="#">衣服</a></div>
                </div>
				<div class="right_box4">
                	<div class="con_pic4"><a href="#" title=""><img src="images/index_pic7.jpg" alt="图片名称" /></a></div>
                    <div class="con_txt4"><a href="#">水晶影像</a></div>
                </div>
                <div class="right_box4">
                	<div class="con_pic4"><a href="#" title=""><img src="images/index_pic8.jpg" alt="图片名称" /></a></div>
                    <div class="con_txt4"><a href="#">杯子影像</a></div>
                </div>
                <div class="right_box4">
                	<div class="con_pic4"><a href="#" title=""><img src="images/index_pic9.jpg" alt="图片名称" /></a></div>
                    <div class="con_txt4"><a href="#">其它</a></div>
                </div>                  
            </div>
        </div>
    </div>
</div>
<%@ include file="elements/bottom.jsp" %>
</div>
</body>
</html>
