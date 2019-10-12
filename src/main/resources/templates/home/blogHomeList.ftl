<#if blogList??>
    <!--top attached 和attached 可以将两部分连接在一块-->
    <div class="ui top attached segment">
        <div class="ui middle aligned two column grid">
            <div class="column">
                <div class="ui teal  header">博客</div>
            </div>
            <div class="right aligned column">
                共<h3 class="ui orange header m-inline-block">${total}</h3>篇
            </div>

        </div>
    </div>
    <!--content list-->

    <#list blogList as blog>
        <!--content list-->
        <div class="ui attached  segment m-padded-tb-mini m-mobile-lr-clear">
            <div class="ui padded vertical segment">
                <!--mobile reversed 手机端翻转-->
                <!--stackable 可以堆叠 响应手机端-->
                <div class="ui mobile reversed stackable grid">
                    <div class="eleven wide column">
                        <a href="${request.contextPath}/blog/blog/${blog.id}" target="_blank">
                            <h3 class="ui header">${blog.title!}</h3>
                        </a>
                        <p class="m-text">
                            ${blog.description!}</p>
                        <div class="ui stackable grid">
                            <div class="eleven wide column">
                                <div class="ui mini link list horizontal">
                                    <div class="item">
                                        <img src="${blog.avatar!}" alt=""
                                             class="ui avatar image">
                                        <div class="content">
                                            <a href="#" class="header">${blog.userName!}</a>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <i class="calendar icon"></i>${blog.updateTime?string('yyyy-MM-dd')}
                                    </div>
                                    <div class="item">
                                        <i class="eye icon"></i>${blog.views!}
                                    </div>
                                </div>
                            </div>
                            <div class="right aligned five wide column">
                                <a href="#" target="_blank"
                                   class="ui label teal  mini m-text-thin">${blog.typeName!}</a>
                            </div>
                        </div>
                        <!--标签-->
                        <div class="row">
                            <i class="ui tags icon"></i>
                            <#list blog.tagList as tag>
                                <a href="#"
                                   class="ui  teal  m-padded-mini m-margin-tb-tiny m-text-thin label">${tag.name!}</a>
                            </#list>
                        </div>
                    </div>
                    <div class="five wide column">
                        <a href="${request.contextPath}/blog/blog/${blog.id}" target="_blank">
                            <img src="https://picsum.photos/300/200?image=1027" alt="" class="ui rounded image">
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </#list>
    <!--bottom -->
    <div class="ui bottom attached segment">
        <div class="ui middle aligned two column grid">
            <div class="center aligned column">
                <#if page.pages gt 1>
                <#--页数大于1，显示上一页下一页-->
                    <#if page.prePage!=0>
                        <button type="button" class="ui teal basic mini button firstPage" value="1">首页
                        </button>
                        <button type="button" class="ui teal basic mini button prePage"
                                <#if page.prePage==0>value="1"
                                <#else >value="${page.prePage}"</#if>>上一页
                        </button>
                    <#else >
                        <button type="button" class="ui grey basic mini button">首页</button>
                        <button type="button" class="ui grey basic mini button">上一页</button>
                    </#if>
                    <#if page.nextPage!=0>
                        <button type="button" class="ui teal basic mini button nextPage"
                                <#if page.nextPage==0>value="${page.pages}"
                                <#else >value="${page.nextPage}"</#if>>下一页
                        </button>
                        <button type="button" class="ui teal basic mini button tailPage"
                                value="${page.pages}">
                            尾页
                        </button>
                    <#else >
                        <button type="button" class="ui grey basic mini button ">下一页</button>
                        <button type="button" class="ui grey basic mini button ">尾页</button>
                    </#if>
                </#if>
            </div>
            <div class="right aligned column">
                <#if user??>
                    <a href="${request.contextPath}/blog/add" class="ui teal basic mini button">新增</a>
                </#if>
            </div>


        </div>
    </div>
<#else >
    <div align="center">
        <div class="ui teal message">
            <div class="header">
                <div style="color: grey">暂无数据</div>
            </div>
        </div>
        <img src="${request.contextPath}/images/noData.jpg" alt="" class="ui rounded image">
    </div>
</#if>


<script>

    //    翻页
    //上一页
    $(".prePage").click(function () {
        var pageNum = $(".prePage").val()

        homeBlogList(pageNum);
    });
    //下一页
    $(".nextPage").click(function () {
        var pageNum = $(".nextPage").val()

        homeBlogList(pageNum);
    });
    //首页
    $(".firstPage").click(function () {
        var pageNum = $(".firstPage").val()

        homeBlogList(pageNum);
    });
    //尾页
    $(".tailPage").click(function () {
        var pageNum = $(".tailPage").val()

        homeBlogList(pageNum);
    });


</script>
