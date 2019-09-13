<#if typeList??>


        <#list typeList as type>


            <a href="${request.contextPath}/blog/type" class="item">${type.name!}
                <!--left pointing 小三角向左-->
                <div class="ui teal basic left pointing label">${type.count!}</div>
            </a>
        </#list>

<#else >
    <div align="center">
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
