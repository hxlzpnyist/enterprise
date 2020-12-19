<%--
  Created by IntelliJ IDEA.
  User: didi
  Date: 2020/12/5
  Time: 5:43 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0"/>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>喜聘人力资源</title>
    <meta name="keywords" content="喜聘人力资源"/>
    <meta name="description" content="喜聘人力资源"/>
    <meta name="author" content="js代码"/>
    <meta name="copyright" content="js代码"/>
    <link href="<%=request.getContextPath()%>/xipin/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
    <link href="<%=request.getContextPath()%>/xipin/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="<%=request.getContextPath()%>/xipin/css/animate.min.css" rel="stylesheet" type="text/css"/>
    <link href="<%=request.getContextPath()%>/xipin/css/global.css" rel="stylesheet" type="text/css"/>
    <link href="<%=request.getContextPath()%>/xipin/css/lib.css" rel="stylesheet" type="text/css"/>
    <link href="<%=request.getContextPath()%>/xipin/css/style.css" rel="stylesheet" type="text/css"/>
    <script src="<%=request.getContextPath()%>/xipin/js/jquery-1.9.1.min.js">
    </script>
    <script src="<%=request.getContextPath()%>/xipin/js/global.js">
    </script>
    <script src="<%=request.getContextPath()%>/xipin/js/cn.js">
    </script>
    <script src="<%=request.getContextPath()%>/xipin/js/checkform.js">
    </script>
    <script src="<%=request.getContextPath()%>/xipin/js/wow.js">
    </script>
    <script src="<%=request.getContextPath()%>/xipin/js/imagesloaded.min.js">
    </script>
    <script src="<%=request.getContextPath()%>/xipin/js/countup.js">
    </script>
    <script src="<%=request.getContextPath()%>/xipin/js/bootstrap.min.js">
    </script>
    <script>
        jQuery(window).scrollTop(0);
        jQuery('html,body').scrollTop(0);
        new WOW().init({
            mobile: false
        });

        var pageSize = 4;
        function queryNews(pageNum, title) {
            $.ajax({
                type: 'GET',
                url: "<%=request.getContextPath()%>/xipin/news",
                data: {
                    "pageNum" : pageNum,
                    "pageSize" : pageSize,
                    "title" : title
                },
                success: function (data, textStatus, jqXHR) {
                    console.log(data);

                    displayNews(data);
                },
                dataType: "json"
            });
        }

        function displayNews(data) {
            var $list = $(".tutorial-list");
            var content = '';
            var list = data.list;

            for (var i = 0; i < list.length; i++) {
                var news = list[i];

                content += '<div class="item wow fadeInUp '+ ((i % 2) == 0 ? "fl" : "fr") +'">' +
                '<div class="date fl">' +
                    '<div class="year">'+ news.viewTime +'</div>' +
                '</div> ' +
                '<div class="info fl"> ' +
                '<div class="name text-over"> ' +
                '<a href="newsshow.html" class="trans">'+ news.title +'</a> ' +
                '</div> ' +
                '<div class="brief over">' + news.content +
                '</div> ' +
                '</div></div>';
            }

            var page = ''

            var currentPage = data.pageNum;
            var totalPage = data.pagerSize;
            if (currentPage > 0) {
                page += '<a class="page_item" href="javascript:void(0);" onclick="queryNews('+ (currentPage - 1) +')">上一页 </a>';
            }

            page += '<font class="page_item_current">'+ (currentPage + 1) +'</font>';

            if (currentPage + 1 < totalPage) {
                page += '<a class="page_item" href="javascript:void(0);" onclick="queryNews('+ (currentPage + 1) +')">下一页</a>';
            }

            $(".tutorial-list").html(content);
            $("#turn_page").html(page);

        }

        $(function () {
            queryNews(0, "");

            setTimeout(function () {
                    $('#body').show();
                },
                500);
        })
    </script></head>
<body>
<%@include file="/xipin/top.jsp" %>

<div id="header-blank" class="show992">
</div>
<div id="body" class="trans">
    <div id="banner" class="relative hide992">
        <div class="bd over">
            <div class="bar relative fz0 nowrap">
                <div class="item relative inline-block text-center fz0 over item-0">
                    <img src="<%=request.getContextPath()%>/xipin/picture/710472f909.jpg" alt="" class="max-w100">
                </div>
            </div>
        </div>
    </div>
    <div id="small-banner" class="relative show992">
        <div class="bd over">
            <div class="bar relative fz0 nowrap">
            </div>
        </div>
    </div>
    <div id="tutorial">
        <div class="tutorial-support">
            <div class="wrap clean">
                <form name="formsearch" class="support-search fl relative" action="#">
                    <input type="hidden" name="kwtype" value="0" />
                    <input type="text" class="text block border-box" name="q" value="" placeholder="在哪里设置网站关键词">
                    <input type="submit" class="hide" value="">
                </form>
                <!--<a href="#" class="play ico trans fl middle wow fadeInUp">视频</a>-->
                <div class="line fl middle">
                </div>
                <a href="#" class="file ico trans fl middle wow fadeInUp">
                    新闻
                </a>
                <a href="#" class="question ico trans fr middle wow fadeInUp">
                    我要提问
                </a>
            </div>
        </div>
        <div class="wrap">
            <div class="tutorial-list clean">
                <div class="item wow fadeInUp fl">
                    <div class="date fl">
                        <div class="year">
                            2017
                        </div>
                        <div class="day">
                            09-29
                        </div>
                    </div>
                    <div class="info fl">
                        <div class="name text-over">
                            <a href="newsshow.html" class="trans">
                                为什么企业要建多国语言网站？
                            </a>
                        </div>
                        <div class="brief over">
                            互联网在不断发展壮大，已成为企业和个人寻求生意机会，对商品、服务和信息进行了解的首选方式。从站在增强一个企业竞争优势的角度看，建设一个多语言网站是不断增加客户数量...
                        </div>
                    </div>
                </div>
            </div>
            <div id="turn_page" class="wow fadeInUp" first last>
                <a class="page_item" href='list_12_2.html'>
                    上一页
                </a>
                <font class="page_item_current">
                    1
                </font>
                <a class="page_item" href='list_12_2.html'>
                    下一页
                </a>
            </div>
        </div>
        <div class="blank20">
        </div>
        <div class="blank20">
        </div>
        <div class="blank20">
        </div>
        <div class="blank20">
        </div>
    </div>
    <%@include file="/xipin/footer.jsp" %>
</body>
</html>
