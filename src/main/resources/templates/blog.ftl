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
    <!--引入排版样式-->
    <link rel="stylesheet" href="${base}/css/typo.css">
    <!--引入动画的css-->
    <link rel="stylesheet" href="${base}/css/animate.css">
    <!--引入代码高亮-->
    <link rel="stylesheet" href="${base}/lib/prism/css/prism.css">
    <!--引入生成目录的tocbot的css-->
    <link rel="stylesheet" href="${base}/lib/tocbot/tocbot.css">
    <title>${blog.title!"博客详情页"}</title>
</head>
<body>
<!--导航-->
<#include "common/header.ftl">
<!--导航结束-->

<!--中间内容-->

<div class="m-padded-tb-large <#--m-container-small--> animated fadeInUp" id="waypoint"><!--animated:动画-->
    <div class="ui container">
        <div class="ui top attached segment">
            <!--头部-->
            <div class="ui  link list horizontal">
                <div class="item">
                    <#if blog.avatar??>
                        <img src="${blog.avatar}" alt=""
                             class="ui avatar image">
                    <#else >
                        <img src="https://picsum.photos/100/100?image=1027" alt=""
                             class="ui avatar image">
                    </#if>

                    <div class="content">
                        <a href="#" class="header">${blog.userName!}</a>
                    </div>

                </div>
                <div class="item">
                    <i class="calendar icon"></i>
                    <#if blog.updateTime??>
                        ${blog.updateTime?string("yyyy-MM-dd")}
                    </#if>
                </div>
                <div class="item">
                    <i class="eye icon"></i>${blog.views!}
                </div>
            </div>
        </div>
        <div class="ui attached segment" style="height: 200px;">
            <!--图片区域-->
            <#if blog.firstPicture??>
                <img src="${blog.firstPicture}" alt="" class="ui fluid rounded image" style="height: 90%;">
            <#else >
                <img src="https://picsum.photos/300/200?image=1000" alt="" class="ui fluid rounded image"
                     style="height: 90%;">
            </#if>

        </div>
        <div class="ui attached segment">
            <!--内容部分-->
            <div class="ui right aligned basic segment">
                <div class="ui orange label">${blog.flag!}</div>
            </div>
            <h2 class="ui center aligned header">${blog.title!}</h2>
            <!--typo typo-selection 排版的样式-->
            <div id="content" class="typo  typo-selection m-padded-lr-responsive js-toc-content">
                <#--博客类容-->
                ${blog.content!}

            </div>


            <!--标签-->
            <div class="m-padded-lr-responsive">
                <div class="ui basic teal left pointing label">方法论</div>
            </div>
            <!--赞赏-->

            <#if blog.appreciation==true>
                <div class="ui center aligned basic segment">
                    <button class="ui orange basic circular button" id="payButton">赞赏</button>
                </div>
            </#if>


            <div class="ui payQR flowing popup transition hidden">

                <div class="ui orange basic label">
                    <!--inherit 继承上一级-->
                    <div class="ui images" style="font-size: inherit !important;">
                        <div class="image">
                            <img src="${base}/images/myWeChat.jpg" alt="" class="ui rounded bordered image"
                                 style="width: 120px">
                            <div>支付宝支付</div>
                        </div>

                        <div class="image">
                            <img src="${base}/images/myWeChat.jpg" alt="" class="ui rounded bordered image"
                                 style="width: 120px">
                            <div>微信支付</div>
                        </div>
                    </div>
                </div>

            </div>

        </div>

        <div class="ui attached segment positive message">
            <!--博客信息-->
            <div class="ui middle aligned grid">
                <div class="eleven wide column">

                    <ui class="list">
                        <li>作者：${blog.userName}</li>
                        <li>发表时间：${blog.updateTime?string("yyyy-MM-hh HH:mm:ss")}</li>
                        <li>版权声明：自由转载</li>
                        <li>公众号转载：~~~~~</li>
                    </ui>
                </div>
                <div class="five wide column">
                    <!--right floated向右浮动-->
                    <img src="${base}/images/myWeChat.jpg" alt="" class="ui right floated rounded bordered image"
                         style="width: 100px">
                </div>
            </div>
        </div>
        <!--留言区域-->
        <#if blog.commentAbled==true>
            <div class="ui bottom attached segment" id="comment-container">

                <div class="ui teal segment">
                    <div class="ui comments">
                        <h3 class="ui dividing header">评论</h3>

                        <div class="comment">
                            <a class="avatar">
                                <img src="${base}/images/bg.png">
                            </a>
                            <div class="content">
                                <a class="author">Matt</a>
                                <div class="metadata">
                                    <span class="date">今天下午 5:42</span>
                                </div>
                                <div class="text">太赞了！</div>
                                <div class="actions">
                                    <a class="reply">回复</a>
                                </div>
                            </div>
                        </div>
                        <div class="comment">
                            <a class="avatar">
                                <img src="${base}/images/myWeChat.jpg">
                            </a>
                            <div class="content">
                                <a class="author">Elliot Fu</a>
                                <div class="metadata">
                                    <span class="date">昨天上午12:30</span>
                                </div>
                                <div class="text">
                                    <p>這對我的研究是非常有用.謝謝!</p>
                                </div>
                                <div class="actions">
                                    <a class="reply">回复</a>
                                </div>
                            </div>
                            <div class="comments">
                                <div class="comment">
                                    <a class="avatar">
                                        <img src="${base}/images/myWeChat.jpg">
                                    </a>
                                    <div class="content">
                                        <a class="author">Jenny Hess</a>
                                        <div class="metadata">
                                            <span class="date">刚刚</span>
                                        </div>
                                        <div class="text">艾略特你永远是多么正确 :)</div>
                                        <div class="actions">
                                            <a class="reply">回复</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="comment">
                            <a class="avatar">
                                <img src="${base}/images/myWeChat.jpg">
                            </a>
                            <div class="content">
                                <a class="author">Joe Henderson</a>
                                <div class="metadata">
                                    <span class="date">5 天以前</span>
                                </div>
                                <div class="text">老兄，这太棒了。非常感谢。</div>
                                <div class="actions">
                                    <a class="reply">回复</a>
                                </div>
                            </div>
                        </div>
                        <form class="ui reply form">
                            <div class="field">
                                <textarea name="repltContent" id="repltContent"></textarea>
                            </div>
                            <button type="button" id="commentBtn" class="ui blue labeled submit icon button"><i
                                        class="icon edit"></i> 添加回复
                            </button>
                        </form>
                    </div>
                </div>


                <!--提交留言-->
                <#--            <div class="ui form">-->
                <#--                <div class="field">-->
                <#--                    <textarea placeholder="请输入评论信息..." name="content"></textarea>-->
                <#--                </div>-->
                <#--                <!--m-mobile-wide m-margin-bottom-mini-->
                <#--                    手机端充满一行&ndash;&gt;-->
                <#--                <div class="fields">-->
                <#--                    <div class="field m-mobile-wide m-margin-bottom-mini">-->
                <#--                        <div class="ui left icon input">-->
                <#--                            <i class="user icon"></i>-->
                <#--                            <input type="text" name="nickname" placeholder="姓名">-->
                <#--                        </div>-->
                <#--                    </div>-->
                <#--                    <div class="field m-mobile-wide m-margin-bottom-mini">-->
                <#--                        <div class="ui left icon input">-->
                <#--                            <i class="mail icon"></i>-->
                <#--                            <input type="text" name="email" placeholder="邮箱">-->
                <#--                        </div>-->
                <#--                    </div>-->
                <#--                    <div class="field m-mobile-wide m-margin-bottom-mini">-->

                <#--                        <button class="ui teal button m-mobile-wide"><i class="edit icon"></i>发布</button>-->
                <#--                    </div>-->

                <#--                </div>-->
                <#--            </div>-->

            </div>
        </#if>
    </div>
