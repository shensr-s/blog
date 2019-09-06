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
    <!--引入markdown的css-->
    <link rel="stylesheet" href="${base}/lib/editormd/css/editormd.min.css">
    <title>博客管理</title>
</head>
<body>
<!--导航-->
<#include "${base}/common/header.ftl">

<div class="ui menu attached">
    <div class="ui container ">
        <div class="right menu">
            <a href="" class="active teal item">发布</a>
            <a href="" class="item">列表</a>
        </div>
    </div>
</div>
<!--导航结束-->

<!--中间内容-->
<div class="m-padded-tb-large m-container-small">
    <div class="ui container">
        <form action="#" method="post" class="ui form">
            <!--博客标题编辑区域-->
            <div class="field required">
                <div class="ui left labeled input">
                    <!--compact 适应文本宽度-->
                    <div class="ui teal compact basic selection dropdown label">
                        <input type="hidden" value="原创" placeholder="请选择">
                        <i class="dropdown icon"></i>
                        <div class="text">原创</div>

                        <div class="menu">
                            <div class="item" data-value="原创">原创</div>
                            <div class="item" data-value="转载">转载</div>
                            <div class="item" data-value="翻译">翻译</div>
                        </div>
                    </div>
                    <input type="text" placeholder="标题" name="title">
                </div>
            </div>
            <!--博客内容编辑区域-->
            <div class="field">
                <!--z-index: 这是层叠的样式 下边是把编辑区域放在最顶层-->
                <div id="md-content" style="z-index: 1 !important;">
                    <textarea name="content" id="" cols="30" rows="10" placeholder="博客内容" style="display: none">
                    </textarea>
                </div>
            </div>

            <div class="two fields">
                <!--选择分类-->
                <div class="field">
                    <div class="ui left labeled action input">
                        <label class="ui compact teal basic label">分类</label>
                        <div class="ui fluid selection dropdown"><!--fluid 撑满整个-->
                            <input type="hidden" name="type">
                            <i class="dropdown icon"></i><!--图标-->
                            <div class="default text">分类</div> <!--默认显示的值-->
                            <div class="menu">
                                <!--选择的内容-->
                                <div class="item" data-value="1">学习笔记</div>
                                <div class="item" data-value="2">教程</div>
                            </div>

                        </div>
                    </div>
                </div>
                <!--选择分类结束-->
                <!--选择标签-->
                <div class="field">
                    <div class="ui left labeled action input">
                        <label class="ui compact teal basic label">标签</label>
                        <!--multiple 可以多选 search 搜索(可以根据data-value和显示的值搜索)-->
                        <div class="ui fluid multiple  search selection dropdown"><!--fluid 撑满整个-->
                            <input type="hidden" name="tag">
                            <!--<i class="dropdown icon"></i>-->
                            <div class="default text">标签</div> <!--默认显示的值-->
                            <div class="menu">
                                <div class="item" data-value="1">JAVA</div>
                                <div class="item" data-value="2">Spring</div>
                                <div class="item" data-value="3">C++</div>
                                <div class="item" data-value="4">Python</div>
                                <div class="item" data-value="5">MYSQL</div>
                            </div>

                        </div>
                    </div>
                </div>
                <!--选择标签结束-->
            </div>

            <!--图片引用地址-->
            <div class="field">
                <div class="ui left labeled input">
                    <label class="ui teal basic label">首图</label>
                    <input type="text" placeholder="首图引用地址" name="picture">
                </div>
            </div>

            <div class="inline fields">
                <!--是否推荐-->
                <div class="field">
                    <div class="ui checkbox">
                        <input type="checkbox" name="recommend" id="recommend" class="hidden">
                        <label for="recommend">推荐</label>
                    </div>
                </div>
                <!--转载声明-->
                <div class="field">
                    <div class="ui checkbox">
                        <input type="checkbox" name="shareInfo" id="shareInfo" class="hidden">
                        <label for="shareInfo">转载声明</label>
                    </div>
                </div>
                <!--是否显示赞赏-->
                <div class="field">
                    <div class="ui checkbox">
                        <input type="checkbox" name="appreciation" id="appreciation" class="hidden">
                        <label for="appreciation">赞赏</label>
                    </div>
                </div>
                <!--是否开启评论功能-->
                <div class="field">
                    <div class="ui checkbox">
                        <input type="checkbox" name="comment" id="comment" class="hidden">
                        <label for="comment">评论</label>
                    </div>
                </div>
            </div>

            <div class="ui error message"></div>
            <div class="ui center aligned container">
                <button class="ui button" type="button" onclick="window.history.go(-1)">返回</button>
                <button class="ui button" type="button">保存</button>
                <button class="ui teal button">发布</button>
                <!--button不指定type  那么默认为submit-->
            </div>
        </form>

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
<!--引入markdown的js-->
<script src="${base}/lib/editormd/editormd.min.js"></script>
<script>
    $(".menu.toggle").click(function () {
        $(".m-item").toggleClass('m-mobile-hide');
    })
    $(".ui.dropdown").dropdown();

    $(".ui.form").form({
        inline:true,
        fields: {
            title: {
                identifier: 'title',
                rules: [{
                    type: 'empty',
                    prompt: '标题：请输入博客标题'
                }]
            },
            content: {
                identifier: 'content',
                rules: [{
                    type: 'empty',
                    prompt: '内容：请输入博客内容'
                }]
            },
            type: {
                identifier: 'type',
                rules: [{
                    type: 'empty',
                    prompt: '分类：请选择博客分类'
                }]
            },
            tag: {
                identifier: 'tag',
                rules: [{
                    type: 'empty',
                    prompt: '标签：请选择博客标签'
                }]
            },

        }
    });
</script>

<script type="text/javascript">
    var testEditor;

    $(function() {
        testEditor = editormd("md-content", {
            width   : "100%",
            height  : 640,
            syncScrolling : "single",
            path    : "${base}/lib/editormd/lib/"
        });

        /*
        // or
        testEditor = editormd({
            id      : "test-editormd",
            width   : "90%",
            height  : 640,
            path    : "../lib/"
        });
        */
    });
</script>
</body>
</html>