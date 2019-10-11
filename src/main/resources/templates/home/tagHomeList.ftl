<#if tagList??>


        <#list tagList as tag>


        <a href="${request.contextPath}/blog/tag" class="ui  basic label m-margin-tb-tiny">${tag.name!}
            <div class="detail">${tag.count!}</div>
        </a>
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
