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
    <title>关于我</title>
</head>
<body>
<!--导航-->
<#include "common/header.ftl">
<!--导航结束-->

<!--中间内容-->
<div class="m-padded-tb-large <#--m-container-small-->">
    <div class="ui container">
        <div class="ui stackable grid">
            <!--图片-->
            <div class="eleven wide column">
                <img src="https://picsum.photos/800/600?image=1027" alt="" class="ui rounded image">
            </div>
            <div class="five wide column">
                <!--第一行-->
                <div class="ui top attached segment">
                    <div class="ui header">关于我</div>
                </div>
                <!--第二行 简介-->
                <div class="ui attached segment">
                    <p>ZiMo，一个独立开发者，折腾在 0 和 1 世界的大叔；一个终身学习者，誓将学习无限循环. 希望结识可以共同成长的小伙伴.</p>
                    <p>热爱编程，喜欢折腾，正在探索高效学习编程技术的方法...</p>
                </div>
                <!--第三行 爱好-->
                <div class="ui attached segment">
                    <div class="ui orange basic label m-margin-tb-tiny">编程</div>
                    <div class="ui orange basic label m-margin-tb-tiny">健身</div>
                    <div class="ui orange basic label m-margin-tb-tiny">读书</div>
                    <div class="ui orange basic label m-margin-tb-tiny">发呆</div>
                </div>
                <!--第四行 技术-->
                <div class="ui attached segment">
                    <div class="ui teal basic label m-margin-tb-tiny">JAVA</div>
                    <div class="ui teal basic label m-margin-tb-tiny">JQuery</div>
                    <div class="ui teal basic label m-margin-tb-tiny">SpringBoot</div>
                    <div class="ui teal basic label m-margin-tb-tiny">Spring</div>
                    <div class="ui teal basic label m-margin-tb-tiny">MySQL</div>
                    <div class="ui teal basic label m-margin-tb-tiny">Linux</div>
                </div>
                <!--第五行 社交-->
                <div class="ui attached segment">

                    <a href="https://github.com/HansGerry" class="ui circular icon button github"><i
                            class="github icon"></i></a>
                    <a href="javascript:void(0)" class="ui circular icon button weixin" data-content="shensr"><i
                            class="weixin icon"></i></a>
                    <a href="javascript:void(0)" class="ui circular icon button qq" data-content="1182857284"><i
                            class="qq icon"></i></a>
                    <a href="" class="ui circular icon button weibo"><i class="weibo icon"></i></a>
                </div>

                <!--微信弹窗-->
                <div class="ui weChat-qr flowing popup transition hidden">
                    <div class="image">
                        <img src="${base}/images/myWeChat.jpg" alt="" class="ui rounded bordered image"
                             style="width: 120px">
                    </div>
                </div>
                <!--QQ弹窗-->
                <div class="ui qq-qr flowing popup transition hidden">
                    <div class="image">
                        <img src="${base}/images/myQQ.jpg" alt="" class="ui rounded bordered image"
                             style="width: 120px">
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

    $("#about").addClass("active");
    $(".menu.toggle").click(function () {
        $(".m-item").toggleClass('m-mobile-hide');
    });
    //头像下拉
    $(".ui.dropdown").dropdown();


    //微信弹窗
    $(".weixin").popup({
        popup: $(".weChat-qr.popup"),//定位到哪
        // on: 'click',//点击触发
        position: 'bottom center'//位置
    });
    //QQ弹窗
    $(".qq").popup({
        popup: $(".qq-qr.popup"),//定位到哪
        // on: 'click',//点击触发
        position: 'bottom center'//位置
    })
</script>
</body>
</html>