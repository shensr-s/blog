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
    <title>分类管理</title>
</head>
<body>
<!--导航-->
<#include "../common/header.ftl">
<!--导航结束-->

<!--中间内容-->
<div class="m-padded-tb-large <#--m-container-small-->">
    <div class="ui container">
        <#--消息提示:默认隐藏-->
        <div class="ui success message" hidden>
            <i class="close icon"></i>
            <div class="header center-pill">提示:</div>
            <p></p>
        </div>
        <!--header-->
        <div class="ui top attached segment">
            <div class="ui middle aligned two column grid">

                <div class="column">
                    <h3 class="ui teal header">分类管理</h3>
                </div>
                <div class="right aligned column">
                    <div class="ui icon  input">
                        <input type="text" placeholder="Search" id="searchType" name="search" style="width: 100%;">
                        <i class="search link  icon searchIcon"></i>
                    </div>
                </div>
            </div>
        </div>
        <#--table-->
        <div class="ui bottom attached  segment">
            <#--型列表-->
            <div id="typeListTable">
            </div>
        </div>
    </div>
</div>
<!--中间内容结束-->


<#---------------------------弹窗--------------------------------------------->
<#--编辑类型弹窗-->
<div class="ui modal mini edit">
    <#--    <i class="close icon"></i>-->
    <div class="header">
        编辑类型
    </div>
    <div class="content">
        <#--编辑Id隐藏域-->
        <input type="hidden" value="" id="editId">
        <div class="field">
            <div class="ui left labeled input" style=" width: 100% !important;">
                <label class="ui teal basic label">类型</label>
                <input type="text" name="typeName" class="typeName" id="editTypeName" value="">
            </div>
        </div>
    </div>
    <div class="actions " style="text-align: center;">
        <button class="ui approve teal button" id="editBtn">更新</button>
        <button class="ui cancel button">取消</button>
    </div>
</div>
<#--编辑类型弹窗结束-->




<#--新增类型弹窗-->
<div class="ui modal mini add">
    <#--    <i class="close icon"></i>-->
    <div class="header">
        增加类型
    </div>
    <div class="content">
        <div class="field">
            <div class="ui left labeled input" style=" width: 100% !important;">
                <label class="ui teal basic label">类型</label>
                <input type="text" placeholder="请输入类型" name="addTypeName" id="addTypeName">
            </div>
        </div>
        <#--消息提示:默认隐藏-->
        <div class="ui error message mini " hidden>
            <i class="close icon"></i>
            <div class="header center-pill">提示:</div>
            <p></p>
        </div>
    </div>

    <div class="actions " style="text-align: center;">
        <button class="ui  teal button" type="button" id="addBtn">新增</button>
        <button class="ui cancel button">取消</button>
    </div>
</div>
<#--新增类型弹窗结束-->

<#--删除类型弹窗-->
<div class="ui modal mini del">

    <div class="header">
        提示
    </div>
    <div class="content">
        <#--删除Id隐藏域-->
        <input type="hidden" value="" id="delId">
        <i class="archive icon large"></i> 确定要删除吗？
    </div>

    <div class="actions " style="text-align: center;">
        <button class="ui approve red button" type="button" id="delBtn">确定</button>
        <button class="ui cancel button">取消</button>
    </div>
</div>
<#--删除类型弹窗结束-->


<#---------------------------弹窗结束--------------------------------------------->

<#--分页参数隐藏域-->
<input type="hidden" id="currentPage" value="1">
<input type="hidden" id="pageSize" value="10">
<#--分页参数隐藏域结束-->


<!--页面底部-->
<#include "../common/footer.ftl">
<!--页面底部结束-->

