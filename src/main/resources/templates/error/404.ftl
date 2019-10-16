<#assign base=request.contextPath>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <!--适配移动端-->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <!--引入CSS-->
    <link rel="stylesheet" href="${base}/css/me.css">
    <!--CDN 引入semantic-ui -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
    <title>出错啦!!!-404</title>
<#--    <style>-->
<#--        .Layer1 {-->
<#--            position:absolute;-->
<#--            top:30%;-->
<#--            left:30%;-->
<#--            margin:-100px 0 0 -100px;-->
<#--            zoom:0.5;-->
<#--            /* 要设置这个div的宽度 */-->
<#--            width: 50%;-->
<#--        }-->
<#--        /*占满整个屏幕*/-->
<#--        /*.masthead.segment {*/-->
<#--        /*    min-height: 700px;*/-->
<#--        /*    padding: 1em 0em;*/-->
<#--        /*}*/-->
<#--    </style>-->
</head>
<body>
<!--导航-->
<#include "${base}/common/header.ftl">
<!--导航结束-->

<!--中间内容-->
<div class="pusher">
    <div class="ui  vertical masthead center aligned segment">

        <div class="ui  container">
            <div class="ui segment ">
                <div class="Layer1"></div>
                <img style="width: 100%" src="${base}/images/404.png" alt="404">
            </div>
        </div>

    </div>
</div>
<!--中间内容-->


<#--查看源代码可以看到错误信息，用户看不到的-->
<#--<div>-->
<#--    <div th:utext="'&lt;!--'" th:remove="tag"></div>-->
<#--    <div th:utext="'Failed Request URL : ' + ${url}" th:remove="tag"></div>-->
<#--    <div th:utext="'Exception message : ' + ${exception.message}" th:remove="tag"></div>-->
<#--    <ul th:remove="tag">-->
<#--        <li th:each="st : ${exception.stackTrace}" th:remove="tag"><span th:utext="${st}" th:remove="tag"></span></li>-->
<#--    </ul>-->
<#--    <div th:utext="'--&gt;'" th:remove="tag"></div>-->
<#--</div>-->
<#--中间内容结束-->


<!--页面底部-->
<#include "${base}/common/footer.ftl">
<!--页面底部结束-->

<!--CDN 引入jquery-->
<script src="https://cdn.jsdelivr.net/npm/jquery@3.2/dist/jquery.min.js"></script>
<!--CDN 引入semantic-ui-->
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>
</body>
</html>