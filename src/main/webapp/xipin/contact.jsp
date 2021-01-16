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
    <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=PRp3PrgmVXacldG2QV4GGqkGHi6kVW22"></script>

    <script>
        jQuery(window).scrollTop(0);
        jQuery('html,body').scrollTop(0);
        new WOW().init({
            mobile: false
        });

        $(function () {
            var map = new BMap.Map("container");
            var point = new BMap.Point(116.404, 39.915);
            map.centerAndZoom(point, 15);

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
                    <img src="picture/efcc36677d.jpg" alt="" class="max-w100">
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
    <div id="contact" class="wrap">
        <div class="contact-info clean">
            <div class="item fl text-center relative wow fadeInUp">
                <div class="ico">
                    <img src="picture/ico-phone.png" alt="" class="middle">
                    <span class="middle-span">
                            </span>
                </div>
                <div class="title">
                    联系电话
                </div>
                <div class="info">
                    ${contact.phone}
                </div>
            </div>
            <div class="item fl text-center relative wow fadeInUp">
                <div class="ico">
                    <img src="picture/ico-email.png" alt="" class="middle">
                    <span class="middle-span">
                            </span>
                </div>
                <div class="title">
                    邮箱
                </div>
                <div class="info">
                    ${contact.mail}
                </div>
            </div>
            <div class="item fl text-center relative wow fadeInUp">
                <div class="ico">
                    <img src="picture/ico-fax.png" alt="" class="middle">
                    <span class="middle-span">
                            </span>
                </div>
                <div class="title">
                    传真
                </div>
                <div class="info">
                    ${contact.phone}
                </div>
            </div>
        </div>
        <div class="clean">
            <div class="contact-area fr clean">
                <div class="contact-info2 clean">
                    <div class="title wow fadeInUp">
                        喜聘人力资源
                    </div>
                    <div class="address wow fadeInUp">
                        地点：${contact.address}
                    </div>
                </div>

            </div>
            <div id="container" class="map fl fz0 over relative text-center wow fadeInUp" style="height: 400px;">
            </div>
        </div>
    </div>
    <div class="blank25">
    </div>
    <div class="blank25">
    </div>
    <%@include file="/xipin/footer.jsp" %>
</body>
</html>