</div>
<!--中间内容结束-->


<#--隐藏域-->
<input type="text" id="blogId" hidden value="${blog.id}">
<input type="text" id="blogId" hidden value="${blog.id}">
<#--隐藏域结束-->


<!--工具条-->
<div id="toolbar" class="m-fixed m-right-bottom m-padded" style="display: none;">
    <div class="ui vertical buttons mini">
        <button type="button" class="ui teal button toc">目录</button>
        <a type="button" href="#comment-container" class="ui teal button">留言</a>
        <button type="button" class="ui  icon button weChat"><i class="weixin icon"></i></button>
        <div id="toTopButton" class="ui  icon button"><i class="chevron up icon"></i></div>
    </div>
</div>

<!--微信分享博客二维码弹窗-->
<div id="qrCode" class="ui weChat-qr flowing popup transition hidden m-padded-mini" style="width: 110px">
    <!--<img src="./static/images/myWeChat.jpg"  class="ui rounded bordered image " style="width: 109px">-->
</div>

<!--生成的目录-->
<div class="ui toc-container flowing popup transition hidden" style="width: 250px">
    <ol class="js-toc">
        <!--生成后的目录在这里哦-->
    </ol>
</div>

<!--工具条结束-->


<!--页面底部-->
<#include "common/footer.ftl">
<!--页面底部结束-->

