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

<footer>
    <div class="blank15">
    </div>
    <div class="blank15">
    </div>
    <div class="wrap clean">
        <div class="left fl">
            <div class="title wow fadeInUp">
                互联网 · 最高端 模板一样可以很精致
            </div>
            <div class="hotline wow fadeInUp">
                xxx xxx
            </div>
            <div class="address wow fadeInUp">
                xx&nbsp;&nbsp;&nbsp;
                <a href="#" ​ target="_blank">
                    ICP备XXXXXXXX号
                </a>
                &nbsp;
                <a target="_blank" href="http://www.beian.gov.cn/" style="display:inline-block;">
                    <img src="picture/govbeian.png" align="absmiddle"/>
                    &nbsp;公网安备XXXXXXXXXXXXXX号
                </a>
            </div>
        </div>
        <div class="follow fr fz0">
            <div class="title relative text-center wow fadeInUp">
                            <span class="relative">
                                关注
                            </span>
            </div>
            <div class="text-center">
                <div class="item text-center inline-block wow fadeInUp">
                    <a href="#" ​
                       class="ico block trans qq" rel="nofollow">
                        <i class="fa fa-qq middle trans" onClick="popService(service2);">
                        </i>
                    </a>
                    QQ
                </div>
                <div class="item text-center inline-block wow fadeInUp relative">
                    <a href="#" ​ class="ico block trans wechat" rel="nofollow">
                        <i class="fa fa-weixin middle trans">
                        </i>
                    </a>
                    微信
                    <div class="qrcode absolute trans">
                        <img src="picture/erweima.png" alt="" width="200"/>
                    </div>
                </div>
                <div class="item text-center inline-block wow fadeInUp">
                    <a href="#" ​ class="ico block trans sina" rel="nofollow"
                       target="_blank">
                        <i class="fa fa-weibo middle trans">
                        </i>
                    </a>
                    微博
                </div>
            </div>
        </div>
    </div>
    <div class="blank20">
    </div>
    <div class="blank15">
    </div>
    <div class="bottom">
        <div class="wrap clean">
            <div class="links fl">
                友情链接 :

            </div>
            <div class="copyright fr">
                Copyright &copy; 2020
            </div>
        </div>
    </div>
</footer>
<div id="follow">
    <div id="openHotline" class="item relative hide992" row="2">
        <a href="#" ​ class="ico orange block absolute" title="服务热线"
           onclick="OptHot(1);OptQrcode(0);OptOnline(0);" rel="nofollow">
        </a>
        <div id="hotline">
            <div class="top clean">
                服务热线
                <a href="#" ​ class="fr fa fa-times" title="隐藏热线" onClick="OptHot(0);"
                   rel="nofollow">
                </a>
            </div>
            <div class="qq-list">
                <a class="list block trans">
                    xxx
                </a>
                <a class="list block trans">
                    xxx
                </a>
            </div>
        </div>
    </div>
    <div id="openOnline" class="item relative hide992" row="2">
        <a href="#" ​ class="ico blue block absolute" title="在线咨询" onClick="OptOnline(1);OptQrcode(0);OptHot(0);"
           rel="nofollow">
                        <span class="middle fa fa-qq fa-2x">
                        </span>
        </a>
        <div id="online">
            <div class="top clean">
                在线咨询
                <a href="#" ​ class="fr fa fa-times" title="隐藏咨询" onClick="OptOnline(0);"
                   rel="nofollow">
                </a>
            </div>
            <div class="qq-list">
                <a href="#" ​ class="list block trans"
                   title="咨询TA" target="_blank" rel="nofollow" d="2498989222">
                                <span class="fa fa-qq trans">
                                </span>
                    资深顾问
                </a>
                <a href="#" ​ class="list block trans"
                   title="咨询TA" target="_blank" rel="nofollow" d="88889999">
                                <span class="fa fa-qq trans">
                                </span>
                    资深顾问
                </a>
            </div>
        </div>
    </div>
    <div class="item relative show992 trans">
        <a href="#" ​ class="ico blue block trans phone" rel="nofollow">
        </a>
    </div>
    <div class="item relative trans">
        <a href="#" ​ class="ico red block trans sina" title="关注微博"
           target="_blank" rel="nofollow">
                        <span class="middle fa fa-weibo fa-2x">
                        </span>
        </a>
    </div>
    <div id="openQrcode" class="item relative trans">
        <a href="#" ​ class="ico green block trans wechat" title="关注微信"
           onclick="OptQrcode();OptOnline(0)" rel="nofollow">
                        <span class="middle fa fa-weixin fa-2x">
                        </span>
        </a>
        <div id="wechat-qrcode">
            <img src="picture/erweima.png" alt="" width="200"/>
        </div>
    </div>
    <div class="item relative">
        <a href="#" ​ class="ico block trans totop show totop" title="回到顶部"
           onclick="toTop();" rel="nofollow">
                        <span class="middle fa fa-angle-up fa-2x">
                        </span>
        </a>
    </div>
</div>
</div>
<script src="js/website.js">
</script>
</body>
</html>
