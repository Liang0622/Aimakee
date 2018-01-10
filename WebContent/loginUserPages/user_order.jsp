<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<div class="subject"><span>我的订单</span></div>
<form action="flow.php" method="post" name="theForm" id="theForm" onsubmit="return checkConsignee(this)">
<table width="98%" align="center"> 
    <tr>
        <td width="19%">订单号</td>
        <td width="23%">下单时间</td>
        <td width="22%">订单总金额</td>
        <td width="20%">订单状态</td>
        <td width="15%">操作</td>
    </tr> 
    <tr>
        <td>2010082779613</td>
        <td>2010-08-27 19:20:53</td>
        <td class="td2">￥6008.00元 </td>
        <td>未确认,未付款,未发货</td>
        <td><a href="#">取消订单</a></td>
    </tr>
</table>
</form>

