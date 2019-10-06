<#assign base=request.contextPath>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <!--适配移动端-->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <!--引入CSS-->
    <#--    <link rel="stylesheet" href="${base}/css/me.css">-->
    <!--CDN 引入semantic-ui -->
    <#--    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">-->
    <title>出错啦!!!-500</title>
    <link type="text/css" media="all" href="${base}/errorpage/bootstrap.min.css" rel="stylesheet">
    <link type="text/css" media="all" href="${base}/errorpage/dmaku.main.css" rel="stylesheet">
    <link type="text/css" media="all" href="${base}/errorpage/respons.css" rel="stylesheet">
</head>
<body>
<!--导航-->

<!--导航结束-->

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
<#--<#include "${base}/common/footer.ftl">-->
<!--页面底部结束-->

<div class="animationload" style="display: none;">
    <div class="loader" style="display: none;">
    </div>
</div>
<div id="wrapper">
    <div class="container">
        <div class="col-xs-12 col-sm-7 col-lg-7">
            <div class="info">
                <h1>哎呀!</h1>
                <h2>服务器爆吊了!</h2>
                <p>您正在寻找的页面被移动、移除、重命名或不存在.</p>
                <a href="${base}/" class="btn">返回首页</a>
                <a href="javascript:void(0);" onclick="window.history.go(-1);" class="btn btn-light-blue">返回上一页</a>
                <a href="#" class="btn btn-light-blue">联系我们</a>
            </div>
        </div>
        <div class="col-xs-12 col-sm-5 col-lg-5 text-center">
            <div class="guardian">
                <img src="${base}/errorpage/guardian.gif" alt="Fighting">
            </div>
        </div>
    </div>
</div>
<div id="ascrail2000" class="nicescroll-rails"
     style="width: 4px; z-index: 999999; cursor: default; position: fixed; top: 0px; height: 100%; right: 0px; display: none;">
    <div style="position: relative; top: 0px; float: right; width: 2px;
     height: 0px; background-color: rgb(255, 255, 255);
      border: 1px solid rgb(255, 255, 255);
      background-clip: padding-box; border-radius: 5px;"></div>
</div>

<!-- Scripts -->
<script src="${base}/errorpage/jquery-2.1.1.min.js" type="text/javascript"></script>
<script src="${base}/errorpage/bootstrap.min.js" type="text/javascript"></script>
<script src="${base}/errorpage/modernizr.custom.js" type="text/javascript"></script>
<script src="${base}/errorpage/jquery.nicescroll.min.js" type="text/javascript"></script>

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->
</body>
</html>