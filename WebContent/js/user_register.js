/**
 * Created by L on 2017/11/12.
 */
$(function($){
    $("form[name='formUser']").validate({
        onfocusout:function(element){$(element).valid()},
        rules:{
            username:{
                required:true
            },
            email:{
                required:true,
                email:true
            },
            password:{
                required:true,
                minlength:6,
                maxlength:12
            },
            confirm_password:{
                equalTo:"#password1"
            },
            extend_field2:{
                required:true,
                minlength:5,
                maxlength:10
            },
            phoneCode:{
            	required:true
            },
            extend_field5:{
                required:true,
                checkPhone:true  //自己书写的手机验证正则
            },
            passwd_answer:{
                required:true
            },
            agreement:{
                required:true
            }

        },
        messages:{
            username:{
                required:"请输入用户名"
            },
            email:{
                required:"请输入邮箱",
                email:"邮箱格式不正确"
            },
            password:{
                required:"请输入密码",
                minlength:"至少输入6个字符",
                maxlength:"最多输入12个字符"
            },
            confirm_password:{
                equalTo:"两次输入密码不一致"
            },
            extend_field2:{
                required:"请输入QQ号",
                minlength:"至少输入5个字符",
                maxlength:"最多输入10个字符"
            },
            extend_field5:{
                required:"请输入手机号",
                checkPhone:"手机号码格式不正确"//自己书写的手机验证正则
            },
            phoneCode:{
            	required:"请输入验证码"
            },
            passwd_answer:{
                required:"请输入答案"
            },
            agreement:{
                required:"请同意协议"
            }
        }
    }),
    //实现失去光标立即验证
        jQuery.validator.addMethod("checkPhone",function(value,element){
            var tel = /^(((13[0-9]{1})|(15[0-9]{1}))+\d{8})$/;
            return this.optional(element) || (tel.test(value));
        },"手机号码格式不正确");
    
    
    
});

	


//使用jQuery实现ajax=====》$.ajax
$(document).ready(function(){
	 $("#username").blur(function(){
			var flag=$(this).val();
			if(flag.trim()!=""&&flag!=null){
		    	$.ajax({
		    		"url":"hasUserServlet", //要提交的URL路径
		    		"type":"POST",			//发送请求的方式
		    		"data":"username="+flag,//要发送到服务器的数据
		    		"dataType":"text",		//指定返回的数据格式
		    		"beforeSend":function(){//发送请求前调用的函数
		    			
		    			$("input[name='Submit']").attr("disabled","disabled");
		    		},
		    		"success":sCallBack,	//响应成功后要执行的代码
		    		"error":function(){		//请求失败后要执行的代码
		    			alert("业务升级中，请稍后再来注册！");
		    		},
		    		"complete":function(){
		    			//$("#username_notice").html("*");
		    			$("input[name='Submit']").removeAttr("disabled");
		    		}
		    		
		    	})
			   	function sCallBack(data){
				   	if(data=="true"){
				   		$("#username_notice").html("用户名可以使用！");
				   	}else{
				   		$("#username_notice").html("用户名已被使用！");
				   	}
			   	}
		    }else{
		    	$("#username_notice").html("*");
		    }
		}),
		
		//javascript代码实现ajax
	$("#getKey").click(function(){
		//获得用户输入的手机号
		var mobilePhone=$("input[name='mobilePhone']").val();
		if(isNaN(mobilePhone)){
			alert("请输入正确的手机号！");
		}else if(mobilePhone==0){
			alert("手机号不能为空！");
		}else{
			//创建XMLHttpRequest对象
			if(window.XMLHttpRequest){
				xmlHttpRequest = new XMLHttpRequest();
			}else{
				xmlHttpRequest = new ActiveXObject("Microsoft.XMLHTTP");
			}
			//设置回调函数
			xmlHttpRequest.onreadystatechange=callBack;
			//初始化XMLHttpRequest组件
			var url="phoneServlet?mobilePhone="+mobilePhone;
			xmlHttpRequest.open("GET",url,true);
			//发送请求
			xmlHttpRequest.send(null);
			
			function callBack(){
				if(xmlHttpRequest.readyState==4&& xmlHttpRequest.status==200){
					var data=xmlHttpRequest.responseText;
					if(data=="true"){
						alert("验证码已发送至您的手机，请注意查收！");
					}else{
						alert("业务升级中，请稍后再来注册！");
					}
				}
			}
		}
	}),
	//密码强度提示
	$("#password1").bind('input propertychange keyup',function(){
    	var value=$(this).val();
    	if(value.trim()!=""&&value!=null&&value.length>5&&value.length<13){
    		var flag=0;
    		if(value.match(/[a-z]/g)){flag++;}
    		if(value.match(/[0-9]/g)){flag++;}
    		if(value.match(/(.[^a-z0-9])/g)){flag++;}
    		if(flag>3){flag=3;}
    		switch(flag){
    		case 1:
    			$("#pwd_lower").css({"background":"red"});
    			$("#pwd_middle").css({"background":"none"});
    			$("#pwd_high").css({"background":"none"});
    			break;
    		case 2:
    			$("#pwd_lower").css({"background":"yellow"});
    			$("#pwd_middle").css({"background":"yellow"});
    			$("#pwd_high").css({"background":"none"});
    			break;
    		case 3:
    			$("#pwd_lower").css({"background":"green"});
    			$("#pwd_middle").css({"background":"green"});
    			$("#pwd_high").css({"background":"green"});
    			break;
    		}
    	}else{
    		$("#pwd_lower").css({"background":"none"});
			$("#pwd_middle").css({"background":"none"});
			$("#pwd_high").css({"background":"none"});
    	}
    })
});

