<#if tags??>
    <table class="ui celled table">
        <thead>
        <tr>
            <th></th>
            <th>标签</th>
            <th>更新时间</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>

        <#assign count=0>

        <#list tags as  tagItem>
            <#assign count=count+1>
            <tr>
                <td>${count}</td>
                <td>${tagItem.name!""}</td>
                <td>
                    <#if tagItem.updateTime??>
                        ${tagItem.updateTime?string('yyyy-MM-dd HH:mm:ss')}
                    </#if>
                </td>
                <td>
                    <button type="button" class="ui mini teal basic button editTagClass" value="${tagItem.id}" value-name="${tagItem.name}">编辑
                    </button>
                    <button type="button" class="ui mini red basic button delTagClass" value="${tagItem.id}">删除
                    </button>
                </td>
            </tr>
        </#list>
        </tbody>
    </table>
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
<!--bottom -->
<div <#--style="margin-top: 12px"-->>
    <div class="ui middle aligned three column grid">

        <div class="column">
            <#if tags??>
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
            <#if tags??>
                <#if page.pages gt 1>
                <#--页数大于1，显示上一页下一页-->
                    <#if page.prePage!=0>
                        <button type="button" class="ui teal basic mini button firstPage" value="1">首页</button>
                        <button type="button" class="ui teal basic mini button prePage" <#if page.prePage==0>value="1"
                                <#else >value="${page.prePage}"</#if>>上一页
                        </button>
                    <#else >
                        <button type="button" class="ui grey basic mini button">首页</button>
                        <button type="button" class="ui grey basic mini button">上一页</button>
                    </#if>
                    <#if page.nextPage!=0>
                        <button type="button" class="ui teal basic mini button nextPage"
                                <#if page.nextPage==0>value="${page.pages}" <#else >value="${page.nextPage}"</#if>>下一页
                        </button>
                        <button type="button" class="ui teal basic mini button tailPage" value="${page.pages}">尾页
                        </button>
                    <#else >
                        <button type="button" class="ui grey basic mini button ">下一页</button>
                        <button type="button" class="ui grey basic mini button ">尾页</button>
                    </#if>
                </#if>
            <#else >
                <button type="button" class="ui teal basic mini button" id="addTagBtn">新增</button>
            </#if >
        </div>

        <div class="right aligned column">
            <#if tags??>
                <button type="button" class="ui teal basic mini button" id="addTagBtn">新增</button>
            </#if>
        </div>

    </div>
</div>


<script>
    $("#addTagBtn").click(function () {
        //新增类型弹窗
        $('.ui.modal.mini.add').modal('show');
    });

    $(".editTagClass").click(function () {
        //编辑类型弹窗
        $("#editId").val($(this).val());
        $(".tagName").val($(this).attr("value-name"));
        $('.ui.modal.mini.edit').modal('show');
    });
    $(".delTagClass").click(function () {
        //删除类型弹窗
        $("#delId").val($(this).val());
        $('.ui.modal.mini.del').modal('show');
    });

    //    翻页
    //上一页
    $(".prePage").click(function () {
        var pageNum = $(".prePage").val()

        tagList(pageNum);
    });
    //下一页
    $(".nextPage").click(function () {
        var pageNum = $(".nextPage").val()

        tagList(pageNum);
    });
    //首页
    $(".firstPage").click(function () {
        var pageNum = $(".firstPage").val()

        tagList(pageNum);
    });
    //尾页
    $(".tailPage").click(function () {
        var pageNum = $(".tailPage").val()

        tagList(pageNum);
    });


    // function tagList(currentPage) {
    //     //设置隐藏域中currentPage的值
    //     $("#currentPage").val(currentPage);
    //
    //     //搜索的值
    //     var search = $("#searchTag").val();
    //
    //     var data = "pageNum=" + currentPage + "&pageSize=" + $("#pageSize").val() + "&search=" + search;
    //     // console.log(data);
    //     $.ajax({
    //         type: "get",
    //         url: "/blog/type/ajax/list",
    //         data: data,
    //         dataTag: "html",
    //         success: function (data) {
    //             $("#tagListTable").empty();
    //             $("#tagListTable").html(data);
    //         },
    //         error: function (XMLHttpRequest, textStatus, errorThrown) {
    //             $(".loading-box").hide();
    //             if (XMLHttpRequest.status == 303) {
    //                 window.location.href = "/login";
    //             } else {
    //                 //layer.msg("获取需求列表失败");
    //                 console.log("获取博客类型列表失败")
    //             }
    //         }
    //     });
    //
    // };
</script>
