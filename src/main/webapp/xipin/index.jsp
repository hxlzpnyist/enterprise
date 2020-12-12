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
    </script>
</head>
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
                <div class="item relative inline-block text-center fz0 over item-1">
                    <!--<a class="banner-button absolute text-center trans-1s"></a>-->
                    <img src="picture/1-1f92z915060-l.jpg" alt="" class="max-w100">
                    <a class="absolute">
                    </a>
                </div>
                <div class="item relative inline-block text-center fz0 over item-1">
                    <!--<a class="banner-button absolute text-center trans-1s"></a>-->
                    <img src="picture/1-1f92z915190-l.jpg" alt="" class="max-w100">
                    <a class="absolute">
                    </a>
                </div>
                <div class="item relative inline-block text-center fz0 over item-1">
                    <!--<a class="banner-button absolute text-center trans-1s"></a>-->
                    <img src="picture/1-1f929111s30-l.jpg" alt="" class="max-w100">
                    <a class="absolute">
                    </a>
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
    <div id="products" class="index">
        <div class="index-title text-center wow fadeInUp">
            成功案例
        </div>
        <div class="index-brief text-center wow fadeInUp">
            1000家企业客户 + 高端服务团队
        </div>
        <div class="category-list text-center fz0 hide992 wow fadeInUp">
            <a href="#" ​ class="item inline-block trans" cid="6"
               rel="nofollow">
                金融机构
            </a>
            <a href="#" ​ class="item inline-block trans" cid="6"
               rel="nofollow">
                行政事业单位
            </a>
            <a href="#" ​ class="item inline-block trans" cid="6"
               rel="nofollow">
                服务行业
            </a>
            <a href="#" ​ class="item inline-block trans" cid="6"
               rel="nofollow">
                工业领域
            </a>
            <a href="#" ​ class="item inline-block trans" cid="6"
               rel="nofollow">
                流通领域
            </a>
            <!-- <a href="#"​ class="item inline-block trans" cid="7" rel="nofollow">餐饮美食</a>
            <a href="#"​ class="item inline-block trans" cid="9" rel="nofollow">设计建筑</a>-->
        </div>
        <div class="category-list text-center show992 wow fadeInUp">
            <div class="btn-group">
                <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown"
                        aria-haspopup="true" aria-expanded="false">
                    成功案例
                    <span class="caret">
                            </span>
                </button>
                <ul class="dropdown-menu">
                    <li>
                        <a href="#" ​ cid="6" rel="nofollow">
                            金融机构
                        </a>
                    </li>
                    <li>
                        <a href="#" ​ cid="6" rel="nofollow">
                            行政事业单位
                        </a>
                    </li>
                    <li>
                        <a href="#" ​ cid="6" rel="nofollow">
                            服务行业
                        </a>
                    </li>
                    <li>
                        <a href="#" ​ cid="6" rel="nofollow">
                            工业领域
                        </a>
                    </li>
                    <li>
                        <a href="#" ​ cid="6" rel="nofollow">
                            流通领域
                        </a>
                    </li>
                    <!--<li><a href="#"​ cid="7" rel="nofollow">餐饮美食</a></li>
                    <li><a href="#"​ cid="9" rel="nofollow">设计建筑</a></li>-->
                </ul>
            </div>
        </div>
        <div class="products-bg trans">
            <div class="wrap">
                <div id="products-box" class="over">
                    <div class="products-list relative fz0 trans">
                        <div class="item inline-block absolute wow fadeInUp" cid="0" status="on">
                            <div class="main trans">
                                <div class="cover scale relative">
                                    <img src="picture/notebook.png" alt="喜聘人力与移动签约" class="trans scale-img max-w100">
                                    <div class="img absolute text-center fz0">
                                        <img src="picture/1-1g009143133218.jpg" alt="喜聘人力与移动签约" class="trans scale-img">
                                    </div>
                                </div>
                                <div class="info clean">
                                    <div class="left fl">
                                        <div class="name">
                                            喜聘人力与移动签约
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="mask trans">
                            </div>
                        </div>
                        <div class="item inline-block absolute wow fadeInUp" cid="0" status="on">
                            <div class="main trans">
                                <div class="cover scale relative">
                                    <img src="picture/notebook.png" alt="喜聘人力与移动签约" class="trans scale-img max-w100">
                                    <div class="img absolute text-center fz0">
                                        <img src="picture/1-1g009143a80-l.jpg" alt="喜聘人力与移动签约" class="trans scale-img">
                                    </div>
                                </div>
                                <div class="info clean">
                                    <div class="left fl">
                                        <div class="name">
                                            喜聘人力与移动签约
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="mask trans">
                            </div>

                        </div>
                        <div class="item inline-block absolute wow fadeInUp" cid="0" status="on">
                            <div class="main trans">
                                <div class="cover scale relative">
                                    <img src="picture/notebook.png" alt="喜聘人力与移动签约" class="trans scale-img max-w100">
                                    <div class="img absolute text-center fz0">
                                        <img src="picture/1-1g0091436390-l.jpg" alt="喜聘人力与移动签约" class="trans scale-img">
                                    </div>
                                </div>
                                <div class="info clean">
                                    <div class="left fl">
                                        <div class="name">
                                            喜聘人力与移动签约
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="mask trans">
                            </div>
                        </div>

                    </div>
                    <div class="box-button text-center fz0 wow fadeInUp">
                        <!--<a href="#"​ class="prev button inline-block trans" rel="nofollow"><i class="fa fa-chevron-left trans middle"></i></a>-->
                        <a href="#" ​ class="more-list inline-block trans">
                            <i class="trans middle relative">
                            </i>
                        </a>
                        <!--<a href="#"​ class="next button inline-block trans" rel="nofollow"><i class="fa fa-chevron-right trans middle"></i></a>-->
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="blank15">
    </div>
    <div class="blank15">
    </div>
    <div class="index-cooperation wrap">
        <div class="index-title text-center wow fadeInUp">
            合作
        </div>
        <div class="index-brief text-center wow fadeInUp">
            服务了哪些客户很重要 用心 更重要！
        </div>
        <div class="blank20">
        </div>
        <div class="cooperation-box s5 relative hide768 wow fadeInUp">
            <div class="bd over">
                <div class="bar trans relative fz0 nowrap">
                    <div class="item inline-block border-box trans">
                        <a class="text-center block border-box trans fz0 grayscale" title="周大生"
                           rel="nofollow">
                            <img src="picture/1-1f92z944060-l.jpg" alt="周大生"
                                 class="max-w100 max-h100 middle grayscale-img trans">
                            <span class="middle-span">
                                    </span>
                        </a>
                    </div>
                    <div class="item inline-block border-box trans">
                        <a class="text-center block border-box trans fz0 grayscale" title="环保"
                           rel="nofollow">
                            <img src="picture/1-1f92z943130-l.jpg" alt="环保"
                                 class="max-w100 max-h100 middle grayscale-img trans">
                            <span class="middle-span">
                                    </span>
                        </a>
                    </div>
                    <div class="item inline-block border-box trans">
                        <a class="text-center block border-box trans fz0 grayscale" title="tony"
                           rel="nofollow">
                            <img src="picture/1-1f92z942530-l.jpg" alt="tony"
                                 class="max-w100 max-h100 middle grayscale-img trans">
                            <span class="middle-span">
                                    </span>
                        </a>
                    </div>
                    <div class="item inline-block border-box trans">
                        <a class="text-center block border-box trans fz0 grayscale" title="7度"
                           rel="nofollow">
                            <img src="picture/1-1f92z942410-l.jpg" alt="7度"
                                 class="max-w100 max-h100 middle grayscale-img trans">
                            <span class="middle-span">
                                    </span>
                        </a>
                    </div>
                    <div class="item inline-block border-box trans">
                        <a class="text-center block border-box trans fz0 grayscale" title="平安"
                           rel="nofollow">
                            <img src="picture/1-1f92z942280-l.jpg" alt="平安"
                                 class="max-w100 max-h100 middle grayscale-img trans">
                            <span class="middle-span">
                                    </span>
                        </a>
                    </div>
                    <div class="item inline-block border-box trans">
                        <a class="text-center block border-box trans fz0 grayscale" title="福特"
                           rel="nofollow">
                            <img src="picture/1-1f92z942160-l.jpg" alt="福特"
                                 class="max-w100 max-h100 middle grayscale-img trans">
                            <span class="middle-span">
                                    </span>
                        </a>
                    </div>
                    <div class="item inline-block border-box trans">
                        <a class="text-center block border-box trans fz0 grayscale" title="北大"
                           rel="nofollow">
                            <img src="picture/1-1f92z942010-l.jpg" alt="北大"
                                 class="max-w100 max-h100 middle grayscale-img trans">
                            <span class="middle-span">
                                    </span>
                        </a>
                    </div>
                    <div class="item inline-block border-box trans">
                        <a class="text-center block border-box trans fz0 grayscale" title="颜色"
                           rel="nofollow">
                            <img src="picture/1-1f92z941470-l.jpg" alt="颜色"
                                 class="max-w100 max-h100 middle grayscale-img trans">
                            <span class="middle-span">
                                    </span>
                        </a>
                    </div>
                    <div class="item inline-block border-box trans">
                        <a class="text-center block border-box trans fz0 grayscale" title="激光"
                           rel="nofollow">
                            <img src="picture/1-1f92z941330-l.jpg" alt="激光"
                                 class="max-w100 max-h100 middle grayscale-img trans">
                            <span class="middle-span">
                                    </span>
                        </a>
                    </div>
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
        <div class="cooperation-box s3 relative show768 wow fadeInUp">
            <div class="bd over">
                <div class="bar trans relative fz0 nowrap">
                    <div class="item inline-block border-box trans">
                        <a class="text-center block border-box trans fz0" title="周大生" rel="nofollow">
                            <img src="picture/1-1f92z944060-l.jpg" alt="周大生" class="max-w100 max-h100 middle">
                            <span class="middle-span">
                                    </span>
                        </a>
                    </div>
                    <div class="item inline-block border-box trans">
                        <a class="text-center block border-box trans fz0" title="环保" rel="nofollow">
                            <img src="picture/1-1f92z943130-l.jpg" alt="环保" class="max-w100 max-h100 middle">
                            <span class="middle-span">
                                    </span>
                        </a>
                    </div>
                    <div class="item inline-block border-box trans">
                        <a class="text-center block border-box trans fz0" title="tony" rel="nofollow">
                            <img src="picture/1-1f92z942530-l.jpg" alt="tony" class="max-w100 max-h100 middle">
                            <span class="middle-span">
                                    </span>
                        </a>
                    </div>
                    <div class="item inline-block border-box trans">
                        <a class="text-center block border-box trans fz0" title="7度" rel="nofollow">
                            <img src="picture/1-1f92z942410-l.jpg" alt="7度" class="max-w100 max-h100 middle">
                            <span class="middle-span">
                                    </span>
                        </a>
                    </div>
                    <div class="item inline-block border-box trans">
                        <a class="text-center block border-box trans fz0" title="平安" rel="nofollow">
                            <img src="picture/1-1f92z942280-l.jpg" alt="平安" class="max-w100 max-h100 middle">
                            <span class="middle-span">
                                    </span>
                        </a>
                    </div>
                    <div class="item inline-block border-box trans">
                        <a class="text-center block border-box trans fz0" title="福特" rel="nofollow">
                            <img src="picture/1-1f92z942160-l.jpg" alt="福特" class="max-w100 max-h100 middle">
                            <span class="middle-span">
                                    </span>
                        </a>
                    </div>
                    <div class="item inline-block border-box trans">
                        <a class="text-center block border-box trans fz0" title="北大" rel="nofollow">
                            <img src="picture/1-1f92z942010-l.jpg" alt="北大" class="max-w100 max-h100 middle">
                            <span class="middle-span">
                                    </span>
                        </a>
                    </div>
                    <div class="item inline-block border-box trans">
                        <a class="text-center block border-box trans fz0" title="颜色" rel="nofollow">
                            <img src="picture/1-1f92z941470-l.jpg" alt="颜色" class="max-w100 max-h100 middle">
                            <span class="middle-span">
                                    </span>
                        </a>
                    </div>
                    <div class="item inline-block border-box trans">
                        <a class="text-center block border-box trans fz0" title="激光" rel="nofollow">
                            <img src="picture/1-1f92z941330-l.jpg" alt="激光" class="max-w100 max-h100 middle">
                            <span class="middle-span">
                                    </span>
                        </a>
                    </div>
                    <div class="item inline-block border-box trans">
                        <a class="text-center block border-box trans fz0" title="同学会" rel="nofollow">
                            <img src="picture/1-1f92z941160-l.jpg" alt="同学会" class="max-w100 max-h100 middle">
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
            新闻
        </div>
        <div class="index-brief text-center wow fadeInUp">
            智能建站、零基础建站
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
                        <form name="formsearch" class="support-search fl relative" action="#">
                            <input type="hidden" name="kwtype" value="0"/>
                            <input type="text" class="text block border-box" name="q" value="" placeholder="在哪里设置网站关键词">
                            <input type="submit" class="hide" value="">
                        </form>
                        <div class="button fr text-center">
                            <!--<a href="#"​ class="play ico trans inline-block middle">视频</a>-->
                            <div class="line inline-block middle">
                            </div>
                            <a href="#" ​ class="file ico trans inline-block middle">
                                新闻
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="tutorial-list clean wrap">
            <div class='item wow fadeInUp fl' class="item wow fadeInUp fl">
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
                        <a href="#" ​ class="trans">
                            为什么企业要建多国语言
                        </a>
                    </div>
                    <div class="brief over">
                        互联网在不断发展壮大，已成为企业和个人寻求生意机会，对商品、服务和信息进行了解的首选方式。从站在增强一个企业竞争优势的角度看，建设一个多语言网站是不断增加客户数量...
                    </div>
                </div>
            </div>
            <div class='item wow fadeInUp fr' class="item wow fadeInUp fl">
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
                        <a href="#" ​ class="trans">
                            什么是伪静态？伪静态有
                        </a>
                    </div>
                    <div class="brief over">
                        伪静态是相对真实静态来讲的，真实静态会生成一个html或htm后缀的文件，访客能够访问到真实存在的静态页面，而伪静态则没有生成实体静态页面文件，而仅仅是以.html一类的静态页面...
                    </div>
                </div>
            </div>
            <div class='item wow fadeInUp fl' class="item wow fadeInUp fl">
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
                        <a href="#" ​ class="trans">
                            企业建站选择主机和产品
                        </a>
                    </div>
                    <div class="brief over">
                        个人建站和企业建站是两个不同的，个人建站我们则是需要考虑成本的支出，比较大部分个人建站仅仅是用于兴趣爱好，对于空间和服务的要求可能不是很高的，而企业建站则是不同了...
                    </div>
                </div>
            </div>
            <div class='item wow fadeInUp fr' class="item wow fadeInUp fl">
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
                        <a href="#" ​ class="trans">
                            SEO网站的基本术语
                        </a>
                    </div>
                    <div class="brief over">
                        SEO SEO就是Search Engine Optimization的缩写,中文就是搜索引擎优化。 PR
                        值全称为PageRank(网页级别）,是Google用于用来标识网页的等级、重要性的一种方法，是Google用来衡量一个网站的好坏的重...
                    </div>
                </div>
            </div>
        </div>
        <div class="blank20">
        </div>
        <div class="blank20">
        </div>
        <div class="blank25">
        </div>
        <div class="text-center">
            <div class="try-button-box wrap fz0">
                <a href="#" ​ target="_blank"
                   class="button inline-block text-center trans wow fadeInUp">
                    我需要服务
                </a>
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
    <%@include file="/xipin/footer.jsp" %>
</body>
</html>
