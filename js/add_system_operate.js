/**
 * Created by Administrator on 2017/1/23.
 */
 window.onload=function(){
 	function $id(id){
 		return document.getElementById(id);
 	};

 	$id('affirm').onclick=function(){
 		var newTr=document.createElement('tr');
 		for(var i=0;i<7;i++){
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
 		newTdValue[1].innerHTML=$id('handle-person').value+"/"+$id('check-preson').value;
 		newTdValue[2].innerHTML=$id('phone-num').value;
 		newTdValue[3].innerHTML=$id('email').value;
 		newTdValue[4].innerHTML=$id('code').value;
 		newTdValue[5].innerHTML=createTime

 		$id('operator-table-body').appendChild(newTr);
 	}

}
