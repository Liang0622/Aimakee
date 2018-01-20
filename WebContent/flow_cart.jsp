<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>我的购物车</title>
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
<script type="text/javascript" src="js/flow_cart.js"></script>

</head>
<body onload="margin_top_height();settleAccount();">
<div id="wrap">
<%@ include file="elements/top.jsp" %>
<%@ include file="elements/search.jsp" %>
<div class="main">
    <div class="location"><span class="icon"></span>你现在的位置：<a href="#">爱玛克</a>&gt;<a class="current_a" href="#">我的购物车</a> </div>
    <div class="flowBox">
        <h6><span>商品列表</span></h6>
        <c:set var="cart" value="${sessionScope.shoppingCart}" scope="page"/>
        <c:choose>
        <c:when test="${empty cart}"><h1 align="center">购物车空空如也！</h1></c:when>
        <c:otherwise>
        	<form id="formCart" name="formCart" method="post" action="flow.php">
            <table width="99%" align="center">
                <tr>
                    <th>商品名称</th>
                    <th>属性</th>
                    <th>市场价</th>
                    <th>本店价</th>
                    <th>购买数量</th>
                    <th>小计</th>
                    <th>操作</th>
                </tr>
                
                <c:forEach items="${sessionScope.shoppingCart.items}" var="item">
                	<tr>
                    <td><a href="goods.php?id=1" target="_blank"> <img src="images/cart_pic1.jpg" border="0" title="KD876" width="90" height="90" /></a><br />
                        <a href="goods.php?id=1" target="_blank" class="f6">${item.product.name}</a><input class="productId" type="hidden" value="${item.product.id}"></td>
                        
                    <td>颜色:灰色 <br /></td>
                    <td>￥<span>${item.product.price}</span>元</td>
                    <td>￥<span>${item.product.price}</span>元</td>
                    <td><input type="text" name="goods_number[44]" id="goods_number_44" value="${item.quantity}" size="6" class="inputBg" style="text-align:center " onkeydown="showdiv(this)"/></td>
                    <td >￥<span class="itemCost">${item.cost}</span>元</td>
                    <td><a href="javascript:if (confirm('您确实要把该商品移出购物车吗？')) location.href='flow.php?step=drop_goods&amp;id=44'; " class="red_a">删除</a></td>
                </tr>
                </c:forEach>
            </table>
            <table width="99%" align="center" border="0" cellpadding="5" cellspacing="1" bgcolor="#dddddd">
                <tr>
                    <td class="align_left"> 购物金额总计 ：￥<span id="settle" class="color2">${items.totleCost}</span>元</td>
                    <td class="align_right"><input type="button" value="清空购物车" class="bnt_blue_1" onclick="clearCart()" />
                        <input name="submit" type="submit" class="bnt_blue_1" value="更新购物车" /></td>
                </tr>
            </table>
            <input type="hidden" name="step" value="update_cart" />
        </form>
        </c:otherwise>
        </c:choose>
        <div class="operation"> <span class="continue_btn"><a href="product.jsp"><img src="images/cart_btn1.jpg" alt="continue" /></a></span> <span class="end_btn"><a href="loginUserPages/flow_pay.jsp"><img src="images/cart_btn2.jpg" alt="checkout" /></a></span> </div>
    </div>
</div>
<%@ include file="elements/bottom.jsp" %>
</div>
</body>
</html>
