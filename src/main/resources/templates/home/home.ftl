<#assign base=request.contextPath>
<!DOCTYPE html>
<html>
<head>
    <!-- Standard Meta -->
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">

    <!-- Site Properties -->
    <title>首页</title>
    <!--CDN 引入semantic-ui -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
    <!--引入CSS-->
    <link rel="stylesheet" href="${base}/css/me.css">

    <style type="text/css">

        .hidden.menu {
            display: none;
        }

        .masthead.segment {
            min-height: 700px;
            padding: 1em 0em;
        }

        .masthead .logo.item img {
            margin-right: 1em;
        }

        .masthead .ui.menu .ui.button {
            margin-left: 0.5em;
        }

        .masthead h1.ui.header {
            margin-top: 3em;
            margin-bottom: 0em;
            font-size: 4em;
            font-weight: normal;
        }

        .masthead h2 {
            font-size: 1.7em;
            font-weight: normal;
        }

        .ui.vertical.stripe {
            padding: 8em 0em;
        }

        .ui.vertical.stripe h3 {
            font-size: 2em;
        }

        .ui.vertical.stripe .button + h3,
        .ui.vertical.stripe p + h3 {
            margin-top: 3em;
        }

        .ui.vertical.stripe .floated.image {
            clear: both;
        }

        .ui.vertical.stripe p {
            font-size: 1.33em;
        }

        .ui.vertical.stripe .horizontal.divider {
            margin: 3em 0em;
        }

        .quote.stripe.segment {
            padding: 0em;
        }

        .quote.stripe.segment .grid .column {
            padding-top: 5em;
            padding-bottom: 5em;
        }

        .footer.segment {
            padding: 5em 0em;
        }

        .secondary.pointing.menu .toc.item {
            display: none;
        }

    </style>


</head>
<body>

<!--导航-->
<#include "${base}/common/header.ftl">
<!--导航结束-->

<!-- Page Contents -->
<#if user??>
    <!--中间内容-->
    <div class="m-padded-tb-large ">
        <div class="ui  container">

            <div class="ui stackable grid">
                <!--左边博客列表-->
                <div class="eleven wide column">
                    <!--header-->
                    <!--top attached 和attached 可以将两部分连接在一块-->

                </div>
                <!--右边的top-->
                <div class="five wide column">
                    <!--分类-->
                    <div class="ui segments">
                        <!--第一个框-->
                        <div class="ui secondary segment">
                            <div class="ui two column grid">
                                <div class="column"><i class="idea icon"></i>分类</div>
                                <div class="right aligned column">
                                    <a href="${base}/blog/type" target="_blank">more <i
                                                class="angle double right icon"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="ui teal segment">
                            <!--fluid填充满父类div-->
                            <div class="ui vertical fluid menu typeFlag">


                                <#--博客分类插入 -->
                                <#--   博客分类插入 -->
                                <#--     博客分类插入 -->
                                暂无数据,点击
                                <a href="${request.contextPath}/blog/type/manage" class=" item">新建</a>


                            </div>
                        </div>
                    </div>
                    <!--标签-->
                    <div class="ui segments">

                        <div class="ui secondary segment">
                            <div class="ui two column grid">
                                <div class="column">
                                    <i class="tags icon"></i>标签
                                </div>
                                <div class="right aligned column">
                                    <a href="${base}/blog/tag" target="_blank">more <i
                                                class="angle double right icon"></i></a>
                                </div>

                            </div>
                        </div>
                        <div class="ui teal segment tagFlag">
                            <!--标签插入的地方-->
                            <!--标签插入的地方-->
                            <!--标签插入的地方-->
                            暂无数据,点击
                            <a href="${request.contextPath}/blog/tag/manage" class=" item">新建</a>

                        </div>
                    </div>
                    <!--最新推荐-->
                    <div class="ui segments">
                        <div class="ui secondary segment">
                            <i class="bookmark icon"></i>最新推荐
                        </div>

                        <div class="ui teal segment">
                            <div class="ui vertical fluid menu newFlag">
                                <#--最新推荐插入-->
                                <#--最新推荐插入-->
                                <#--最新推荐插入-->
                                <#--最新推荐插入-->
                                暂无数据,点击
                                <a href="${request.contextPath}/blog/add" class=" item">新建</a>
                            </div>

                        </div>
                    </div>

                    <!--二维码-->
                    <h4 class="ui horizontal divider header">扫码关注我</h4>
                    <div class="ui card centered" style="width: 11em">
                        <img src="${base}/images/myWeChat.jpg" alt="" class="ui rounded image">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--中间内容结束-->

