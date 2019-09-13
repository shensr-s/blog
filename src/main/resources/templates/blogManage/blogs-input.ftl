<#assign base=request.contextPath>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <!--适配移动端-->
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <!--引入CSS-->
    <link rel="stylesheet" href="${base}/css/me.css">
    <!--CDN 引入semantic-ui -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
    <!--引入markdown的css-->
    <link rel="stylesheet" href="${base}/lib/editormd/css/editormd.min.css">
    <title>博客管理</title>
</head>
<body>
<!--导航-->
<#include "${base}/common/header.ftl">

<div class="ui menu attached">
    <div class="ui container ">
        <div class="right menu">
            <a href="${base}/blog/add" class="active teal item">发布</a>
            <a href="${base}/blog/manage" class="item">列表</a>
        </div>
    </div>
</div>
<!--导航结束-->

<!--中间内容-->
<div class="m-padded-tb-large <#--m-container-small-->">
    <div class="ui container">
        <form action="#" method="post" class="ui form">
            <input type="hidden" <#if blog??>value="${blog.id}" </#if> id="id" name="id">
            <!--博客标题编辑区域-->
            <div class="field required">
                <div class="ui left labeled input">
                    <!--compact 适应文本宽度-->
                    <div class="ui teal compact basic selection dropdown label">
                        <input type="hidden" <#if blog??> value="${blog.flag!"原创"}"<#else >value="原创"</#if> name="flag"
                               placeholder="请选择">
                        <i class="dropdown icon"></i>
                        <div class="text"> 原创</div>

                        <div class="menu">
                            <div class="item" data-value="原创">原创</div>
                            <div class="item" data-value="转载">转载</div>
                            <div class="item" data-value="翻译">翻译</div>
                        </div>
                    </div>
                    <input type="text" placeholder="标题" id="title" name="title"
                           <#if blog??>value="${blog.title!}" </#if>>
                </div>
            </div>
            <!--博客内容编辑区域-->
            <div class="field">
                <!--z-index: 这是层叠的样式 下边是把编辑区域放在最顶层-->
                <div id="md-content" style="z-index: 1 !important;">
                    <textarea name="content" id="content" cols="30" rows="10" placeholder="博客内容"
                              style="display: none"><#if blog??>${blog.content!}</#if></textarea>
                </div>
            </div>

            <div class="two fields">
                <!--选择分类-->
                <div class="field">
                    <div class="ui left labeled action input">
                        <label class="ui compact teal basic label">分类</label>
                        <div class="ui fluid  selection dropdown"><!--fluid 撑满整个-->
                            <#--这里的input的value值和item中的data-value值相等 就选中该项-->
                            <input type="hidden" name="typeId" id="typeId"
                                   <#if blog??>value="${blog.typeId}"</#if>>
                            <i class="dropdown icon"></i><!--图标-->
                            <div class="default text" id="blogType">分类
                            </div> <!--默认显示的值-->
                            <div class="menu">
                                <!--选择的内容-->
                                <#list typeList as type>
                                    <div class="item" data-value="${type.id}">${type.name}</div>
                                </#list>
                            </div>

                        </div>
                    </div>
                </div>
                <!--选择分类结束-->
                <!--选择标签-->
                <div class="field">
                    <div class="ui left labeled action input">
                        <label class="ui compact teal basic label">标签</label>
                        <!--multiple 可以多选 search 搜索(可以根据data-value和显示的值搜索)-->
                        <div class="ui fluid multiple  search selection dropdown"><!--fluid 撑满整个-->
                            <input type="hidden" name="tagId" id="tagId" <#if blogTag??>value="${blogTag}"</#if>>
                            <!--<i class="dropdown icon"></i>-->
                            <div class="default text" name="tagDiv">标签</div> <!--默认显示的值-->
                            <div class="menu">
                                <#list tagList as tag>
                                    <div class="item" data-value="${tag.id}">${tag.name}</div>
                                </#list>


                            </div>

                        </div>
                    </div>
                </div>
                <!--选择标签结束-->
            </div>

            <!--图片引用地址-->
            <div class="field">
                <div class="ui left labeled input">
                    <label class="ui teal basic label">首图</label>
                    <input type="text" placeholder="首图引用地址" name="firstPicture" id="firstPicture"
                           <#if blog??>value="${blog.firstPicture!}" </#if>>
                </div>
            </div>

            <div class="required field">
                <textarea name="description" id="description" placeholder="博客描述..."
                          maxlength="200"><#if blog??>${blog.description!}</#if></textarea>
            </div>

            <div class="inline fields">
                <!--是否推荐-->
                <div class="field">
                    <div class="ui checkbox">
                        <input type="checkbox" name="recommend" id="recommend" class="hidden"
                               <#if blog??><#if blog.recommend==true>checked</#if></#if>>
                        <label for="recommend">推荐</label>
                    </div>
                </div>
                <!--转载声明-->
                <div class="field">
                    <div class="ui checkbox">
                        <input type="checkbox" name="shareStatement" id="shareStatement" class="hidden"

                               <#if blog??><#if blog.shareStatement==true>checked</#if></#if>>
                        <label for="shareStatement">转载声明</label>
                    </div>
                </div>
                <!--是否显示赞赏-->
                <div class="field">
                    <div class="ui checkbox">
                        <input type="checkbox" name="appreciation" id="appreciation" class="hidden"
                               <#if blog??><#if blog.appreciation==true>checked</#if></#if>>
                        <label for="appreciation">赞赏</label>
                    </div>
                </div>
                <!--是否开启评论功能-->
                <div class="field">
                    <div class="ui checkbox">
                        <input type="checkbox" name="commentAbled" id="commentAbled" class="hidden"
                               <#if blog??><#if blog.commentAbled==true>checked</#if></#if>>
                        <label for="commentAbled">评论</label>
                    </div>
                </div>
            </div>
            <#--消息提示:默认隐藏-->
            <div class="ui success message field" hidden>
                <i class="close icon"></i>
                <div class="header center-pill">提示:</div>
                <p></p>
            </div>

            <div class="ui center aligned container">
                <button class="ui button" type="button" onclick="window.history.go(-1)">返回</button>
                <#if blog??>
                <#--更新-->
                    <button class="ui button updateBlogBtn" type="button">保存</button>
                <#else >
                <#--新建-->
                    <button class="ui button teal saveBlogBtn" type="button">保存</button>
                </#if>
                <#if blog??>
                    <button class="ui teal button publishBlogBtn" type="button">发布</button>
                </#if>
                <!--button不指定type  那么默认为submit-->
            </div>
        </form>

    </div>
