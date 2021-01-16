<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.enterprise.entity.IndexImg" %>
<%@ page import="java.util.List" %>
<%@ page import="java.text.SimpleDateFormat" %><%--
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
    <style type="text/css">
        .animate-box {
            width: 16%; height: 130px;padding: 40px;float: left
        }
        .animate-box img {
            margin-bottom: 10px;
        }
        .animate-box h3{
            font-size: 20px;
        }
        @media screen and (max-width: 1500px) and (min-width:1200px){
            .animate-box {
                width: 16%; height: 130px;padding: 40px;float: left
            }
        }
        @media screen and (min-width:800px) and (max-width:1200px){
            .animate-box {
                width: 32%; height: 140px;padding: 40px;float: left
            }
        }
        @media screen and (max-width:800px) {
            .animate-box {
                width: 50%; height: 140px;padding: 40px;float: left
            }
        }
    </style>
    <script>
        jQuery(window).scrollTop(0);
        jQuery('html,body').scrollTop(0);
        new WOW().init({
            mobile: false
        });

        var path = '<%=request.getContextPath()%>';

        function queryCase(caseType) {
            $.ajax({
                type: 'GET',
                url: "<%=request.getContextPath()%>/xipin/caseByType",
                data: {
                    "caseType": caseType
                },
                success: function (data, textStatus, jqXHR) {
                    console.log(data);

                    displayCase(data);
                },
                dataType: "json"
            });
        }

        function displayCase(data) {
            var content = '';
            var list = data;

            for (var i = 0; i < list.length; i++) {
                var cases = list[i];

                content += '<div class="item inline-block absolute wow fadeInUp" cid="0" status="on"> ' +
                    '<div class="main trans"> ' +
                    '<div class="cover scale relative"> ' +
                    '<img src="' + path + '/xipin/picture/notebook.png" alt="" class="trans scale-img max-w100"> ' +
                    '<div class="img absolute text-center fz0"> ' +
                    '<img src="' + path + '/' + cases.image + '" alt=""class="trans scale-img"> ' +
                    '</div> ' +
                    '</div> ' +
                    '<div class="info clean"> ' +
                    '<div class="left fl"> ' +
                    '<div class="name">' + cases.title + '</div> ' +
                    '</div> ' +
                    '</div> ' +
                    '</div> <div class="mask trans"> </div></div>';
            }

            //$(".products-list").html(content);
            //$(".products-list").height(333);
        }

        $(function () {
            $(".products-list").height(180);

            setTimeout(function () {
                    $('#body').show();
                },
                500);
        })
    </script>
</head>

<%
    List<IndexImg> indexImgs = (List<IndexImg>) request.getAttribute("indexImgs");
%>
<body>
<%@include file="/xipin/top.jsp" %>