<#else >
    <div class="pusher">
        <div class="ui inverted vertical masthead center aligned segment" >

            <div class="ui text container">
                <h1 class="ui inverted header">
                    ZiMo's Blog System
                </h1>
                <h2>Do whatever you want when you want to.</h2>
<#--                <h2>想做什么就做什么。</h2>-->
                <a href="${base}/login" class="ui huge primary button">Get Started <i class="right arrow icon"></i></a>
            </div>

        </div>

        <div class="ui vertical stripe segment">
            <div class="ui middle aligned stackable grid container">
                <div class="ui container">

                    <div class="ui stackable grid">
                        <!--左边博客列表-->
                        <div class="eleven wide column">
                            <!--header-->
                            <!--top attached 和attached 可以将两部分连接在一块-->

                        </div>
                        <!--右边的top-->
                        <div class="five wide column">
                            <!--分类-->
                            <div class="ui segments">
                                <!--第一个框-->
                                <div class="ui secondary segment">
                                    <div class="ui two column grid">
                                        <div class="column"><i class="idea icon"></i>分类</div>
                                        <div class="right aligned column">
                                            <a href="${base}/blog/type" target="_blank">more <i
                                                        class="angle double right icon"></i></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="ui teal segment">
                                    <!--fluid填充满父类div-->
                                    <div class="ui vertical fluid menu typeFlag">


                                        <#--博客分类插入 -->
                                        <#--   博客分类插入 -->
                                        <#--     博客分类插入 -->
                                        暂无数据,点击
                                        <a href="${request.contextPath}/blog/type/manage" class=" item">新建</a>


                                    </div>
                                </div>
                            </div>
                            <!--标签-->
                            <div class="ui segments">

                                <div class="ui secondary segment">
                                    <div class="ui two column grid">
                                        <div class="column">
                                            <i class="tags icon"></i>标签
                                        </div>
                                        <div class="right aligned column">
                                            <a href="${base}/blog/tag" target="_blank">more <i
                                                        class="angle double right icon"></i></a>
                                        </div>

                                    </div>
                                </div>
                                <div class="ui teal segment tagFlag">
                                    <!--标签插入的地方-->
                                    <!--标签插入的地方-->
                                    <!--标签插入的地方-->


                                </div>
                            </div>
                            <!--最新推荐-->
                            <div class="ui segments">
                                <div class="ui secondary segment">
                                    <i class="bookmark icon"></i>最新推荐
                                </div>

                                <div class="ui teal segment">
                                    <div class="ui vertical fluid menu newFlag">
                                        <#--最新推荐插入-->
                                        <#--最新推荐插入-->
                                        <#--最新推荐插入-->
                                        <#--最新推荐插入-->
                                        暂无数据,点击
                                        <a href="${request.contextPath}/blog/add" class=" item">新建</a>
                                    </div>

                                </div>
                            </div>

                            <!--二维码-->
                            <h4 class="ui horizontal divider header">扫码关注我</h4>
                            <div class="ui card centered" style="width: 11em">
                                <img src="${base}/images/myWeChat.jpg" alt="" class="ui rounded image">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</#if>

<!--页面底部-->
<#include "../common/footer.ftl">
<!--页面底部结束-->

