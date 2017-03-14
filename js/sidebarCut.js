/**
 * Created by Administrator on 2017/2/9.
 */
window.onload=function(){
    // 侧边栏切换改变iframe地址
    function $id(id){
        return document.getElementById(id);
    }
    var li=$id('user-sidebar').getElementsByTagName('li');
    var ifr=$id('right-content').getElementsByTagName('iframe')[0];
    var alink=$id('user-sidebar').getElementsByTagName('a');
    for(var i=0;i<li.length;i++){
        li[i].index=i;
        li[i].onclick=function(){
            for(var j=0;j<li.length;j++){
                li[j].className=" ";
                this.className="active";
            }
            ifr.src=alink[this.index].getAttribute('_link');
        }
    }
}