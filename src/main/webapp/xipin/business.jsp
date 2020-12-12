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
    <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="css/animate.min.css" rel="stylesheet" type="text/css"/>
    <link href="css/global.css" rel="stylesheet" type="text/css"/>
    <link href="css/lib.css" rel="stylesheet" type="text/css"/>
    <link href="css/style.css" rel="stylesheet" type="text/css"/>
    <script src="js/jquery-1.9.1.min.js">
    </script>
    <script src="js/global.js">
    </script>
    <script src="js/cn.js">
    </script>
    <script src="js/checkform.js">
    </script>
    <script src="js/wow.js">
    </script>
    <script src="js/imagesloaded.min.js">
    </script>
    <script src="js/countup.js">
    </script>
    <script src="js/bootstrap.min.js">
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
                    <img src="picture/2620184e5e.jpg" alt="" class="max-w100">
                </div>
            </div>
        </div>
    </div>
    <div class="blank15">
    </div>
    <div id="products">
        <div class="category-list text-center fz0 hide992 wow fadeInUp">
            <a href="#"​ class="item inline-block trans ">
                员工招聘
            </a>
            <a href="#"​ class="item inline-block trans ">
                社保代理
            </a>
            <a href="#"​ class="item inline-block trans ">
                员工培训
            </a>
            <a href="#"​ class="item inline-block trans ">
                员工体检
            </a>
            <a href="#"​ class="item inline-block trans ">
                合同管理
            </a>
            <a href="#"​ class="item inline-block trans ">
                薪酬发放
            </a>
        </div>
        <div class="category-list text-center show992 wow fadeInUp">
            <div class="btn-group">
                <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown"
                        aria-haspopup="true" aria-expanded="false">
                    服务
                    <span class="caret">
                            </span>
                </button>
                <ul class="dropdown-menu">
                    <li>
                        <a href="#"​ cid="1" rel="nofollow">
                            员工招聘
                        </a>
                    </li>
                    <li>
                        <a href="#"​ cid="1" rel="nofollow">
                            社保代理
                        </a>
                    </li>
                    <li>
                        <a href="#"​ cid="1" rel="nofollow">
                            员工培训
                        </a>
                    </li>
                    <li>
                        <a href="#"​ cid="1" rel="nofollow">
                            员工体检
                        </a>
                    </li>
                    <li>
                        <a href="#"​ cid="1" rel="nofollow">
                            合同管理
                        </a>
                    </li>
                    <li>
                        <a href="#"​ cid="1" rel="nofollow">
                            薪酬发放
                        </a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="products-bg trans">
            <div class="wrap">
                <div id="products-box">
                    <div class="products-list relative fz0">
                        <div class='item inline-block relative wow fadeInUp'>
                            <div class="main">
                                员工招聘在人力资源管理工作中具有重要的意义。招聘工作直接关系到企业人力资源的形成，有效的招聘工作不仅可以提高员工素质、改善人员结构，也可以为组织注入新的管理思想，为组织增添新的活力，甚至可能给企业带来技术、管理上的重大革新。招聘是企业整个人力资源管理活动的基础，有效的招聘工作能为以后的培训、考评、工资福利、劳动关系等管理活动打好基础。因此，员工招聘是人力资源管理的基础性工作。
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="blank25">
    </div>
    <div class="blank25">
    </div>
    <div class="blank25">
    </div>
    <div class="blank25">
    </div>
    <div class="text-center">
        <div class="try-button-box wrap fz0">
            <a href="#"​ target="_blank"
               class="button inline-block text-center trans wow fadeInUp">
                我要私人定制
            </a>
        </div>
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
