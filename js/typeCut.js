/**
 * Created by Administrator on 2017/2/9.
 */
 window.onload=function(){
     function $id(id){
        return document.getElementById(id);
    }
    function typeCut(typeFather){
        var input=$id(typeFather).getElementsByTagName('input');
        for(var i=0;i<input.length;i++){
            input[i].onclick=function(){
                for(var j=0;j<input.length;j++){
                    input[j].className=" ";
                    this.className="active";
                }
            }
        }
    }
    typeCut('product-type');//卖方市场询价交易产品类型切换
    typeCut('acceptor-type');//卖方市场询价交易承兑人类型切换
    typeCut('note-date');//卖方市场询价交易票据期限切换
}