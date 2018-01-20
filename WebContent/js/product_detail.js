$(function(){
	
	$("#cartButton").click(function(){
		var pId=$(this).attr("proId");
		var amount=$("li>input.inputBg").val();
		$.ajax({
			"url"		:"shoppingCartServlet",
			"type"		:"GET",
			"data"		:{"productId":pId,"amount":amount},
			"dataType"	:"text",
			"success"	:processProductDetail,
			"error"		:function(){
				alert("系统维护，请稍后再来！");
			}
		})
		function processProductDetail(data){
			if(data=="true"){
				alert("成功添加商品到购物车");
			}else{
				alert("添加商品失败，请检查商品库存");
			}
		}
	})
	
})