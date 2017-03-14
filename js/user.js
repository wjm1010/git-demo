window.onload=function(){


	var completeMes=document.getElementById("complete-mes");
	var centerSection=document.getElementById("center-section");
	var inputSection=document.getElementById("input-section");
	var nameShow=document.getElementById("name-show");
	var typeShow=document.getElementById("type-show");
	var countShow=document.getElementById("count-show");
	var bankShow=document.getElementById("bank-show");
	var personShow=document.getElementById("person-show");
	var mesShow=document.getElementById("mes-show");

	if( bankShow.innerHTML!=""){
	    console.log(1);
		 centerSection.style.display="none";
		inputSection.style.display="none";
		  mesShow.style.display="block";
	}else {
		console.log(2);
		centerSection.style.display="block";
		inputSection.style.display="none";
		mesShow.style.display="none";
	}

	completeMes.onclick=function(){
		centerSection.style.display="none";
		inputSection.style.display="block";
	};


	var companyPerson1=document.getElementById("company-person");
	var companyName1=document.getElementById("companyName");
	var companyBankNumber1=document.getElementById("companyBankNumber");
	var companyUname1=document.getElementById("companyUname");
	var companyPersonName1=document.getElementById("companyPersonName");
	var licenNumber=document.getElementById("licenNumber");
	var companyBankName1=document.getElementById("companyBankName");
	var companyUphone1=document.getElementById("companyUphone");
	var address1=document.getElementById("address");
	var companyPersonPhone1=document.getElementById("companyPersonPhone");



	var companyBankNumber=document.getElementById("companyBankNumber");
	var aInput=inputSection.getElementsByTagName('input');
	var selectBank=document.getElementById("select-bank");
	var companyPerson=document.getElementById("company-person");
	var companyName=document.getElementById("company-name");
	var companyType=document.getElementById("company-type");
	var companyBank=document.getElementById("company-bank");
	var companyCount=document.getElementById("company-count");
	var mesConfirm=document.getElementById("mes-confirm");
	var cancel=document.getElementById("cancel");
	var submit=document.getElementById("submit");
	var confCancel=document.getElementById("conform-cancel");
	var confConf=document.getElementById("conform-conform");



	cancel.onclick=function(){
		aInput[0].value="";
		aInput[3].value="";
		selectBank.value="";
		centerSection.style.display="block";
		inputSection.style.display="none";
	};
	submit.onclick=function(){
		/*mesConfirm.style.display="block";
		companyName.innerHTML=aInput[0].value;
		companyPerson.innerHTML=aInput[3].value;
		companyBank.innerHTML=selectBank.value;*/
		if( companyPerson1.value==""||
			companyName1.value==""||
			companyBankNumber1.value==""||
			companyUname1.value==""||
			licenNumber.value==""||
			companyPersonName1.value==""||
			companyBankName1.value==""||
			address1.value==""||
			companyUphone1.value==""||companyPersonPhone1.value==""){

			   alert("信息不能为空");
			// return false;
		}else {
			mesConfirm.style.display="block";
			companyName.innerHTML=aInput[0].value;
			companyPerson.innerHTML=aInput[3].value;
			companyBank.innerHTML=selectBank.value;
			companyCount.innerHTML=aInput[1].value;
			companyType.innerHTML=typeShow.innerHTML;
		}


	};
	confCancel.onclick=function(){
		mesConfirm.style.display="none";
	};
	confConf.onclick=function(){
		inputSection.style.display="none";
		mesShow.style.display="block";
		nameShow.innerHTML=aInput[0].value;
        personShow.innerHTML=aInput[3].value;
        bankShow.innerHTML=selectBank.value;
		companyType.innerHTML=typeShow.innerHTML;
		$.ajax({
		 type: "post",
		 url: "user/updateUser",
		 data:$('#form').serialize(),
		 success: function(data) {

		 },
		 error: function(data) {

		 }
		 })
       
	};

};
