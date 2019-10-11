<#if blogList??>


        <#list blogList as blog>


            <a href="${request.contextPath}/blog/blog/${blog.id}"  target="_blank" class=" item">${blog.title!}</a>
        </#list>

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

