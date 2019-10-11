<#if typeList??>


        <#list typeList as type>


            <a href="${request.contextPath}/blog/type" class="item">${type.name!}
                <!--left pointing 小三角向左-->
                <div class="ui teal basic left pointing label">${type.count!}</div>
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