</div>
<!--中间内容结束-->


<#--发布情况提示-->
<#--<div class="ui modal mini publishedFlag">-->

<#--    <div class="header">-->
<#--        提示-->
<#--    </div>-->
<#--    <div class="content">-->
<#--        &lt;#&ndash;删除Id隐藏域&ndash;&gt;-->
<#--        <i class="question circle teal icon large"></i> 还没保存，是否保存？？-->
<#--    </div>-->

<#--    <div class="actions " style="text-align: center;">-->
<#--        <button class="ui approve teal button" type="button" id="saveFlagBtn">是</button>-->
<#--        <a class="ui cancel button" >否</a>-->
<#--    </div>-->
<#--</div>-->
<#--发布情况提示结束-->


<!--页面底部-->

<#include "${base}/common/footer.ftl">
<!--页面底部结束-->

<!--CDN 引入jquery-->
<script src="https://cdn.jsdelivr.net/npm/jquery@3.2/dist/jquery.min.js"></script>
<!--CDN 引入semantic-ui-->
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>
<!--引入markdown的js-->
<script src="${base}/lib/editormd/editormd.min.js"></script>
<script>
    $(".menu.toggle").click(function () {
        $(".m-item").toggleClass('m-mobile-hide');
    });
    $(".ui.dropdown").dropdown();


    $(".ui.form").form({
        inline: true,
        on: 'blur',
        fields: {
            title: {
                identifier: 'title',
                rules: [{
                    type: 'empty',
                    prompt: '标题：请输入博客标题'
                }]
            },
            content: {
                identifier: 'content',
                rules: [{
                    type: 'empty',
                    prompt: '内容：请输入博客内容'
                }]
            },
            type: {
                identifier: 'type',
                rules: [{
                    type: 'empty',
                    prompt: '分类：请选择博客分类'
                }]
            },
            tag: {
                identifier: 'tag',
                rules: [{
                    type: 'empty',
                    prompt: '标签：请选择博客标签'
                }]
            },
            description: {
                identifier: 'description',
                rules: [{
                    type: 'empty',
                    prompt: '标题：请输入博客描述'
                }]
            }

        }
    });

    //保存博客
    $(".saveBlogBtn").click(function () {
       saveOrUpdateBlog(1);
    });

    //更新博客
    $(".updateBlogBtn").click(function () {
        saveOrUpdateBlog(1);
    })
    //发布博客
    $(".publishBlogBtn").click(function () {
        saveOrUpdateBlog(2);
    });


    //blog保存 与更新
    function saveOrUpdateBlog(type){
        var t = $(".ui.form").serializeArray();
        var data = {};
        //form表单数据转json
        $.each(t, function () {
            if (this.name === "recommend" && this.value === "on") {
                data [this.name] = true;
            } else if (this.name === "shareStatement" && this.value === "on") {
                data [this.name] = true;
            } else if (this.name === "appreciation" && this.value === "on") {
                data [this.name] = true;
            } else if (this.name === "commentAbled" && this.value === "on") {
                data [this.name] = true;
            } else {
                data [this.name] = this.value;
            }
        });
        if(type===1){
            data.published = false;
        }
        if(type===2){
            data.published = true;
        }
        console.log(data);

        if(type===1) {
            $.ajax({
                type: "post",
                url: "/blog/ajax/save",
                data: JSON.stringify(data),
                dataType: "json",
                contentType: 'application/json;charset=UTF-8',
                success: function (data) {

                    if (data.code === 200) {
                        //成功跳转到我的博客页面
                        console.log(data.msg);
                        console.log(data);
                        var blogId = data.data;
                        window.location.href = "/blog/edit/" + blogId;
                        $(".success.message.field p").html(data.msg);
                        $(".success.message.field").closest('.message').transition('show');

                    } else if (data.code === 601) {
                        console.log(data.msg);
                        $(".success.message.field p").html(data.msg);
                        $(".success.message.field").closest('.message').transition('show');
                    } else if (data.code === 301) {
                        console.log(data.msg);
                        $(".success.message.field p").html(data.msg);
                        $(".success.message.field").closest('.message').transition('show');
                    }
                },
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                    if (XMLHttpRequest.status == 303) {
                        window.location.href = "/login";
                    } else {
                        console.log("error");
                    }
                }
            });
        }
        // if(type===2){
        //     $.ajax({
        //         type: "post",
        //         url: "/blog/ajax/save",
        //         data: JSON.stringify(data),
        //         dataType: "json",
        //         contentType: 'application/json;charset=UTF-8',
        //         success: function (data) {
        //
        //             if (data.code === 200) {
        //                 //成功跳转到我的博客页面
        //                 console.log(data.msg);
        //                 console.log(data);
        //                 var blogId = data.data;
        //                 window.location.href = "/blog/edit/" + blogId;
        //                 $(".success.message.field p").html(data.msg);
        //                 $(".success.message.field").closest('.message').transition('show');
        //
        //             } else if (data.code === 601) {
        //                 console.log(data.msg);
        //                 $(".success.message.field p").html(data.msg);
        //                 $(".success.message.field").closest('.message').transition('show');
        //             } else if (data.code === 301) {
        //                 console.log(data.msg);
        //                 $(".success.message.field p").html(data.msg);
        //                 $(".success.message.field").closest('.message').transition('show');
        //             }
        //         },
        //         error: function (XMLHttpRequest, textStatus, errorThrown) {
        //             if (XMLHttpRequest.status == 303) {
        //                 window.location.href = "/login";
        //             } else {
        //                 console.log("error");
        //             }
        //         }
        //     });
        // }
    };
</script>

<script type="text/javascript">
    var testEditor;

    $(function () {
        testEditor = editormd("md-content", {
            width: "100%",
            height: 640,
            syncScrolling: "single",
            path: "${base}/lib/editormd/lib/"
        });

        /*
        // or
        testEditor = editormd({
            id      : "test-editormd",
            width   : "90%",
            height  : 640,
            path    : "../lib/"
        });
        */
    });

    //消息提示关闭 初始化
    $(".message .close").on("click", function () {
        $(this).closest('.message').transition('fade');

    });
    // $(".saveFlagBtn").click(function () {
    //     $(".saveBlogBtn").click();
    // })
</script>
</body>
</html>