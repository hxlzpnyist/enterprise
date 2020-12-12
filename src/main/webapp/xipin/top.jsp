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

<header class="trans border-box  ">
    <div class="wrap clean relative">
        <div id="logo" class="fl relative trans">
            <a href="index.html" ​ class="relative trans">
                <img src="picture/logo.png" alt="" class="max-w100 max-h100 trans">
            </a>
        </div>
        <nav class="absolute fz0 trans border-box stopP ">
            <div class="bd over clean">
                <div class="title clean show992">
                    <a href="#" ​ class="btn-close trans middle fr" onClick="ActionMenu('Close');">
                    </a>
                </div>
                <div class="nav-item fl text-center trans">
                    <a href="index.jsp" ​ class='on trans'>
                        首页
                    </a>
                </div>
                <div class="nav-item fl text-center trans">
                    <a href="about.jsp" ​>
                        关于
                    </a>
                </div>
                <div class="nav-item fl text-center trans">
                    <a href="business.jsp" ​>
                        业务
                    </a>
                </div>
                <div class="nav-item fl text-center trans">
                    <a href="case.jsp" ​>
                        案例
                    </a>
                </div>
                <div class="nav-item fl text-center trans">
                    <a href="news.jsp" ​>
                        新闻
                    </a>
                </div>
                <div class="nav-item fl text-center trans">
                    <a href="contact.jsp" ​>
                        联系我们
                    </a>
                </div>
                <!--<div class="member show992 clean"> <a href="#"​ class="login member-btn fl content-box text-center trans"><i></i>登录</a> <a href="#"​ class="try member-btn fl content-box text-center trans">注册账号</a> </div>-->
            </div>
        </nav>
        <!--<div class="header-user fr"> <a href="#"​ class="login inline-block text-center border-box trans hide992" rel="nofollow"><i></i>登录</a> <a href="#"​ class="try inline-block text-center border-box trans hide992" rel="nofollow">注册账号</a> </div>-->
        <div class="menu-button fr stopP show992 trans">
            <a href="#" ​ class="fa fa-align-justify trans" rel="nofollow"
               onclick="ActionMenu();">
            </a>
        </div>
    </div>
</header>
</body>
</html>
