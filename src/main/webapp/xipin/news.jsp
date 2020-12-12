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
                    <img src="picture/710472f909.jpg" alt="" class="max-w100">
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
                <!--<a href="#"​ class="play ico trans fl middle wow fadeInUp">视频</a>-->
                <div class="line fl middle">
                </div>
                <a href="#"​ class="file ico trans fl middle wow fadeInUp">
                    新闻
                </a>
                <a href="#"​ class="question ico trans fr middle wow fadeInUp">
                    我要提问
                </a>
            </div>
        </div>
        <div class="wrap">
            <div class="tutorial-list clean">
                <div class='item wow fadeInUp fl'>
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
                            <a href="newsshow.html"​ class="trans">
                                为什么企业要建多国语言网站？
                            </a>
                        </div>
                        <div class="brief over">
                            互联网在不断发展壮大，已成为企业和个人寻求生意机会，对商品、服务和信息进行了解的首选方式。从站在增强一个企业竞争优势的角度看，建设一个多语言网站是不断增加客户数量...
                        </div>
                    </div>
                </div>
                <div class='item wow fadeInUp fr'>
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
                            <a href="newsshow.html"​ class="trans">
                                什么是伪静态？伪静态有何作用?
                            </a>
                        </div>
                        <div class="brief over">
                            伪静态是相对真实静态来讲的，真实静态会生成一个html或htm后缀的文件，访客能够访问到真实存在的静态页面，而伪静态则没有生成实体静态页面文件，而仅仅是以.html一类的静态页面...
                        </div>
                    </div>
                </div>
                <div class='item wow fadeInUp fl'>
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
                            <a href="newsshow.html"​ class="trans">
                                企业建站选择主机和产品服务遇到的问题
                            </a>
                        </div>
                        <div class="brief over">
                            个人建站和企业建站是两个不同的，个人建站我们则是需要考虑成本的支出，比较大部分个人建站仅仅是用于兴趣爱好，对于空间和服务的要求可能不是很高的，而企业建站则是不同了...
                        </div>
                    </div>
                </div>
                <div class='item wow fadeInUp fr'>
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
                            <a href="newsshow.html"​ class="trans">
                                SEO网站的基本术语
                            </a>
                        </div>
                        <div class="brief over">
                            SEO SEO就是Search Engine Optimization的缩写,中文就是搜索引擎优化。 PR 值全称为PageRank(网页级别）,是Google用于用来标识网页的等级、重要性的一种方法，是Google用来衡量一个网站的好坏的重...
                        </div>
                    </div>
                </div>
                <div class='item wow fadeInUp fl'>
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
                            <a href="newsshow.html"​ class="trans">
                                SEO快速排名算法
                            </a>
                        </div>
                        <div class="brief over">
                            一、IP环境 地区相关性限制，非本地区的IP点击不计分(PS：部分行业有此限制，比如地区旅游行业网站，如上海旅行社必须需要上海本地的IP点击，否则不加分，多次使用外地IP点击不仅...
                        </div>
                    </div>
                </div>
                <div class='item wow fadeInUp fr'>
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
                            <a href="newsshow.html"​ class="trans">
                                SEO怎么加快文章的收录速度
                            </a>
                        </div>
                        <div class="brief over">
                            不论做网站还是在各大网站发文章大家都比较关心网站的页面收录情况，每天有规律的更新，每天在各大平台发那么多内容，但是网站和文章的收录情况并不乐观，查下网站的整体收录...
                        </div>
                    </div>
                </div>
            </div>
            <div id="turn_page" class="wow fadeInUp" first last>
                <font class="page_item_current">
                    1
                </font>
                <a class="page_item" href='list_12_2.html'>
                    2
                </a>
                <a class="page_button" href='list_12_2.html'>
                    <i class="fa fa-chevron-right trans middle">
                    </i>
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
