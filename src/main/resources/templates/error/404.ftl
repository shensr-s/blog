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
    <title>404</title>
</head>
<body>
<!--导航-->

<!--导航结束-->

<!--中间内容-->
<div class="m-container-small">
    <div class="ui error message">
        <div class="ui conatiner">
            <h2>404</h2>
            <p>访问资源不存在</p>
        </div>
    </div>
</div>

<#--查看源代码可以看到错误信息，用户看不到的-->
<div>
    <div th:utext="'&lt;!--'" th:remove="tag"></div>
    <div th:utext="'Failed Request URL : ' + ${url}" th:remove="tag"></div>
    <div th:utext="'Exception message : ' + ${exception.message}" th:remove="tag"></div>
    <ul th:remove="tag">
        <li th:each="st : ${exception.stackTrace}" th:remove="tag"><span th:utext="${st}" th:remove="tag"></span></li>
    </ul>
    <div th:utext="'--&gt;'" th:remove="tag"></div>
</div>
<!--中间内容结束-->

<!--页面底部-->
<#include "${base}/common/footer.ftl">
<!--页面底部结束-->
</body>
</html>