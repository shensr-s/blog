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
    <title>登录</title>
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
                Log-in to your account
            </div>
        </h2>
        <form class="ui large form">
            <div class="ui stacked segment">
                <div class="field">
                    <div class="ui left icon input">
                        <i class="user icon"></i>
                        <input type="text" name="email" id="email" placeholder="请输入邮箱" data-content="">
                    </div>
                </div>
                <div class="field">
                    <div class="ui left icon input">
                        <i class="lock icon"></i>
                        <input type="password" name="password" id="password" placeholder="请输入密码" data-content="">
                    </div>
                </div>
                <button type="button" class="ui fluid large teal button" id="loginBtn">Login</button>
            </div>

            <div class="ui error message"></div>

        </form>

        <div class="ui message">
            New to us? <a href="${base}/signup">Sign Up</a> <br>
            <a href="/">游客浏览</a> <br>
            第三方：<a href="https://github.com/login/oauth/authorize?client_id=59982e9704e9a99b7808&redirect_uri=http://localhost:8080/callback&scope=user&state=1" class="ui circular icon button github"><i
                        class="github black icon"></i></a>
        </div>
    </div>
</div>

<!--中间内容结束-->


<#--验证提示信息-->

<#--验证提示信息结束-->

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

    // form表单验证

    var $messageForm=$('.ui.form');
    $messageForm.form({
            on: "blur",
            inline: true,
            fields: {
                email: {
                    identifier: 'email',
                    rules: [
                        {
                            type: 'empty',
                            prompt: '请输入邮箱'
                        },
                        {
                            type   : 'email',
                            prompt : '请输入正确的邮箱'
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

    $("#loginBtn").click(function () {
        var email = $("#email").val();
        var password = $("#password").val();
        
        $("#email").attr("data-content", "");
        $("#password").attr("data-content", "");
        var data = {};

        data.email = email;
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
                if (data.code === 300) {
                    // console.log(data.msg);
                    // 密码错误
                    $messageForm.form('add prompt', "password", data.msg);
                }
                if (data.code === 301) {
                    // console.log(data.msg);
                    // 用户名不存在
                    $messageForm.form('add prompt', "username", data.msg);
                }

            },
            error: function () {
                console.log("templates.home.error")
            }


        })


    })
</script>

</body>
</html>