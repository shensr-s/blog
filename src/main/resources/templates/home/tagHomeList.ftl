<#if tagList??>


        <#list tagList as tag>


        <a href="${request.contextPath}/blog/tag" class="ui  basic label m-margin-tb-tiny">${tag.name!}
            <div class="detail">${tag.count!}</div>
        </a>
        </#list>

<#else >
    <div align="center">
        <img src="${request.contextPath}/images/noData.jpg" alt="" class="ui rounded image">
    </div>
</#if>
