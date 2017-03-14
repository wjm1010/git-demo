window.onload=function(){
	var systemInfo=document.getElementById("info");
	var systemMes=document.getElementById("system-mes");
	var mesClose=document.getElementById("mes-close");

	var setting=document.getElementById("setting");
	var keySetting=document.getElementById("key-setting");
	var keyClose=document.getElementById("key-close");

	var sellBtn=document.getElementById("sell-btn");
	var buyBtn=document.getElementById("buy-btn");
	var buyMarket=document.getElementById("buy-market");
	var sellMarket=document.getElementById("sell-market");

	systemInfo.onclick=function(){
		systemMes.style.display='block';
	};

	mesClose.onclick=function(){
		systemMes.style.display='none';
	};
	setting.onclick=function(){
		keySetting.style.display='block';
	};
	keyClose.onclick=function(){
		keySetting.style.display='none';
	};

	sellBtn.onclick=function(){
		buyBtn.className="";
	    this.className="active";
		sellMarket.style.display="block";
		buyMarket.style.display="none";

	};
	buyBtn.onclick=function(){
		sellBtn.className="";
		this.className="active";
		buyMarket.style.display="block";
		sellMarket.style.display="none";
	};
};
