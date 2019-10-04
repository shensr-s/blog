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
    <title>个人中心</title>
</head>
<body>
<!--导航-->
<#include "common/header.ftl">
<!--导航结束-->

<!--中间内容-->
<div class="m-padded-tb-large  ">
    <div class="ui container ">

        <div class="ui stackable grid">
            <!--左边博客列表-->


            <div class="five wide column">
                <!--第一行-->
                <div class="ui top attached segment">
                    <div class="ui header center">
                        个人介绍 <a href="javascript:void(0)" onclick="editDes()"><i class="ui edit teal  icon"></i></a>
                    </div>

                </div>
                <!--第二行 简介-->
                <div class="ui attached segment">

                    <div id="desStr">
                        ${userInfo.description!"这个人懒，什么都没有留下。"}
                    </div>


                    <form class="ui form" action="#" id="form" hidden>
                        <div>

                            <textarea name="description" id="description" rows="5">${userInfo.description!""}</textarea>
                        </div>
                        <div style="margin-top: 15px;">
                            <button class="ui teal button small saveDes " type="button">保存</button>
                            <button class="ui button small cancelDes" type="button">取消</button>
                        </div>

                    </form>
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

            <!--右边的top-->
            <div class="eleven wide column">
                <!--分类-->
                <div class="ui segments">

                    <div class="ui top attached segment">
                        <div class="ui inverted divided stackable grid">
                            <div class="three wide column">
                                <div class="ui  link list">
                                    <div class="item">
                                        <img src="${userInfo.avatar!""}"
                                             class="ui avatar rounded image" alt=""
                                             style="width: 110px;height: 110px">
                                    </div>
                                </div>
                            </div>
                            <div class="thirteen wide column">
                                <div class="ui top attached segments">
                                    <div class="ui   segment">
                                        ${userInfo.username!""} &nbsp;
                                        <#if userInfo.sex??>
                                            <#if userInfo.sex==1>
                                                <i class="ui mars  teal icon"></i>
                                            </#if>
                                            <#if userInfo.sex==0>
                                                <i class="ui venus teal icon"></i>
                                            </#if>
                                        <#else >
                                            请完善个人信息

                                        </#if>


                                    </div>
                                    <div class="ui   segment">
                                        <div class="ui inverted divided stackable grid">
                                            <div class="three wide column">关注 5 <i class="ui angle right icon"></i>
                                            </div>
                                            <div class="three wide column">粉丝 5 <i class="ui angle right icon"></i>
                                            </div>
                                            <div class="three wide column">文章 27 <i class="ui angle right icon"></i>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>


                    <div class="ui bottom attached segment">

                        <div class="ui secondary pointing menu">
                            <a class="item active">
                                文章
                            </a>
                            <a class="item">
                                动态
                            </a>

                            <a class="item ">
                                最新评论
                            </a>
                            <a class="item ">
                                关注
                            </a>
                            <a class="item ">
                                粉丝
                            </a>
                        </div>
                        <div class="ui divided items">
                            <div class="item">
                                <div class="image">
                                    <img src="../images/avatar/1.jpg">
                                </div>
                                <div class="content">
                                    <a class="header">说说 Vue.js 组件的高级特性</a>
                                    <div class="description">
                                        <p>1 递归为组件设置 name 属性，这个组件就可以在自身的模板内递归调用自己。
                                            可以利用组件的可递归特性，来实现一些具有不确定层级的组件，比如级联选择器和树型组件。
                                        </p>
                                    </div>
                                    <div class="extra">
                                        dreamsline
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <div class="image">
                                    <img src="../images/avatar/1.jpg">
                                </div>
                                <div class="content">
                                    <a class="header">排序优化</a>
                                    <div class="description">
                                        <p>一、如何选择化的排序算法为什选择快速排序？
                                            线性排序时间复杂度很低但使用场景特殊，如果要写一个通用排序函数，不能选择线性排序。
                                        </p>
                                    </div>
                                    <div class="extra">
                                        dreamsline
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
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
    $(".menu.toggle").click(function () {
        $(".m-item").toggleClass('m-mobile-hide');
    });
    //头像下拉
    $(".ui.dropdown").dropdown();

    $(document).ready(function () {
        $('.ui.menu .item').click(function () {
            $(this).siblings().removeClass('active');
            $(this).addClass('active');
        });

        //保存个人简介修改
        $(".saveDes").click(function () {

        });
        //取消个人简介修改
        $(".cancelDes").click(function () {
            $("#desStr").show();
            $("#form").hide();
        });
    });

    //修改个人简介
    function editDes() {
        $("#desStr").hide();
        $("#form").show();
    }
</script>
</body>
</html>