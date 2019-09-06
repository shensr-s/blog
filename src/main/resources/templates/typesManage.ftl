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
    <title>分类管理</title>
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
                    <h3 class="ui teal header">分类管理</h3>
                </div>
                <div class="right aligned column">
                    共<h2 class="ui orange header m-inline-block m-text-thin">14</h2>个
                </div>
            </div>
        </div>

        <#--table-->
        <div class="ui attached segment">


            <table class="ui celled table">
                <thead>
                <tr>
                    <th></th>
                    <th>标题</th>
                    <th>类型</th>
                    <th>推荐</th>
                    <th>更新时间</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>1</td>
                    <td>认知水平等</td>
                    <td>认知提升</td>
                    <td>是</td>
                    <td>2019-09-06 18:29:22</td>
                    <td>
                        <a href="" class="ui mini teal basic button">编辑</a>
                        <a href="" class="ui mini red basic button">删除</a>
                    </td>
                </tr>
                </tbody>
            </table>


            <!--bottom -->
            <div >
                <div class="ui middle aligned two column grid">
                    <div class="column">
                        <a href="#" class="ui teal basic mini button">上一页</a>
                        <a href="#" class="ui teal basic mini button">下一页</a>
                    </div>
                    <div class="right aligned column">
                        <a href="#" class="ui teal basic mini button">新增</a>
                    </div>

                </div>
            </div>
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
    $("#type").addClass("active");
    $(".menu.toggle").click(function () {
        $(".m-item").toggleClass('m-mobile-hide');
    })
</script>
</body>
</html>