<#--分页参数隐藏域-->
<input type="hidden" id="currentPage" value="1">
<input type="hidden" id="pageSize" value="6">
<#--分页参数隐藏域结束-->
<!--CDN 引入jquery-->
<script src="https://cdn.jsdelivr.net/npm/jquery@3.2/dist/jquery.min.js"></script>
<!--CDN 引入semantic-ui-->
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>
<#--引入通用js-->
<script src="${base}/js/common.js"></script>
<script>
    $("#home").addClass("active");
    $(".menu.toggle").click(function () {
        $(".m-item").toggleClass('m-mobile-hide');
    });
    //头像下拉
    $(".ui.dropdown").dropdown();
</script>
<script>
    $(document).ready(function () {

        // // fix menu when passed
        // $('.masthead').visibility({
        //     once: false,
        //     onBottomPassed: function () {
        //         $('.fixed.menu').transition('fade in');
        //     },
        //     onBottomPassedReverse: function () {
        //         $('.fixed.menu').transition('fade out');
        //     }
        // });
        //
        // // create sidebar and attach to menu open
        // $('.ui.sidebar').sidebar('attach events', '.toc.item');


        //查询博客列表
        homeBlogList(1);
        //查询博客标签
        homeTagList();
        //查询博客类型
        homeTypeList();
        //查询最新博客推荐
        homeNewBlogList();

    });

    //查询博客列表
    function homeBlogList(currentPage) {
        //设置隐藏域中currentPage的值
        $("#currentPage").val(currentPage);

        var data = {};
        data.pageNum = $("#currentPage").val();
        data.pageSize = $("#pageSize").val();
        console.log(data);
        $.ajax({
            type: "get",
            url: "/blog/ajax/home/list",
            data: data,
            dataType: "html",
            contentType: 'application/json;charset=UTF-8',
            success: function (data) {
                $(".eleven.wide.column").empty();
                $(".eleven.wide.column").html(data);
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                $(".loading-box").hide();
                if (XMLHttpRequest.status == 303) {
                    window.location.href = "/login";
                } else {
                    //layer.msg("获取需求列表失败");
                    console.log("获取博客列表失败")
                }
            }
        });

    };

    //查询博客标签
    function homeTagList() {
        $.ajax({
            type: "get",
            url: "/blog/ajax/home/tag",
            dataType: "html",
            contentType: 'application/json;charset=UTF-8',
            success: function (data) {
                $(".ui.teal.segment.tagFlag").empty();
                $(".ui.teal.segment.tagFlag").html(data);
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                $(".loading-box").hide();
                if (XMLHttpRequest.status == 303) {
                    window.location.href = "/login";
                } else {
                    //layer.msg("获取需求列表失败");
                    console.log("获取博客标签失败")
                }
            }
        });
    };

    //查询博客类型
    function homeTypeList() {
        $.ajax({
            type: "get",
            url: "/blog/ajax/home/type",
            dataType: "html",
            contentType: 'application/json;charset=UTF-8',
            success: function (data) {
                $(".ui.vertical.fluid.menu.typeFlag").empty();
                $(".ui.vertical.fluid.menu.typeFlag").html(data);
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                $(".loading-box").hide();
                if (XMLHttpRequest.status == 303) {
                    window.location.href = "/login";
                } else {

                    console.log("获取博客类型失败")
                }
            }
        });
    };

    //查询最新博客推荐
    function homeNewBlogList() {
        $.ajax({
            type: "get",
            url: "/blog/ajax/home/newBlog",
            dataType: "html",
            contentType: 'application/json;charset=UTF-8',
            success: function (data) {
                $(".ui.vertical.fluid.menu.newFlag").empty();
                $(".ui.vertical.fluid.menu.newFlag").html(data);
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                $(".loading-box").hide();
                if (XMLHttpRequest.status == 303) {
                    window.location.href = "/login";
                } else {

                    console.log("获取最新推荐失败")
                }
            }
        });
    };
</script>
</body>

</html>