<!--CDN 引入jquery-->
<script src="https://cdn.jsdelivr.net/npm/jquery@3.2/dist/jquery.min.js"></script>
<!--CDN 引入semantic-ui-->
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>
<#--引入通用js-->
<script src="${base}/js/common.js"></script>
<#--引入layer.js-->
<script src="${base}/lib/layer/layer.js"></script>
<script>

    $(function () {

        typeList(1);
        //默认隐藏消息提示
        // $(".message").closest('.message').transition('hide');
    });


    function typeList(currentPage) {
        //设置隐藏域中currentPage的值
        $("#currentPage").val(currentPage);

        //搜索的值
        var search = $("#searchType").val();

        var data = "pageNum=" + currentPage + "&pageSize=" + $("#pageSize").val() + "&search=" + search;
        // console.log(data);
        var loading=null;
        $.ajax({
            type: "get",
            url: "/blog/type/ajax/list",
            data: data,
            dataType: "html",
            beforeSend:function(){
                loading= layer.load(1);
            },
            complete:function(){
                layer.close(loading);
            },
            success: function (data) {
                $("#typeListTable").empty();
                $("#typeListTable").html(data);

            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                $(".loading-box").hide();
                if (XMLHttpRequest.status == 303) {
                    window.location.href = "/login";
                } else {
                    //layer.msg("获取需求列表失败");
                    console.log("获取博客类型列表失败")
                }
            }
        });

    };


    //删除类型
    $("#delBtn").click(function () {
        var typeId = $("#delId").val();
        var data = {};
        data.id = typeId;
        console.log(data);
        $.ajax({
            type: "post",
            url: "/blog/type/edit",
            data: JSON.stringify(data),
            dataType: "json",
            contentType: 'application/json;charset=UTF-8',
            success: function (data) {

                if (data.code == 200) {
                    typeList(1);
                    $(".success.message p").html(data.msg);
                    $(".success.message").closest('.message').transition('show');

                    layer.msg(data.msg,{icon:1});

                } else if (data.code == 601) {
                    $(".success.message p").html(data.msg);
                    $(".success.message").closest('.message').transition('show');

                    layer.msg(data.msg,{icon:2});
                }
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                $(".loading-box").hide();
                if (XMLHttpRequest.status == 303) {
                    window.location.href = "/login";
                } else {
                    $(".success.message p").html("删除博客类型列表失败");
                    $(".success.message").closest('.message').transition('show');
                }
            }
        });
    });

    //编辑类型
    $("#editBtn").click(function () {
        //当前页
        var currentPage = $("#currentPage").val();
        var typeId = $("#editId").val();
        var typeName = $("#editTypeName").val();
        var data = {};
        data.id = typeId;
        data.name = typeName;
        console.log(data);
        $.ajax({
            type: "post",
            url: "/blog/type/edit",
            data: JSON.stringify(data),
            dataType: "json",
            contentType: 'application/json;charset=UTF-8',
            success: function (data) {

                if (data.code == 200) {
                    typeList(currentPage);
                    $(".success.message p").html(data.msg);
                    $(".success.message").closest('.message').transition('show');
                } else if (data.code == 601) {
                    typeList(currentPage);
                    $(".success.message p").html(data.msg);
                    $(".success.message").closest('.message').transition('show');
                }
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                $(".loading-box").hide();
                if (XMLHttpRequest.status == 303) {
                    window.location.href = "/login";
                } else {
                    $(".success.message p").html("编辑博客类型列表失败");
                    $(".success.message").closest('.message').transition('show');
                }
            }
        });
    });
    //新增类型
    $("#addBtn").click(function () {
        //当前页
        var currentPage = $("#currentPage").val();
        var typeName = $("#addTypeName").val();
        var data = {};
        data.name = typeName;
        console.log(data);
        $.ajax({
            type: "post",
            url: "/blog/type/add",
            data: JSON.stringify(data),
            dataType: "json",
            contentType: 'application/json;charset=UTF-8',

            success: function (data) {
                if (data.code == 200) {
                    //成功
                    typeList(currentPage);
                    $(".success.message p").html(data.msg);
                    $(".success.message").closest('.message').transition('show');
                    //关闭弹窗
                    $(".ui.cancel.button").click();
                } else if (data.code == 601) {
                    //失败
                    typeList(currentPage);
                    $(".success.message p").html(data.msg);
                    $(".success.message").closest('.message').transition('show');
                } else if (data.code == 300) {
                    //已存在
                    $(".error.message p").html(data.msg);
                    $(".error.message").closest('.message').transition('show');
                }
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                $(".loading-box").hide();
                if (XMLHttpRequest.status == 303) {
                    window.location.href = "/login";
                } else {
                    $(".success.message p").html("新增博客类型列表失败");
                    $(".success.message").closest('.message').transition('show');
                }
            }
        });

    });

    //头像下拉
    $(".ui.dropdown").dropdown();
    // $("#type").addClass("active");
    $(".menu.toggle").click(function () {
        $(".m-item").toggleClass('m-mobile-hide');
    })

    //搜索
    $(".searchIcon").click(function () {
        typeList(1);
    });

    //消息提示关闭 初始化
    $(".message .close").on("click", function () {
        $(this).closest('.message').transition('fade');

    })
</script>
</body>
</html>