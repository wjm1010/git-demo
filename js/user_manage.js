/**
 * Created by Administrator on 2017/1/23.
 */
window.onload=function(){
	function $id(id){
		return document.getElementById(id);
	}
	$id('add-user').onclick=function(){
		$id('add-user-window').style.display="block";
	}
	$id('cancel').onclick=function(){
		$id('add-user-window').style.display="none";
	}
	$id('sumitUser').onclick=function(){
		var newTr=document.createElement('tr');
		for(var i=0;i<10;i++){
			var newTd=document.createElement('td');
			newTr.appendChild(newTd);
		}
		var now=new Date();
		var year=now.getFullYear();
		var month=now.getMonth()+1;
		var day=now.getDate();
		if(month<10){
			month="0"+month;
		}else{
			month=month;
		}
		if(day<10){
			day="0"+day;
		}else{
			day=day;
		}
		var createTime=""+year+"/"+month+"/"+day+"";
		var newTdValue=newTr.getElementsByTagName('td');
		newTdValue[0].innerHTML=$id('name').value;
		newTdValue[1].innerHTML=$id('belong-group').value;
		newTdValue[2].innerHTML=$id('phone-num').value;
		newTdValue[3].innerHTML=$id('email').value;
		newTdValue[4].innerHTML=$id('code').value;
		newTdValue[5].innerHTML=createTime;
		newTdValue[6].innerHTML=" ";
		newTdValue[7].innerHTML=" ";
		newTdValue[8].innerHTML=" ";
		newTdValue[9].innerHTML=" ";
		$id('user-table-body').appendChild(newTr);
		$id('add-user-window').style.display="none";
		$id('add-user-window').style.display="none";
	}
	//单击审核状态弹出审核框
	var check=document.getElementsByClassName("wait-audit");
	var checkWindow= document.getElementById("check-user-window");
	for(var i=0;i<check.length;i++){
		check[i].onclick=function(){
			var thisParentNode=this.parentNode.parentNode;
			var thisTd=thisParentNode.getElementsByTagName('td');

            $id('check-phone-num').value=thisTd[4].innerHTML;
            $id("check-name").value=thisTd[2].innerHTML;
            $id("check-password").value=thisTd[6].innerHTML;
            $id("check-email").value=thisTd[5].innerHTML;
            $id("check-group").value=thisTd[3].innerHTML;

            $id('userId').value=thisTd[1].innerHTML;
            $id('roId').value=thisTd[0].innerHTML;

			checkWindow.style.display="block";
			var checkConfirm=document.getElementById("check-user-btn");
			var checkBtn=checkConfirm.getElementsByTagName("input");
			var that=this;
			checkBtn[0].onclick=function(){
				checkWindow.style.display="none";
				that.style.backgroundColor="#ab661c";
				that.className="unable-audit";
				that.value="审核失败";
				that.disabled=true;
			}
			checkBtn[1].onclick=function(){
				checkWindow.style.display="none";
				that.style.backgroundColor="#476ea1";
				that.className="pass-audit";
				that.value="审核成功";
				that.disabled=true;
			}
		}
	}
}