<!--CDN 引入jquery-->
<script src="https://cdn.jsdelivr.net/npm/jquery@3.2/dist/jquery.min.js"></script>
<!--CDN 引入semantic-ui-->
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>
<!--CDN 引入平滑滚动js-->
<script src="//cdn.jsdelivr.net/npm/jquery.scrollto@2.1.2/jquery.scrollTo.min.js"></script>
<#--引入通用js-->
<script src="${base}/js/common.js"></script>
<!--引入代码高亮js-->
<script src="${base}/lib/prism/js/prism.js"></script>
<!--引入生成目录的tocbot的js-->
<script src="${base}/lib/tocbot/tocbot.min.js"></script>
<!--引入二维码生成工具js-->
<script src="${base}/lib/qrcode/qrcode.min.js"></script>
<!--引入滚动侦测的js-->
<script src="${base}/lib/waypoint/jquery.waypoints.min.js"></script>
<script>

    $(function () {
        console.log(window.location.href)

    });


    $(".menu.toggle").click(function () {
        $(".m-item").toggleClass('m-mobile-hide');
    });
    //头像下拉
    $(".ui.dropdown").dropdown();

    //赞赏按钮
    $("#payButton").popup({
        popup: $(".payQR.popup"),//定位到哪
        on: 'click',//点击触发
        position: 'bottom center'//位置
    });
    //目录按钮
    $(".toc").popup({
        popup: $(".toc-container.popup"),//定位到哪
        on: 'click',//点击触发
        position: 'left center'//位置
    });
    //微信弹窗
    $(".weChat").popup({
        popup: $(".weChat-qr.popup"),//定位到哪
        on: 'click',//点击触发
        position: 'left center'//位置
    });

    //目录生成 注意 h标签需要有id属性
    tocbot.init({
        // Where to render the table of contents.
        tocSelector: '.js-toc',
        // Where to grab the headings to build the table of contents.
        contentSelector: '.js-toc-content',
        // Which headings to grab inside of the contentSelector element.
        headingSelector: 'h1, h2, h3, h4, h5',
        // For headings inside relative or absolute positioned containers within content.
        hasInnerContainers: true,
    });

    //生成二维码
    //QRCode("qrCode", {}); 第一个元素为存放二维码的div（或其他标签）的id
    var locUrl = window.location.href;

    var qrcode = new QRCode("qrCode", {
        text: locUrl,
        width: 106,//生成二维码的宽度
        height: 106,//生成二维码的高度
        colorDark: "#177eb5",//生成二维码的颜色
        colorLight: "#ffffff",
        correctLevel: QRCode.CorrectLevel.H
    });

    //回到顶部
    $("#toTopButton").click(function () {
        //This must be a scrollable element, to scroll the whole window use $(window).
        //第一个参数 0滚动到最顶部
        //第二个参数 500 500ms滚动到顶部-->实现平滑滚动
        //第三个参数 settings
        //$(element).scrollTo(target[,duration][,settings]);
        $(window).scrollTo(0, 500);
    })
    //滚动侦测
    var waypoint = new Waypoint({
        //element：检测哪一个元素
        element: document.getElementById('waypoint'),
        handler: function (direction) {
            // direction 向上滚动 up 行下滚动 down
            //滚动的时候触发的函数
            // console.log('Scrolled to waypoint!'+direction)
            if (direction == 'down') {
                //下滑显示
                $("#toolbar").show(500);
            } else {
                $("#toolbar").hide(500);
            }
        }
    });

    //回复表单验证
    $(".ui.reply.form").form({
        inline: true,
        fields: {
            repltContent: {
                identifier: 'repltContent',
                rules: [{
                    type: 'empty',
                    prompt: '评论：评论回复不能为空'
                }]
            },
        }
    });
    //留言提交
    $("#commentBtn").click(function () {
        //校验表单
        var check = $(".ui.reply.form").form("validate form");

        if (!check) {
            return;
        }
    });

</script>
</body>
</html>