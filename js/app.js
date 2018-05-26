(function(window){
	window.baseUrl  = "/fzsc/";
	window.bgBaseUrl = "http://192.168.1.154:8080/fmmapp/";//全局记录服务器端地址
	
	//封装localStorage
	window.myLocalStorage = {};
	myLocalStorage.setItem = function(key,value){
		if(value instanceof String){
			localStorage.setItem(key,value)
		}else{
			localStorage.setItem(key,JSON.stringify(value))
		}
	}
	
	myLocalStorage.getItem = function(key){
		var value = localStorage.getItem(key);
		try{
			value=JSON.parse(value)
		}catch(e){
		}
		return value;
	}
	myLocalStorage.removeItem = function(key){
		localStorage.removeItem(key);
	}
	
	//封装sessionStorage
	window.mySessionStorage = {};
	mySessionStorage.setItem = function(key,value){
		if(value instanceof String){
			sessionStorage.setItem(key,value)
		}else{
			sessionStorage.setItem(key,JSON.stringify(value))
		}
	}
	
	mySessionStorage.getItem = function(key){
		var value = sessionStorage.getItem(key);
		try{
			value=JSON.parse(value)
		}catch(e){
			value = sessionStorage.getItem(key);
		}
		return value;
	}
    
    
    //请求拦截
/*    $.ajaxSetup({
        type: "POST",
        beforeSend: function (evt, request, settings) {
            request.url = bgBaseUrl + request.url;
        },
        error: function (jqXHR, textStatus, errorThrown) {
        	mui.toast("请求数据异常！")
        }
    });*/


	window.initView=function(){
		mui("body").on("tap", "a", function() {
			if(this.href != "" && !$(this).hasClass("mui-action-back") && !this.href.indexOf("javascript")>-1) {
				mui.openWindow({
					url: this.href
				})
			}
		})
	}
	
	window.isLogin = function(){
		if(myLocalStorage.getItem("user")==null){
			return false;
		}else{
			return true;
		}
	}
	
	//刷新角标数据
	window.refreshCartNum = function(num){
		$(".cartNum").text(num)
	}
	//刷新角标数据
	window.refreshChatNum = function(num){
		$(".chatNum").text(num)
	}
	
}(window))