<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0"
        />
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

            $(function() {
                setTimeout(function() {
                    $('#body').show();
                },
                500);
            })
        </script>
    </head>
    
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
            <div class="blank25">
            </div>
            <div class="blank25">
            </div>
            <div id="info-detail" class="wrap1200 wow fadeInUp">
                <div class="top text-center">
                    <div class="info-title">
                        ${news.title}
                    </div>
                    <div class="blank9">
                    </div>
                    <span>
                        发布时间：${news.createtime}
                    </span>
                </div>
                <div class="blank25">
                </div>
                <div class="editor wow fadeInUp">
                    ${news.content}
                </div>
            </div>
            <div class="blank25">
            </div>
            <div class="blank25">
            </div>
        </div>

    <%@include file="/xipin/footer.jsp" %>

    </body>

</html>