$(function(){
	
})
function settleAccount(){
	var sum=0;
	$(".itemCost").each(function(i){
		var cost=$(this).html();
		sum+=parseInt(cost);
	})
	$("#settle").html(sum);
}
function clearCart(){
	$.ajax({
		"url"		:"cartControlServlet",
		"data"		:"control=clear",
		"dataType"	:"text",
		"success"	:function(data){
			alert(data);
			alert(typeof data);
			
			if ($.trim(data) == "true") {
				alert("购物车清空成功！");
					window.location.href="toCart";
			}else{
				alert("当前访问人数过多，请稍后操作！");
			}
		}
	})
}