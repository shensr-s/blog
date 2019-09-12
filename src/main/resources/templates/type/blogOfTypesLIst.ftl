<#assign base=request.contextPath>

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
            </div>

            <div class="five wide column">
                <a href="#" target="_blank">
                    <img src="https://picsum.photos/300/200?image=1027" alt="" class="ui rounded image">
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





<!--CDN 引入jquery-->
<script src="https://cdn.jsdelivr.net/npm/jquery@3.2/dist/jquery.min.js"></script>
<!--CDN 引入semantic-ui-->
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>
<#--引入通用js-->
<script src="${base}/js/common.js"></script>
<script>
    // $("#type").addClass("active");
    $(".menu.toggle").click(function () {
        $(".m-item").toggleClass('m-mobile-hide');
    })
    $(function () {
        //选中第一个标签
        $(".ui.attached.segment.types").find(".ui.labeled.button.m-margin-tb-tiny").eq(0).find("button").addClass("teal");
        $(".ui.attached.segment.types").find(".ui.labeled.button.m-margin-tb-tiny").eq(0).find("div").addClass("teal");
    })
</script>
</body>
</html>