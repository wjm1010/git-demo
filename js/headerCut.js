/**
 * Created by Administrator on 2017/2/9.
 */
window.onload=function(){
    // tab栏切换改变iframe地址
    function $id(id){
        return document.getElementById(id);
    }
    var li=$id('user-tab').getElementsByTagName('li');
    var ifr=$id('iframe-content').getElementsByTagName('iframe')[0];
    var alink=$id('user-tab').getElementsByTagName('a');

    for(var i=0;i<li.length;i++){
        li[i].index=i;
        li[i].onclick=function(){
            for(var j=0;j<li.length;j++){
                li[j].className=" ";
                this.className="active";
            }
        }
    }

}