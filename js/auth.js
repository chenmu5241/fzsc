var user = myLocalStorage.getItem("user");
if(user==null){
	myLocalStorage.setItem("loginBack",location.href);
	mui.openWindow({url:baseUrl+"login.html"})
}
localStorage.removeItem("user")