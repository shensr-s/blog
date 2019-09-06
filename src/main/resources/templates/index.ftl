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
    <title>首页</title>
</head>
<body>
<!--导航-->
<#include "common/header.ftl">
<!--导航结束-->

<!--中间内容-->
<div class="m-padded-tb-large m-container">
    <div class="ui container">

        <div class="ui stackable grid">
            <!--左边博客列表-->
            <div class="eleven wide column">
                <!--header-->
                <!--top attached 和attached 可以将两部分连接在一块-->
                <div class="ui top attached segment">
                    <div class="ui middle aligned two column grid">
                        <div class="column">
                            <div class="ui teal  header">博客</div>
                        </div>
                        <div class="right aligned column">
                            共<h3 class="ui orange header m-inline-block">14</h3>篇
                        </div>

                    </div>
                </div>
                <!--content list-->

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
                            </div>

                            <div class="five wide column">
                                <a href="#" target="_blank">
                                    <img src="https://picsum.photos/300/200?image=1027" alt=""
                                         class="ui rounded image">
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
                            </div>

                            <div class="five wide column">
                                <a href="#" target="_blank">
                                    <img src="https://picsum.photos/300/200?image=1027" alt=""
                                         class="ui rounded image">
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
                            </div>

                            <div class="five wide column">
                                <a href="#" target="_blank">
                                    <img src="https://picsum.photos/300/200?image=1027" alt=""
                                         class="ui rounded image">
                                </a>
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
            <!--右边的top-->
            <div class="five wide column">
                <!--分类-->
                <div class="ui segments">
                    <!--第一个框-->
                    <div class="ui secondary segment">
                        <div class="ui two column grid">
                            <div class="column"><i class="idea icon"></i>分类</div>
                            <div class="right aligned column">
                                <a href="#" target="_blank">more <i class="angle double right icon"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="ui teal segment">
                        <!--fluid填充满父类div-->
                        <div class="ui vertical fluid menu">
                            <a href="#" class="item">学习日志
                                <!--left pointing 小三角向左-->
                                <div class="ui teal basic left pointing label">13</div>
                            </a>
                            <a href="#" class="item">学习日志
                                <!--left pointing 小三角向左-->
                                <div class="ui teal basic left pointing label">13</div>
                            </a>
                            <a href="#" class="item">学习日志
                                <!--left pointing 小三角向左-->
                                <div class="ui teal basic left pointing label">13</div>
                            </a>
                            <a href="#" class="item">学习日志
                                <!--left pointing 小三角向左-->
                                <div class="ui teal basic left pointing label">13</div>
                            </a>
                            <a href="#" class="item">学习日志
                                <!--left pointing 小三角向左-->
                                <div class="ui teal basic left pointing label">13</div>
                            </a>
                            <a href="#" class="item">学习日志
                                <!--left pointing 小三角向左-->
                                <div class="ui teal basic left pointing label">13</div>
                            </a>

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
                                <a href="#" target="_blank">more <i class="angle double right icon"></i></a>
                            </div>

                        </div>
                    </div>
                    <div class="ui teal segment">
                        <a href="#" class="ui teal basic label m-margin-tb-tiny">Java
                            <div class="detail">11</div>
                        </a>
                        <a href="#" class="ui teal basic label m-margin-tb-tiny">C++
                            <div class="detail">11</div>
                        </a>
                        <a href="#" class="ui teal basic label m-margin-tb-tiny">Python
                            <div class="detail">11</div>
                        </a>
                        <a href="#" class="ui teal basic label m-margin-tb-tiny">数据结构
                            <div class="detail">11</div>
                        </a>
                        <a href="#" class="ui teal basic label m-margin-tb-tiny">算法设计与实现
                            <div class="detail">11</div>
                        </a>
                    </div>
                </div>
                <!--最新推荐-->
                <div class="ui segments">
                    <div class="ui secondary segment">
                        <i class="bookmark icon"></i>最新推荐
                    </div>

                    <div class="ui segment">
                        <a href="#" class="m-black">JVM</a>
                    </div>
                    <div class="ui segment">
                        <a href="#" class="m-black">GC算法</a>
                    </div>
                    <div class="ui segment">
                        <a href="#" class="m-black">数据结构</a>
                    </div>
                    <div class="ui segment">
                        <a href="#" class="m-black">设计模式</a>
                    </div>
                    <div class="ui segment">
                        <a href="#" class="m-black">spring</a>
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
    })
</script>
</body>
</html>