<div id="header-blank">
</div>
<div id="body" class="trans">
    <div id="banner" class="relative hide992">
        <div class="bd over">
            <div class="bar relative fz0 nowrap">
                <!--<div class="item relative inline-block text-center fz0 over item-0"> <a href="#"​ class="banner-button absolute text-center trans-1s"></a> <img src="" alt="" class="max-w100">
                <div class="font font-0 text-center absolute nowrap trans-1s"><span class="trans-1s inline-block">模版 · 一样可以很精致</span></div>
                <img class="img-0 img trans-1s absolute" src="" alt=""/> <img class="img-1 img trans-1s absolute" src="" alt=""/> <img class="img-2 img trans-1s absolute" src="" alt=""/> </div>-->
                <c:forEach var="item" items="<%= indexImgs%>">
                    <!-- 1920 * 800 像素 -->
                    <div class="item relative inline-block text-center fz0 over item-1">
                        <!--<a class="banner-button absolute text-center trans-1s"></a>-->
                        <img src="<%=request.getContextPath()%>${item.pictureUrl}" alt="" class="max-w100">
                        <a class="absolute">
                        </a>
                    </div>
                </c:forEach>
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
    <div id="products" class="index">
        <div class="index-title text-center wow fadeInUp">
            服务业务
        </div>
        <div class="index-brief text-center wow fadeInUp">
            六大业务领域 + 高端服务团队
        </div>
        <%--<div class="category-list text-center fz0 hide992 wow fadeInUp">
            <c:forEach var="item" items="${caseTypes}">
                <a href="javascript:void(0);" onclick="queryCase(${item.id})" class="item inline-block trans"
                   cid="6"
                   rel="nofollow">
                        ${item.name}
                </a>
            </c:forEach>

        </div>--%>
        <div class="category-list text-center show992 wow fadeInUp">
            <div class="btn-group">
            </div>
        </div>
        <div class="products-bg trans" style="margin:0 auto; width: 90%;text-align:center;">
            <ul style="overflow: hidden;">
                <li class="animate-box fadeInUp animated">
                    <a href="<%=request.getContextPath()%>/xipin/tobusiness?type=校企合作">
                        <img src="<%=request.getContextPath()%>/xipin/picture/service/1.png">
                        <br>
                        <h3>校企合作</h3>
                    </a>
                </li>
                <li class="animate-box fadeInUp animated" >
                    <a href="<%=request.getContextPath()%>/xipin/tobusiness?type=派遣服务">
                        <img src="<%=request.getContextPath()%>/xipin/picture/service/2.png">
                        <br>
                        <h3>派遣服务</h3>
                    </a>
                </li>
                <li class="animate-box fadeInUp animated">
                    <a href="<%=request.getContextPath()%>/xipin/tobusiness?type=灵活用工">
                        <img src="<%=request.getContextPath()%>/xipin/picture/service/3.png">
                        <br>
                        <h3>灵活用工</h3>
                    </a>
                </li>
                <li class="animate-box fadeInUp animated" >
                    <a href="<%=request.getContextPath()%>/xipin/tobusiness?type=外包服务">
                        <img src="<%=request.getContextPath()%>/xipin/picture/service/4.png">
                        <br>
                        <h3>外包服务</h3>
                    </a>
                </li>
                <li class="animate-box fadeInUp animated" >
                    <a href="<%=request.getContextPath()%>/xipin/tobusiness?type=代理招聘">
                        <img src="<%=request.getContextPath()%>/xipin/picture/service/5.png">
                        <br>
                        <h3>代理招聘</h3>
                    </a>
                </li>
                <li class="animate-box fadeInUp animated">
                    <a href="<%=request.getContextPath()%>/xipin/tobusiness?type=人才猎聘">
                        <img src="<%=request.getContextPath()%>/xipin/picture/service/6.png">
                        <br>
                        <h3>人才猎聘</h3>
                    </a>
                </li>
            </ul>
    </div>
    <div class="blank15">
    </div>
    <div class="blank15">
    </div>
    <div class="index-cooperation wrap">
        <div class="index-title text-center wow fadeInUp">
            合作伙伴
        </div>
        <div class="index-brief text-center wow fadeInUp">
            服务了哪些客户很重要 用心 更重要！
        </div>
        <div class="blank20">
        </div>
        <div class="cooperation-box s5 relative hide768 wow fadeInUp">
            <div class="bd over">
                <div class="bar trans relative fz0 nowrap">
                    <c:forEach var="item" items="${friends}">
                        <div class="item inline-block border-box trans">
                            <a class="text-center block border-box trans fz0 grayscale" title="${item.title}"
                               rel="nofollow">
                                <img src="<%=request.getContextPath()%>/${item.image}" alt="${item.title}"
                                     class="max-w100 max-h100 middle grayscale-img trans">
                                <span class="middle-span">
                                    </span>
                            </a>
                        </div>
                    </c:forEach>

                    <div class="item inline-block border-box trans">
                        <a class="text-center block border-box trans fz0 grayscale" title="同学会"
                           rel="nofollow">
                            <img src="picture/1-1f92z941160-l.jpg" alt="同学会"
                                 class="max-w100 max-h100 middle grayscale-img trans">
                            <span class="middle-span">
                                    </span>
                        </a>
                    </div>
                </div>
            </div>
            <div class="hd text-center fz0">
            </div>
        </div>

    </div>
    <div class="blank25">
    </div>
    <div class="blank25">
    </div>
    <div class="index-tutorial">
        <div class="index-title text-center wow fadeInUp">
            人资资讯
        </div>
        <div class="blank20">
        </div>
        <div class="blank20">
        </div>
        <div class="max-wrap clean relative wow fadeInUp">
            <div class="img fl hide1300">
                <a title="">
                    <img src="picture/3da6124a3d.jpg" alt="" class="max-w100 block">
                </a>
            </div>
            <div class="tutorial-support absolute">
                <div class="table">
                    <div class="table-cell middle">
                    </div>
                </div>
            </div>
        </div>
        <div class="tutorial-list clean wrap">
            <c:forEach var="item" items="${news}">
                <div class='item wow fadeInUp fl' class="item wow fadeInUp fl">
                    <div class="date fl">
                        <div class="year">
                                ${item.viewTime}
                        </div>
                    </div>
                    <div class="info fl">
                        <div class="name text-over">
                            <a href="<%=request.getContextPath()%>/xipin/news/info?id=${item.id}" class="trans">
                                    ${item.title}
                            </a>
                        </div>
                        <div class="brief over">
                                ${item.content}
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
        <div class="blank20">
        </div>
        <div class="blank20">
        </div>
        <div class="blank25">
        </div>
        <%--<div class="text-center">
            <div class="try-button-box wrap fz0">
                <a href="#" ​ target="_blank"
                   class="button inline-block text-center trans wow fadeInUp">
                    我需要服务
                </a>
            </div>
        </div>--%>
    </div>
    <div class="blank25">
    </div>
    <div class="blank25">
    </div>
    <div class="blank25">
    </div>
    <div class="blank25">
    </div>
    <%@include file="/xipin/footer.jsp" %>
</body>
</html>
