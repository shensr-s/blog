<#assign base=request.contextPath>
<!DOCTYPE html>
<html>
<head>
    <!-- Standard Meta -->
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">

    <!-- Site Properties -->
    <title>Homepage - Semantic</title>
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

        @media only screen and (max-width: 700px) {
            .ui.fixed.menu {
                display: none !important;
            }

            .secondary.pointing.menu .item,
            .secondary.pointing.menu .menu {
                display: none;
            }

            .secondary.pointing.menu .toc.item {
                display: block;
            }

            .masthead.segment {
                min-height: 350px;
            }

            .masthead h1.ui.header {
                font-size: 2em;
                margin-top: 1.5em;
            }

            .masthead h2 {
                margin-top: 0.5em;
                font-size: 1.5em;
            }
        }


    </style>

    <script src="assets/library/jquery.min.js"></script>
    <script src="../dist/components/visibility.js"></script>
    <script src="../dist/components/sidebar.js"></script>
    <script src="../dist/components/transition.js"></script>
    <script>
        $(document)
            .ready(function () {

                // fix menu when passed
                $('.masthead')
                    .visibility({
                        once: false,
                        onBottomPassed: function () {
                            $('.fixed.menu').transition('fade in');
                        },
                        onBottomPassedReverse: function () {
                            $('.fixed.menu').transition('fade out');
                        }
                    })
                ;

                // create sidebar and attach to menu open
                $('.ui.sidebar')
                    .sidebar('attach events', '.toc.item')
                ;

            })
        ;
    </script>
</head>
<body>

<!--导航-->
<#include "${base}/common/header.ftl">
<!--导航结束-->

<!-- Page Contents -->
<#if user??>
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
                            <#-- middle aligned垂直居中-->
                            <div class="ui middle aligned mobile reversed stackable grid">
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
<#else >
    <div class="pusher">
        <div class="ui inverted vertical masthead center aligned segment">

            <div class="ui text container">
                <h1 class="ui inverted header">
                    Imagine-a-Company
                </h1>
                <h2>Do whatever you want when you want to.</h2>
                <div class="ui huge primary button">Get Started <i class="right arrow icon"></i></div>
            </div>

        </div>

        <div class="ui vertical stripe segment">
            <div class="ui middle aligned stackable grid container">
                <div class="row">
                    <div class="eight wide column">
                        <h3 class="ui header">We Help Companies and Companions</h3>
                        <p>We can give your company superpowers to do things that they never thought possible. Let us
                            delight your customers and empower your needs...through pure data analytics.</p>
                        <h3 class="ui header">We Make Bananas That Can Dance</h3>
                        <p>Yes that's right, you thought it was the stuff of dreams, but even bananas can be
                            bioengineered.</p>
                    </div>
                    <div class="six wide right floated column">
                        <img src="assets/images/wireframe/white-image.png" class="ui large bordered rounded image">
                    </div>
                </div>
                <div class="row">
                    <div class="center aligned column">
                        <a class="ui huge button">Check Them Out</a>
                    </div>
                </div>
            </div>
        </div>


        <div class="ui vertical stripe quote segment">
            <div class="ui equal width stackable internally celled grid">
                <div class="center aligned row">
                    <div class="column">
                        <h3>"What a Company"</h3>
                        <p>That is what they all say about us</p>
                    </div>
                    <div class="column">
                        <h3>"I shouldn't have gone with their competitor."</h3>
                        <p>
                            <img src="assets/images/avatar/nan.jpg" class="ui avatar image"> <b>Nan</b> Chief Fun
                            Officer
                            Acme Toys
                        </p>
                    </div>
                </div>
            </div>
        </div>

        <div class="ui vertical stripe segment">
            <div class="ui text container">
                <h3 class="ui header">Breaking The Grid, Grabs Your Attention</h3>
                <p>Instead of focusing on content creation and hard work, we have learned how to master the art of doing
                    nothing by providing massive amounts of whitespace and generic content that can seem massive,
                    monolithic
                    and worth your attention.</p>
                <a class="ui large button">Read More</a>
                <h4 class="ui horizontal header divider">
                    <a href="#">Case Studies</a>
                </h4>
                <h3 class="ui header">Did We Tell You About Our Bananas?</h3>
                <p>Yes I know you probably disregarded the earlier boasts as non-sequitur filler content, but its really
                    true. It took years of gene splicing and combinatory DNA research, but our bananas can really
                    dance.</p>
                <a class="ui large button">I'm Still Quite Interested</a>
            </div>
        </div>


        <div class="ui inverted vertical footer segment">
            <div class="ui container">
                <div class="ui stackable inverted divided equal height stackable grid">
                    <div class="three wide column">
                        <h4 class="ui inverted header">About</h4>
                        <div class="ui inverted link list">
                            <a href="#" class="item">Sitemap</a>
                            <a href="#" class="item">Contact Us</a>
                            <a href="#" class="item">Religious Ceremonies</a>
                            <a href="#" class="item">Gazebo Plans</a>
                        </div>
                    </div>
                    <div class="three wide column">
                        <h4 class="ui inverted header">Services</h4>
                        <div class="ui inverted link list">
                            <a href="#" class="item">Banana Pre-Order</a>
                            <a href="#" class="item">DNA FAQ</a>
                            <a href="#" class="item">How To Access</a>
                            <a href="#" class="item">Favorite X-Men</a>
                        </div>
                    </div>
                    <div class="seven wide column">
                        <h4 class="ui inverted header">Footer Header</h4>
                        <p>Extra space for a call to action inside the footer that could help re-engage users.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</#if>


<!--CDN 引入jquery-->
<script src="https://cdn.jsdelivr.net/npm/jquery@3.2/dist/jquery.min.js"></script>
<!--CDN 引入semantic-ui-->
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>
<#--引入通用js-->
<script src="${base}/js/common.js"></script>
<script>
    // $("#home").addClass("active");
</script>
</body>

</html>

