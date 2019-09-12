<#assign base=request.contextPath>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <!--适配移动端-->
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <!--引入CSS-->
    <link rel="stylesheet" href="${base}/css/me.css">
    <!--CDN 引入semantic-ui -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
    <title>注册</title>
    <style type="text/css">

        body > .grid {
            height: 100%;
        }

        .image {
            margin-top: -100px;
        }

        .column {
            max-width: 450px;
        }
    </style>
</head>
<body>
<!--导航-->


<!--导航结束-->

<!--中间内容-->

<div class="ui middle aligned center aligned grid">
    <div class="column">
        <h2 class="ui teal image header">
            <img src="${base}/images/s.png" class="image">
            <div class="content">
                Sign-up your account
            </div>
        </h2>
        <form class="ui large form">
            <div class="ui stacked segment">
                <div class="field">
                    <div class="ui left icon input">
                        <i class="user icon"></i>
                        <input type="text" name="username" id="username" placeholder="Username" data-content="">
                    </div>
                </div>
                <div class="field">
                    <div class="ui left icon input">
                        <i class="lock icon"></i>
                        <input type="password" name="password" id="password" placeholder="Password" data-content="">
                    </div>
                </div>
                <button type="button" class="ui fluid large teal button" id="signUpBtn">Sign Up</button>
            </div>

            <div class="ui error message"></div>

        </form>

        <div class="ui message">
            Have account? <a href="${base}/login">Log In</a> <br>
            <a href="/">游客浏览</a>
        </div>
    </div>
</div>

<!--中间内容结束-->


<#--注册成功弹窗-->
<div class="ui modal mini signUp">

    <div class="header">
        提示
    </div>
    <div class="content">
        <#--删除Id隐藏域-->

        <i class="question circle teal icon large"></i> 注册成功，是否登录？
    </div>

    <div class="actions " style="text-align: center;">
        <button class="ui approve teal button" type="button" id="loginBtn">是</button>
        <a class="ui cancel button" href="${base}/">游客浏览</a>
    </div>
</div>
<#--注册成功弹窗结束-->

<!--页面底部-->

<!--页面底部结束-->

<!--CDN 引入jquery-->
<script src="https://cdn.jsdelivr.net/npm/jquery@3.2/dist/jquery.min.js"></script>
<!--CDN 引入semantic-ui-->
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>
<#--引入通用js-->
<script src="${base}/js/common.js"></script>
<script>
    $(".menu.toggle").click(function () {
        $(".m-item").toggleClass('m-mobile-hide');
    })
    $(".ui.dropdown").dropdown();
</script>


<script>

    //form表单验证
    var $messageForm = $('.ui.form');
    $messageForm.form({
        on: "blur",
        inline: true,
        fields: {
            email: {
                identifier: 'username',
                rules: [
                    {
                        type: 'empty',
                        prompt: '请输入用户名'
                    }

                ]
            },
            password: {
                identifier: 'password',
                rules: [
                    {
                        type: 'empty',
                        prompt: '请输入密码'
                    }
                ]
            }
        }
    });


    //注册
    $("#signUpBtn").click(function () {
        var username = $("#username").val();
        var password = $("#password").val();

        var data = {};

        data.username = username;
        data.password = password;
        console.log(data);
        $.ajax({
            type: "post",
            url: "/ajax/signUp",
            contentType: "application/json;charset=UTF-8",
            data: JSON.stringify(data),
            sync: false,
            dataType: "json",
            success: function (data) {
                // console.log("success")
                if (data.code == 200) {
                    //注册成功
                    $('.ui.modal.mini.signUp').modal('show');
                }
                if (data.code == 300) {
                    console.log(data.msg)
                    //用户名存在
                    $messageForm.form('add prompt', "username", data.msg);
                }
                if (data.code = 301) {
                    console.log(data.msg)
                    //注册失败
                    $messageForm.form('add prompt', "username", data.msg);
                }

            },
            error: function () {
                console.log("error")
            }
        });
    });
    //登录
    $("#loginBtn").click(function () {
        var username = $("#username").val();
        var password = $("#password").val();

        $("#username").attr("data-content", "");
        $("#password").attr("data-content", "");
        var data = {};

        data.username = username;
        data.password = password;
        console.log(data);
        $.ajax({
            type: "post",
            url: "/ajax/login",
            contentType: "application/json;charset=UTF-8",
            data: JSON.stringify(data),
            sync: false,
            dataType: "json",
            success: function (data) {
                console.log("success");
                if (data.code === 200) {
                    window.location.href = "/"
                }

            },
            error: function () {
                console.log("error")
            }
        });
    });


</script>

</body>
</html>