<#if blogList??>
    <table class="ui table celled">
        <thead>
        <tr>
            <th></th>
            <th>标题</th>
            <th>类型</th>
            <th>推荐</th>
            <th>更新时间</th>
            <th>博客状态</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <#assign count=0>
        <#list blogList as blog>
            <#assign count=count+1>

            <tr>
                <td>${count}</td>
                <td>${blog.title!}</td>
                <td>${blog.typeName}</td>
                <td>
                    <#if blog.recommend==true>
                        是
                    <#else >
                        否
                    </#if>
                </td>
                <td>
                    <#if blog.updateTime??>
                        ${blog.updateTime?string('yyyy-MM-dd HH:mm:ss')}
                    </#if>
                </td>
                <td>
                    <#if blog.published==false>
                        未发布
                    <#else >
                        已发布
                    </#if>
                </td>
                <td>
                    <#--                    TODO-->
                    <a href="${request.contextPath}/blog/edit/${blog.id}" class="ui mini teal m-text-thin button"
                       value="${blog.id}">编辑</a>
                    <button type="button" class="ui mini red m-text-thin button delBlogClass" value="${blog.id}">删除
                    </button>

                </td>
            </tr>
        </#list>

        </tbody>
        <tfoot>
        <tr>
            <!--合并单元格-->
            <th colspan="6">
                <div class="ui middle aligned three column grid">

                    <div class="column">
                        <#if blogList??>
                            <div class="m-inline-block">
                                共<h4 class="ui orange header m-inline-block m-text-thin">${page.pages}</h4>页
                                &nbsp;&nbsp;&nbsp;&nbsp;
                            </div>
                            <div class="m-inline-block">
                                第<h4 class="ui orange header m-inline-block m-text-thin">${page.pageNum}</h4>页
                                &nbsp;&nbsp;&nbsp;&nbsp;
                            </div>
                            <div class="m-inline-block">
                                共<h4 class="ui orange header m-inline-block m-text-thin">${page.total}</h4>条数据
                            </div>

                        </#if>
                    </div>
                    <div class="center aligned column">
                        <#if blogList??>

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
                        <#else >
                            <a href="${request.contextPath}/blog/add" class="ui teal basic mini button">新增</a>
                        </#if >
                    </div>

                    <div class="right aligned column">
                        <#if blogList??>
                            <a href="${request.contextPath}/blog/add" class="ui teal basic mini button">新增</a>
                        </#if>
                    </div>

                </div>
            </th>
        </tr>
        </tfoot>
    </table>
<#else >
    <div align="center">
        <img src="${request.contextPath}/images/noData.jpg" alt="" class="ui rounded image">
    </div>
</#if>


<script>
    // $("#addTypeBtn").click(function () {
    //     //新增类型弹窗
    //     $('.ui.modal.mini.add').modal('show');
    // });

    // $(".editBlogClass").click(function () {
    //     //编辑类型弹窗
    //     $('.ui.modal.mini.edit').modal('show');
    // });
    $(".delBlogClass").click(function () {
        //删除类型弹窗
        $('.ui.modal.mini.del').modal('show');
    });

    //    翻页
    //上一页
    $(".prePage").click(function () {
        var pageNum = $(".prePage").val()

        blogList(pageNum);
    });
    //下一页
    $(".nextPage").click(function () {
        var pageNum = $(".nextPage").val()

        blogList(pageNum);
    });
    //首页
    $(".firstPage").click(function () {
        var pageNum = $(".firstPage").val()

        blogList(pageNum);
    });
    //尾页
    $(".tailPage").click(function () {
        var pageNum = $(".tailPage").val()

        blogList(pageNum);
    });


</script>
