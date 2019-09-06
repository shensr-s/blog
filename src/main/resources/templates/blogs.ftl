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
    <title>博客管理</title>
</head>
<body>
<!--导航-->
<#include "${base}/common/header.ftl">

<div class="ui menu attached">
    <div class="ui container ">
        <div class="right menu">
            <a href="" class="item">发布</a>
            <a href="" class="active teal item">列表</a>
        </div>
    </div>
</div>
<!--导航结束-->

<!--中间内容-->
<div class="m-padded-tb-large m-container-small">
    <div class="ui container">
        <!--搜索栏-->
        <form action="#" method="post" class="ui segment form">
            <!--第一行-->
            <div class="inline fields">
                <div class="field">
                    <input type="text" name="title" placeholder="请输入标题">
                </div>
                <div class="field">
                    <div class="ui selection dropdown">
                        <!--隐藏域：用于存放选择的值-->
                        <input type="text" class="hidden" name="type">
                        <i class="ui dropdown icon"></i>
                        <div class="default text">请选择分类</div>
                        <div class="menu">
                            <!--选项内容-->
                            <div class="item" data-value="1">JAVA</div>
                            <div class="item" data-value="2">Spring</div>
                            <div class="item" data-value="3">SpringBoot</div>
                        </div>
                    </div>
                </div>
                <div class="field">
                    <div class="ui checkbox">
                        <input type="checkbox" name="recommend" id="recommend">
                        <!--for="recommend" 关联checkbox 点击文字的时候也可以关联-->
                        <label for="recommend">推荐</label>
                    </div>
                </div>
                <div class="field">
                    <button class="ui button teal basic mini"><i class="search icon"></i>搜索</button>
                </div>
            </div>
        </form>
        <!--搜索栏结束-->

        <!--表格-->
        <!--celled 加网格线-->
        <table class="ui table celled">
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
                <td>java学习笔记</td>
                <td>java</td>
                <td>√</td>
                <td>2019-08-01 11:11:11</td>
                <td>
                    <a href="" class="ui mini teal m-text-thin button">编辑</a>
                    <a href="" class="ui mini red m-text-thin button">删除</a>

                </td>
            </tr>

            <tr>
                <td>1</td>
                <td>java学习笔记</td>
                <td>java</td>
                <td>√</td>
                <td>2019-08-01 11:11:11</td>
                <td>
                    <a href="" class="ui mini teal m-text-thin button">编辑</a>
                    <a href="" class="ui mini red m-text-thin button">删除</a>

                </td>
            </tr>
            </tbody>
            <tfoot>
            <tr>
                <!--合并单元格-->
                <th colspan="6">
                    <div class="ui  floated pagination mini menu">
                        <a href="" class="item">首页</a>
                        <a class="icon item">
                            <i class="left chevron icon"></i>
                        </a>
                        <a class="item">1</a>
                        <a class="item">2</a>
                        <a class="item">3</a>
                        <a class="item">4</a>
                        <a class="icon item">
                            <i class="right chevron icon"></i>
                        </a>
                        <a href="#" class="item">尾页</a>
                    </div>

                    <a href="" class="ui mini right floated teal basic button">新增</a>
                </th>
            </tr>
            </tfoot>
        </table>
        <!--表格结束-->
    </div>
</div>
<!--中间内容结束-->


<!--页面底部-->
<#include "${base}/common/footer.ftl">
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
</body>
</html>