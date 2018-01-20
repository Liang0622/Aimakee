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
<link type="text/css" rel="stylesheet" href="css/flow.css" />
<script type="text/javascript" src="js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="js/common.js"></script>
<title>爱玛克登录页</title>
</head>
<body onload="margin_top_height();">
<div id="wrap">
<%@ include file="../elements/top.jsp" %>
<%@ include file="../elements/search.jsp" %>
<div class="main">
    <div class="location"><span class="icon"></span>你现在的位置：<a href="#">爱玛克</a>&gt;<a class="current_a" href="#">登录</a> </div>
    <form action="flow.php" method="post" name="theForm" id="theForm" onsubmit="return checkOrderForm(this)">
        <div class="flowBox">
            <h6><span>商品列表</span></h6>
            <table width="99%" align="center">
                <tr>
                    <th>商品名称</th>
                    <th>属性</th>
                    <!-- <th>市场价</th> -->
                    <th>本店价</th>
                    <th>购买数量</th>
                    <th>小计</th>
                </tr>
                <c:forEach items="${sessionScope.shoppingCart.items}" var="item">
                	<tr>
                    <td><a class="red_a" href="goods.php?id=23" target="_blank" class="f6">${item.product.name}</a></td>
                    <td>颜色:黑色</td>
                    <%-- <td>￥<span>${item.product.price}</span>元</td> --%>
                    <td>￥<span>${item.product.price}</span>元</td>
                    <td>${item.quantity}</td>
                    <td>￥<span class="itemCost">${item.cost}</span>元</td>
                	</tr>
                </c:forEach>
            </table>
        </div>
        <div class="flowBox">
            <h6><span>收货人信息</span></h6>
            <table width="99%" align="center">
                <tr>
                    <td class="align_left">收货人姓名:</td>
                    <td class="align_left">${sessionScope.user.userName}</td>
                    <td class="align_left">电子邮件地址:</td>
                    <td class="align_left">${sessionScope.user.userEmail}</td>
                </tr>
                <tr>
                    <td class="align_left">详细地址:</td>
                    <td class="align_left">fdsfsda </td>
                    <td class="align_left">邮政编码:</td>
                    <td class="align_left">4565456</td>
                </tr>
                <tr>
                    <td class="align_left">电话:</td>
                    <td class="align_left">46546551 </td>
                    <td class="align_left">手机:</td>
                    <td class="align_left"></td>
                </tr>
                <tr>
                    <td class="align_left">标志建筑:</td>
                    <td class="align_left"></td>
                    <td class="align_left">最佳送货时间:</td>
                    <td class="align_left"></td>
                </tr>
            </table>
        </div>
        <div class="flowBox">
            <h6><span>配送方式</span></h6>
            <table width="99%" align="center">
                <tr>
                    <th width="5%">&nbsp;</th>
                    <th width="25%">名称</th>
                    <th>订购描述</th>
                    <th width="15%">费用</th>
                    <th width="15%">免费额度</th>
                    <th width="15%">保价费用</th>
                </tr>
                <tr>
                    <td class="align_left"><input name="shipping" type="radio" value="5"  supportCod="0" insure="0" onclick="selectShipping(this)" /></td>
                    <th class="align_left">申通快递</th>
                    <td class="align_left">江、浙、沪地区首重为15元/KG，其他地区18元/KG， 续重均为5-6元/KG， 云南地区为8元</td>
                    <td align="right">￥15.00元</td>
                    <td align="right">￥0.00元</td>
                    <td align="right">不支持保价</td>
                </tr>
                <tr>
                    <td class="align_left"><input name="shipping" type="radio" value="3"  supportCod="1" insure="0" onclick="selectShipping(this)" /></td>
                    <th class="align_left">城际快递</th>
                    <td class="align_left">配送的运费是固定的</td>
                    <td align="right">￥10.00元</td>
                    <td align="right">￥100000.00元</td>
                    <td align="right">不支持保价</td>
                </tr>
                <tr>
                    <td class="align_left"><input name="shipping" type="radio" value="6"  supportCod="0" insure="0" onclick="selectShipping(this)" /></td>
                    <th class="align_left">邮局平邮</th>
                    <td class="align_left">邮局平邮的描述内容。</td>
                    <td align="right">￥3.50元</td>
                    <td align="right">￥50000.00元</td>
                    <td align="right">不支持保价</td>
                </tr>
                <tr>
                    <td class="align_left"><input name="shipping" type="radio" value="7"  supportCod="0" insure="0" onclick="selectShipping(this)" /></td>
                    <th class="align_left">运费到付</th>
                    <td class="align_left">所购商品到达即付运费</td>
                    <td align="right">￥0.00元</td>
                    <td align="right">￥50000.00元</td>
                    <td align="right">不支持保价</td>
                </tr>
                <tr>
                    <td colspan="6" bgcolor="#ffffff"><label for="ECS_NEEDINSURE" class="align_right">
                        <input name="need_insure" class="check_btn" id="ECS_NEEDINSURE" type="checkbox"  onclick="selectInsure(this.checked)" value="1" /> 配送是否需要保价 </label>
                    </td>
                </tr>
            </table>
        </div>
        
        <div class="flowBox">
            <h6><span>费用总计</span></h6>
            <table width="99%" align="center">
                <tr><td class="align_right">该订单完成后，您将获得<span class="color3">2298</span>积分，以及价值<span class="color3">￥20.00元</span>的红包</td></tr>
                <tr><td class="align_right">商品总价:<span class="color3">￥2298.00元</span>+ 配送费用:<span class="color3">￥15.00元</span></td></tr> 
                <tr><td class="align_right">应付款金额:<span class="color3">￥2313.00元</span></td></tr>
                <tr><td>
                    <input type="image" src="images/cart_btn4.jpg" />
                    <input type="hidden" name="step" value="done" />
				</td></tr>    
             </table>
    	</div>        
    </form>
</div>
<%@ include file="../elements/bottom.jsp" %>
</div>
</body>
</html>
