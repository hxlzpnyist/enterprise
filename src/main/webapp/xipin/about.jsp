<%--
  Created by IntelliJ IDEA.
  User: didi
  Date: 2020/12/5
  Time: 5:43 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

        $(function () {
            setTimeout(function () {
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
                    <img src="picture/about.png" alt="" class="max-w100">
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
    <div id="about" class="wrap">
        <div class="clean">
            <div class="item fr fz0 text-center wow fadeInUp">
                <img src="picture/db39253b5d.jpg" alt="" class="max-w100">
            </div>
            <div class="item about-brief fl border-box text-center wow fadeInUp">
                <div class="about-title text-center">
                    <div class="title-0">
                        WHO ARE WE
                    </div>
                    <div class="title-1">
                                <span>
                                    我们是谁
                                </span>
                    </div>
                </div>
                <div class="brief">
                    ${about.contentHtml}
                </div>
            </div>
        </div>
        <div class="clean relative">
            <div class="item fl fz0 text-center wow fadeInUp">
                <img src="picture/18beffa957.jpg" alt="" class="max-w100">
            </div>
            <div class="item number text-center absolute wow fadeInUp">
                <div class="i fl">
                    <div id="down-0" class="n" data-start="0" data-end="11" data-duration="1">
                        11
                    </div>
                    服务领域
                </div>
                <div class="i fl">
                    <div id="down-1" class="n" data-start="0" data-end="300" data-duration="1"
                         data-suffix="+">
                        300+
                    </div>
                    成功案例
                </div>

            </div>
        </div>
    </div>
    <div id="team" class="wrap">
        <div class="about-title text-center">
            <div class="title-0 wow fadeInUp">
                DEVELOPMENT TEAM
            </div>
            <div class="title-1 wow fadeInUp">
                        <span>
                            团队成员
                        </span>
            </div>
        </div>
        <div class="team-list clean">
            <c:forEach var="aboutUser" items="${aboutUsers}">
                <div class="item item0 fl relative text-center wow fadeInUp">
                    <div class="img grayscale">
                        <a href="javascript:void(0);" class="trans block" title="${aboutUser.name}" rel="nofollow">
                            <img src="<%=request.getContextPath()%>/${aboutUser.image}" alt="${aboutUser.name}" class="grayscale-img max-w100 trans">
                        </a>
                    </div>
                </div>
            </c:forEach>


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
    <%@include file="/xipin/footer.jsp" %>
</body>
</html>
