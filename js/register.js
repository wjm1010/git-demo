$(function() {

    $("#infor p span").css({
        fontSize: '14px',
        color: 'red',
        marginLeft: '30px'
    });


    //登录页面


    //登陆数据内容为空时情况

    $('#submit1').on('click', function() {
        $(this).css('background', '#4395c5');
        if ($('#value1').val() == "") {
            $('.value1').html('*账号不能为空');
        }
        if ($('#value2').val() == "") {
            $('.value2').html('*密码不能为空');
        }
        if ($('#value3').val() == "") {
            $('.value3').html('*验证码不能为空');
        }
    })

    //登陆数据获取焦点事件

    $("#value1").focus(function() {
        $('.value1').html('')
    });
    $("#value2").focus(function() {
        $('.value2').html('')
        if ($('#value1').val() == "") {
            $('.value1').html('*账号不能为空');
        }
    });
    $("#value3").focus(function() {
        $('.value3').html('')
        if ($('#value2').val() == "") {
            $('.value2').html('*密码不能为空');
        }
    });

    //登陆数据内容正则匹配


    // 记住密码 保护账号点击事件

    $(".account i").css('color', '#fff');
    $(".account1 i").css('color', '#fff');
    $(".accoun1").css('cursor', 'pointer');
    $(".accoun2").css('cursor', 'pointer');
    var i = 0;
    $(".account .a").click(function() {
        i++;
        if (i % 2 == 0) {
            $(".account i").css('color', '#fff');
        } else {
            $(".account i").css('color', '#3279a3');
        }
    });
    $(".account1 .a1").click(function() {
        i++;
        if (i % 2 == 0) {
            $(".account1 i").css('color', '#fff');
        } else {
            $(".account1 i").css('color', '#3279a3');
        }
    });
    $(".accoun").click(function() {
        i++;
        if (i % 2 == 0) {
            $(".account i").css('color', '#fff');
        } else {
            $(".account i").css('color', '#3279a3');
        }
    });
    $(".accoun1").click(function() {
        i++;
        if (i % 2 == 0) {
            $(".account1 i").css('color', '#fff');
        } else {
            $(".account1 i").css('color', '#3279a3');
        }
    });


    //游客访问 注册账号 忘记密码 使用指南

    // $("#visit").click(function() {
    //   window.location.href=""
    // })
    $("#sign").click(function() {
		// alert(121321);
        window.location.href = "./signIn.html"
    })
    $("#forget").click(function() {
            window.location.href = "./find.html"
        })
        // $("#guide").click(function() {
        //   window.location.href=""
        // })



    // 注册页面

    $("#infor ul li span").css({
        fontSize: '14px',
        color: 'red',
        marginRight: '30px',
        width: '160px'
    });

    //表单数据内容为空时情况

    $('#submit2').on('click', function() {
        $(this).css('background', '#4395c5');
        if ($('#value4').val() == "") {
            $('.value4').html('*名称不能为空');
        }
        if ($('#value5').val() == "") {
            $('.value5').html('*姓名不能为空');
        }
        if ($('#value6').val() == "") {
            $('.value6').html('*密码不能为空');
        }
        if ($('#value7').val() == "") {
            $('.value7').html('*确认密码不能为空');
        }
        if ($('#value8').val() == "") {
            $('.value8').html('*手机号不能为空');
        }
        if ($('#value9').val() == "") {
            $('.value9').html('*验证码不能为空');
        }
        if ($('#value10').val() == "") {
            $('.value10').html('*邮箱不能为空');
        }
    })

    //表单数据内容获取焦点事件

    $("#value4").focus(function() {
        $('.value4').html('')
    });
    $("#value5").focus(function() {
        $('.value5').html('')
        if ($('#value4').val() == "") {
            $('.value4').html('*名称不能为空');
        }
    });
    $("#value6").focus(function() {
        $('.value6').html('')
        if ($('#value5').val() == "") {
            $('.value5').html('*姓名不能为空');
        }
    });
    $("#value7").focus(function() {
        $('.value7').html('')
        if ($('#value6').val() == "") {
            $('.value6').html('*密码不能为空');
        }
    });
    $("#value8").focus(function() {
        $('.value8').html('')
        if ($('#value7').val() == "") {
            $('.value7').html('*确认密码不能为空');
        }
        // 密码验证
        if ($('#value6').val() != $('#value7').val()) {
            $('.value7').html('*两次输入密码不一致');
        }
    });
    $("#value9").focus(function() {
        $('.value9').html('')
        if ($('#value8').val() == "") {
            $('.value8').html('*手机号不能为空');
        }
    });
    $("#value10").focus(function() {
        $('.value10').html('')
        if ($('#value9').val() == "") {
            $('.value9').html('*验证码不能为空');
        }
    });



    // 同意协议条款点击事件

    $(".protocol i").click(function() {
        i++;
        if (i % 2 == 0) {
            $(this).css('color', '#3279a3');
        } else {
            $(this).css('color', '#2d2f30');
        }
    });
    $(".protocol .accoun2").click(function() {
        i++;
        if (i % 2 == 0) {
            $(".protocol i").css('color', '#3279a3');
        } else {
            $(".protocol i").css('color', '#2d2f30');
        }
    });

    // 注册点击事件
    $("#condition input").click(function() {
        $(this).css('background', '#4395c5');
    });



    // 找回密码

    // 点击提交按钮
    $('#submit3').on('click', function() {
        $(this).css('background', '#4395c5');
        if ($('#value11').val() == "") {
            $('.value11').html('*手机号不能为空');
        }
        if ($('#value12').val() == "") {
            $('.value12').html('*验证码不能为空');
        }
        if ($('#value13').val() == "") {
            $('.value13').html('*密码不能为空');
        }
        if ($('#value14').val() == "") {
            $('.value14').html('*确认密码不能为空');
        }
        if ($('#value13').val() != $('#value14').val()) {
            $('.value14').html('*两次输入密码不一致');
        }
    })

    //表单数据内容获取焦点事件

    $("#value11").focus(function() {
        $('.value11').html('')
    });
    $("#value12").focus(function() {
        $('.value12').html('')
        if ($('#value11').val() == "") {
            $('.value11').html('*手机号不能为空');
        }
    });
    $("#value13").focus(function() {
        $('.value13').html('')
        if ($('#value12').val() == "") {
            $('.value12').html('*验证码不能为空');
        }
    });
    $("#value14").focus(function() {
        $('.value14').html('')
        if ($('#value13').val() == "") {
            $('.value13').html('*密码不能为空');
        }
    });

});