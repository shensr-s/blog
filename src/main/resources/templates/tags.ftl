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
    <title>标签</title>
</head>
<body>
<!--导航-->
<#include "common/header.ftl">
<!--导航结束-->

<!--中间内容-->
<div class="m-padded-tb-large <#--m-container-small-->">
    <div class="ui container">
        <!--header-->
        <div class="ui top attached segment">
            <div class="ui middle aligned two column grid">
                <div class="column">
                    <h3 class="ui teal header">标签</h3>
                </div>
                <div class="right aligned column">
                    共<h2 class="ui orange header m-inline-block m-text-thin">14</h2>个
                </div>
            </div>
        </div>
        <!--博客标签-->
        <div class="ui attached segment ">
            <a href="#" class="ui teal basic label m-margin-tb-tiny">Java
                <div class="detail">11</div>
            </a>
            <a href="#" class="ui  basic label m-margin-tb-tiny">C++
                <div class="detail">11</div>
            </a>
            <a href="#" class="ui  basic label m-margin-tb-tiny">Python
                <div class="detail">11</div>
            </a>
            <a href="#" class="ui  basic label m-margin-tb-tiny">数据结构
                <div class="detail">11</div>
            </a>
            <a href="#" class="ui  basic label m-margin-tb-tiny">算法设计与实现
                <div class="detail">11</div>
            </a>
            <a href="#" class="ui  basic label m-margin-tb-tiny">算法设计与实现
                <div class="detail">11</div>
            </a>
            <a href="#" class="ui  basic label m-margin-tb-tiny">算法设计与实现
                <div class="detail">11</div>
            </a>
            <a href="#" class="ui  basic label m-margin-tb-tiny">算法设计与实现
                <div class="detail">11</div>
            </a>
            <a href="#" class="ui  basic label m-margin-tb-tiny">算法设计与实现
                <div class="detail">11</div>
            </a>
            <a href="#" class="ui  basic label m-margin-tb-tiny">算法设计与实现
                <div class="detail">11</div>
            </a>


        </div>

        <!--博客列表-->


        <div class="ui top attached teal segment"></div>
        <div class="ui attached  segment m-padded-tb-mini m-mobile-lr-clear">
            <div class="ui padded vertical segment">
                <!--mobile reversed 手机端翻转-->
                <!--stackable 可以堆叠 响应手机端-->
                <div class="ui mobile reversed stackable grid">
                    <div class="eleven wide column">

                        <h3 class="ui header">你理解什么是真正的幸福吗？</h3>
                        <p class="m-text">
                            这个例子演示了如何使用JavaScript来改变元素的不透明度。这个例子演示了如何使用JavaScript来改变元素的不透明度。这个例子演示了如何使用JavaScript来改变元素的不透明度。</p>
                        <div class="ui stackable grid">
                            <div class="eleven wide column">
                                <div class="ui mini link list horizontal">
                                    <div class="item">
                                        <img src="https://picsum.photos/100/100?image=1027" alt=""
                                             class="ui avatar image">
                                        <div class="content">
                                            <a href="#" class="header">子墨同学</a>
                                        </div>

                                    </div>
                                    <div class="item">
                                        <i class="calendar icon"></i>2019-09-03
                                    </div>
                                    <div class="item">
                                        <i class="eye icon"></i>336
                                    </div>
                                </div>

                            </div>
                            <div class="right aligned five wide column">
                                <a href="#" target="_blank" class="ui label teal  mini m-text-thin">认知升级</a>
                            </div>
                        </div>

                        <!--标签-->
                        <div class="row">
                            <i class="ui tags icon"></i>
                            <a href="#" class="ui  teal  m-padded-mini m-margin-tb-tiny m-text-thin label">JAVA</a>
                        </div>
                    </div>

                    <div class="five wide column">
                        <a href="#" target="_blank">
                            <img src="https://picsum.photos/300/200?image=1027" alt="" class="ui rounded image">
                        </a>
                    </div>
                </div>
            </div>

        </div>
        <div class="ui attached  segment m-padded-tb-mini m-mobile-lr-clear">
            <div class="ui padded vertical segment">
                <!--mobile reversed 手机端翻转-->
                <!--stackable 可以堆叠 响应手机端-->
                <div class="ui mobile reversed stackable grid">
                    <div class="eleven wide column">

                        <h3 class="ui header">你理解什么是真正的幸福吗？</h3>
                        <p class="m-text">
                            这个例子演示了如何使用JavaScript来改变元素的不透明度。这个例子演示了如何使用JavaScript来改变元素的不透明度。这个例子演示了如何使用JavaScript来改变元素的不透明度。</p>
                        <div class="ui stackable grid">
                            <div class="eleven wide column">
                                <div class="ui mini link list horizontal">
                                    <div class="item">
                                        <img src="https://picsum.photos/100/100?image=1027" alt=""
                                             class="ui avatar image">
                                        <div class="content">
                                            <a href="#" class="header">子墨同学</a>
                                        </div>

                                    </div>
                                    <div class="item">
                                        <i class="calendar icon"></i>2019-09-03
                                    </div>
                                    <div class="item">
                                        <i class="eye icon"></i>336
                                    </div>
                                </div>

                            </div>
                            <div class="right aligned five wide column">
                                <a href="#" target="_blank" class="ui label teal  mini m-text-thin">认知升级</a>
                            </div>
                        </div>

                        <!--标签-->
                        <div class="row">
                            <i class="ui tags icon"></i>
                            <a href="#" class="ui  teal  m-padded-mini m-margin-tb-tiny m-text-thin label">JAVA</a>
                        </div>
                    </div>

                    <div class="five wide column">
                        <a href="#" target="_blank">
                            <img src="https://picsum.photos/300/200?image=1027" alt="" class="ui rounded image">
                        </a>
                    </div>
                </div>
            </div>

        </div>
        <div class="ui attached  segment m-padded-tb-mini m-mobile-lr-clear">
            <div class="ui padded vertical segment">
                <!--mobile reversed 手机端翻转-->
                <!--stackable 可以堆叠 响应手机端-->
                <div class="ui mobile reversed stackable grid">
                    <div class="eleven wide column">

                        <h3 class="ui header">你理解什么是真正的幸福吗？</h3>
                        <p class="m-text">
                            这个例子演示了如何使用JavaScript来改变元素的不透明度。这个例子演示了如何使用JavaScript来改变元素的不透明度。这个例子演示了如何使用JavaScript来改变元素的不透明度。</p>
                        <div class="ui stackable grid">
                            <div class="eleven wide column">
                                <div class="ui mini link list horizontal">
                                    <div class="item">
                                        <img src="https://picsum.photos/100/100?image=1027" alt=""
                                             class="ui avatar image">
                                        <div class="content">
                                            <a href="#" class="header">子墨同学</a>
                                        </div>

                                    </div>
                                    <div class="item">
                                        <i class="calendar icon"></i>2019-09-03
                                    </div>
                                    <div class="item">
                                        <i class="eye icon"></i>336
                                    </div>
                                </div>

                            </div>
                            <div class="right aligned five wide column">
                                <a href="#" target="_blank" class="ui label teal  mini m-text-thin">认知升级</a>
                            </div>
                        </div>

                        <!--标签-->
                        <div class="row">
                            <i class="ui tags icon"></i>
                            <a href="#" class="ui  teal  m-padded-mini m-margin-tb-tiny m-text-thin label">JAVA</a>
                        </div>
                    </div>

                    <div class="five wide column">
                        <a href="#" target="_blank">
                            <img src="https://picsum.photos/300/200?image=1027" alt="" class="ui rounded image">
                        </a>
                    </div>
                </div>
            </div>

        </div>



        </div>


        <!--bottom -->
        <div class="ui bottom attached segment">
            <div class="ui middle aligned two column grid">
                <div class="column">
                    <a href="#" class="ui teal basic mini button">上一页</a>
                </div>
                <div class="right aligned column">
                    <a href="#" class="ui teal basic mini button">下一页</a>
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
    // $("#tag").addClass("active");
    $(".menu.toggle").click(function () {
        $(".m-item").toggleClass('m-mobile-hide');
    })
</script>
</body>
</html>