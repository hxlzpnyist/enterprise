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
                    电话
                </div>
                <div class="info">
                    xxx
                    <br/>
                    xxx
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
                    xxx
                    <br/>
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
                    xxx
                </div>
            </div>
            <div class="item fl text-center relative wow fadeInUp">
                <div class="ico">
                    <img src="picture/ico-online.png" alt="" class="middle">
                    <span class="middle-span">
                            </span>
                </div>
                <div class="title">
                    客服
                </div>
                <a href="#"​ onClick="popService(service2);"
                   class="button block text-center">
                    客服在线
                </a>
            </div>
        </div>
        <div class="clean">
            <div class="contact-area fr clean">
                <div class="contact-info2 clean">
                    <div class="title wow fadeInUp">
                        互联网 · 最高端
                    </div>
                    <div class="address wow fadeInUp">
                        地点：xx
                    </div>
                    <div class="clean relative">
                        <div class="qrcode fl clean relative wow fadeInUp">
                            <div class="img fl fz0">
                                <img src="picture/erweima.png" alt="" class="max-w100">
                            </div>
                            <div class="name fl nowrap">
                                官方微信
                                <br/>
                                公众号搜索“互联网”
                            </div>
                        </div>
                        <div class="line absolute hide1300">
                        </div>
                        <div class="qrcode fr clean relative wow fadeInUp">
                            <div class="img fl fz0">
                                <img src="picture/erweima.png" alt="" class="max-w100">
                            </div>
                            <div class="name fl nowrap">
                                官方微博
                                <br/>
                                搜索“互联网”
                            </div>
                        </div>
                    </div>
                </div>
                <form class="contact-form fr fz0" action="#" enctype="multipart/form-data"
                      method="post">
                    <input type="hidden" name="action" value="post" />
                    <input type="hidden" name="diyid" value="1" />
                    <input type="hidden" name="do" value="2" />
                    <input type="text" style="margin-left:0;" class="text inline-block wow fadeInUp"
                           name="name" maxlength="20" placeholder="姓名" check="请输入姓名！~*">
                    <input type="text" class="text inline-block wow fadeInUp" name="tel" maxlength="20"
                           placeholder="电话" check="请输入电话！~*">
                    <input type="text" class="text inline-block wow fadeInUp" name="email"
                           maxlength="20" placeholder="邮箱" check="~email|“{value}”不是一个正确的邮箱格式！">
                    <textarea name="content" class="area block wow fadeInUp" placeholder="留言"
                              check="请输入留言！~*" autocomplete="off">
                            </textarea>
                    <input type="hidden" name="dede_fields" value="name,text;tel,text;email,text;content,text"
                    />
                    <input type="hidden" name="dede_fieldshash" value="6eef2ab94532badd3ceda1f6fd888674"
                    />
                    <div class="rows clean">
                        <!--<div class="code-img fl wow fadeInUp"><a href='javascript:void(0);' onclick='this.blur(); obj=document.getElementById("2f8a6bf31f3bd67bd2d9720c58b19c9a"); obj.src=obj.src+Math.random(); return true;'><img src='picture/verification_code.php' align='absmiddle' id='2f8a6bf31f3bd67bd2d9720c58b19c9a'></a></div>-->
                        <input type="submit" name="submit" class="button wow fadeInUp fr" value="提交">
                    </div>
                </form>
            </div>
            <div class="map fl fz0 over relative text-center wow fadeInUp">
                <img src="picture/map.jpg" alt="" class="img-0">
                <img src="picture/map.jpg" alt="" class="img-1 absolute">
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
