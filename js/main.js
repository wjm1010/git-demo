(function () {
    $(function() {

        var i=0;

        $('.inbtn input').on('click',function(){
            if($(this).attr("class")=="button"){
                $(this).addClass('button1').siblings().removeClass('button1');
            }else{
                $(this).attr("class","button");
            }
        })
        $('.inbtn1 li input').on('click',function(){
            $(this).addClass('button1').siblings().removeClass('button1');
        })

        //地址选择

        $("#show").click(function() {
            i++;
            if (i%2==0) {
                $(".info").hide()
            }else {
                $(".info").show()
            }
        })


        // 人工交易-票据发布-交易中
        $("#popup").click(function() {
            $(".InDial").show();
            $(this).css('cursor', 'pointer');
        });
        $(".InDialogueStore .x").click(function() {
            $(".InDial").hide();
        })



        //人工交易-票据管理

        $(".publish input").click(function() {
            $(".pub").show();
        })
        $(".pub .back").click(function() {
            $(".pub").hide();
        })


        $("#paper_tickets").click(function() {
            $(".paper_tickets").show();
        })
        $(".paper_tickets .back").click(function() {
            $(".paper_tickets").hide();
        })


        $("#tele_tickets").click(function() {
            $(".tele_tickets").show();
            console.log(1111111)
        })
        $(".tele_tickets .back").click(function() {
            $(".tele_tickets").hide();
        })


        $("#tele_tickets1").click(function() {
            $(".tele_tickets1").show();
        })
        $(".tele_tickets1 .back").click(function() {
            $(".tele_tickets1").hide();
        })

    })
})();
