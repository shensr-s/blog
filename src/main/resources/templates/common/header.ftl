<#assign base=request.contextPath>
<div class="ui fixed inverted menu m-shadow-small">
<nav class="ui inverted attached segment m-padded-tb-mini m-shadow-small " >
    <div class="ui inverted menu" style="height: 100%;">
        <div class="ui container">
            <div class="ui inverted secondary stackable menu" style="width: 100%;" id="headerMenu">
                <h2 class="ui header teal item">Blog</h2>
                <a href="${base}/" class="item m-mobile-hide m-item" id="home"><i class="home small icon"></i>首页</a>
                <a href="${base}/blog/type" class="item m-mobile-hide m-item" id="type"><i class="idea small icon"></i>分类</a>
                <a href="${base}/blog/tag" class="item m-mobile-hide m-item" id="tag"><i class="tags small icon"></i>标签</a>
                <a href="${base}/blog/archives" class="item m-mobile-hide m-item" id="archives"><i class="clone small icon"></i>归档</a>
                <#if user??>
                <a href="${base}/blog/about" class="item m-mobile-hide m-item" id="about"><i class="info small icon"></i>关于我</a>
                </#if>
                <#--全文检索-->
                <div class="right item m-mobile-hide m-item">
                    <div class="ui icon  input">
                        <input type="text" placeholder="Search">
                        <i class="search link  icon"></i>
                    </div>
                </div>
                <#--用户信息:如果登陆了就显示-->
                <#if user??>
                    <div class="right item m-mobile-hide m-item">
                        <a href="${base}/blog/add" class="ui basic grey inverted mini button circular m-blog-btn">写博客</a>
                    </div>
                    <div class="right  menu m-mobile-hide m-item">
                        <div class="ui dropdown item">
                            <#if user.avatar??>
                                <img src="${user.avatar}" alt="" class="ui avatar image">
                            <#else >
                                <img src="https://picsum.photos/100/100?image=1027" alt="" class="ui avatar image">
                            </#if>
                            <#--获取session中的用户名-->
                            &nbsp;${user.username}
                            <i class="ui dropdown icon"></i>
                            <div class="menu">
                                <a href="${base}/blog/user/center" class="item">个人中心</a>
                                <a href="${base}/blog/manage" class="item">博客管理</a>
                                <a href="#" class="item">账号管理</a>
                                <a href="${base}/logout" class="item">退出登录</a>
                            </div>
                        </div>
                    </div>
                <#else >
                <#--没有登陆就提示登陆-->
                    <div class="right item m-mobile-hide m-item">
                        <a class="ui inverted button m-blog-btn circular" href="${base}/login">Log in</a>
                        &nbsp;
                        <a class="ui inverted button m-blog-btn circular" href="${base}/signup">Sign Up</a>
                    </div>
                </#if>


            </div>
        </div>
    </div>

    <a href="#" class="ui menu toggle black button icon m-right-top m-mobile-show">
        <i class="sidebar icon"></i>
    </a>
</nav>
</div>
<nav class="ui inverted attached segment m-padded-tb-mini " style="height: 69px;">
</nav>