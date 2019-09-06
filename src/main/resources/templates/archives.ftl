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
    <title>归档</title>
</head>
<body>
<!--导航-->
<#include "common/header.ftl">
<!--导航结束-->

<!--中间内容-->
<div class="m-padded-tb-large m-container-small">
    <div class="ui container">
        <!--header-->
        <div class="ui top attached segment">
            <div class="ui middle aligned two column grid">
                <div class="column">
                    <h3 class="ui teal header">归档</h3>
                </div>
                <div class="right aligned column">
                    共<h2 class="ui orange header m-inline-block m-text-thin">14</h2>篇
                </div>
            </div>
        </div>
        <!--博客归档-->

        <h2 class="ui center aligned header">2018</h2>

        <div class="ui fluid vertical menu">
            <a href="#" class="item" target="_blank">
                <span>
                    <i class="ui teal circle small icon"></i>
                博客标题
                <div class="ui teal label left pointing mini basic ">09月04日</div>
                </span>

                <div class="ui label orange mini basic">原创</div>
            </a>
            <a href="#" class="item" target="_blank">
                <span>
                    <i class="ui teal circle small icon"></i>
                博客标题
                <div class="ui teal label left pointing mini basic ">09月04日</div>
                </span>

                <div class="ui label orange mini basic">原创</div>
            </a>
        </div>
        <h2 class="ui center aligned header">2019</h2>
        <div class="ui fluid vertical menu">
            <a href="#" class="item" target="_blank">
                <span>
                    <i class="ui teal circle small icon"></i>
                博客标题
                <div class="ui teal label left pointing mini basic ">09月04日</div>
                </span>

                <div class="ui label orange mini basic">原创</div>
            </a>
            <a href="#" class="item" target="_blank">
                <span>
                    <i class="ui teal circle small icon"></i>
                博客标题
                <div class="ui teal label left pointing mini basic ">09月04日</div>
                </span>

                <div class="ui label orange mini basic">原创</div>
            </a>
        </div>

    </div>
</div>
<!--中间内容结束-->


<!--页面底部-->
<#include "common/footer.ftl">
<!--页面底部结束-->

<!--CDN 引入jquery-->
<script src="https://cdn.jsdelivr.net/npm/jquery@3.2/dist/jquery.min.js"></script>
<!--CDN 引入semantic-ui-->
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>
<#--引入通用js-->
<script src="${base}/js/common.js"></script>
<script>
    $("#archives").addClass("active");
    $(".menu.toggle").click(function () {
        $(".m-item").toggleClass('m-mobile-hide');
    })
</script>
</body>
</html>