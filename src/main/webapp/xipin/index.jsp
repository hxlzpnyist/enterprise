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
            width: 16%;
            height: 130px;
            padding: 40px;
            float: left
        }

        .animate-box img {
            margin-bottom: 10px;
        }

        .animate-box h3 {
            font-size: 20px;
        }

        @media screen and (max-width: 1500px) and (min-width: 1200px) {
            .animate-box {
                width: 16%;
                height: 130px;
                padding: 40px;
                float: left
            }
        }

        @media screen and (min-width: 800px) and (max-width: 1200px) {
            .animate-box {
                width: 32%;
                height: 140px;
                padding: 40px;
                float: left
            }
        }

        @media screen and (max-width: 800px) {
            .animate-box {
                width: 50%;
                height: 140px;
                padding: 40px;
                float: left
            }
        }

        .yewu_nr { width:1100px; height:auto; padding:10px 0px 30px 0px; margin: 0 auto;}

        .wrap1{width:334px;height:234px;position:relative;overflow:hidden;font-family:arial,sans-serif;border:0; float:left;display:inline;margin-left:25px; margin-top:20px;}
        .wrap1 a{display:block;width:334px;height:234px;text-decoration:none;color:#000}
        .wrap1 img{border:0; transition:1s; -webkit-transition:1s; -o-transition:1s;}
        .wrap1 img:hover { transform:scale(1.2); -webkit-transform:scale(1.2); -o-transform:scale(1.2);}
        .wrap1 i{display:block;width:334px;height:234px;position:absolute;left:0;top:194px;z-index:1;background:#000;filter:alpha(opacity=60);filter:alpha(opacity=60);opacity:.6;-webkit-transition:all .6s ease-in-out}
        .wrap1 p{font-family:"微软雅黑";display:block;width:334px;height:234px;position:absolute;left:0;top:195px;z-index:1;background:0 0;font-size:14px;color:#fff;padding:0;margin:0;line-height:28px;-webkit-transition:all .6s ease-in-out}
        .wrap1 p b{display:block;font-size:18px;color:#FFF;text-align:left;margin:0;padding:0;line-height:36px;padding-left:15px;font-weight:400}
        .wrap1 p span{display:block;padding:0 15px 15px 15px;}
        .wrap1 a:hover{direction:ltr}
        .wrap1 a:hover i{top:0}
        .wrap1 a:hover p{top:0; padding-top:10px;}

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
        <%--<div class="products-bg trans" style="margin:0 auto; width: 90%;text-align:center;">
            <ul style="overflow: hidden;">
                <li class="animate-box fadeInUp animated">
                    <a href="<%=request.getContextPath()%>/xipin/tobusiness?type=校企合作">
                        <img src="<%=request.getContextPath()%>/xipin/picture/service/1.png">
                        <br>
                        <h3>校企合作</h3>
                    </a>
                </li>
                <li class="animate-box fadeInUp animated">
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
                <li class="animate-box fadeInUp animated">
                    <a href="<%=request.getContextPath()%>/xipin/tobusiness?type=外包服务">
                        <img src="<%=request.getContextPath()%>/xipin/picture/service/4.png">
                        <br>
                        <h3>外包服务</h3>
                    </a>
                </li>
                <li class="animate-box fadeInUp animated">
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
        </div>--%>
        <div class="blank15">
        </div>

        <div class="yewu_nr">
            <!--第一个开始-->
            <div class="wrap1"><a href="/business/waibao.aspx" target="_blank" title="业务流程外包"> <img
                    src="<%=request.getContextPath()%>/xipin/picture/service/img.png" width="334" height="234" alt="业务流程外包"> <i></i>
                <p><b>校企合作</b> <span>校企合作是指学校与企业建立的一种合作模式。当前社会竞争激烈，包括教育行业，大中专院校等职业教育院校为谋求自身发展，抓好教育质量，采取与企业合作的方式，有针对性的为企业培养人才，注重人才的实用性与实效性。<br>
        </span></p>
            </a></div>
            <!--第一个结束-->
            <!--第一个开始-->
            <div class="wrap1"><a href="/business/laowu.aspx" target="_blank" title="劳务派遣"> <img
                    src="<%=request.getContextPath()%>/xipin/picture/service/img_1.png" width="334" height="234" alt="劳务派遣"> <i></i>
                <p><b>劳务派遣</b> <span>劳务派遣是指由劳务派遣机构与派遣劳工订立劳动合同，把劳动者派向其他用工单位，再由其用工单位向派遣机构支付一笔服务费用的一种用工形式。英文是Labor Dispatching，又称人力派遣、人才租赁、劳动派遣、劳动力租赁、雇员租赁。<br>
        </span></p>
            </a></div>
            <!--第一个结束-->
            <!--第一个开始-->
            <div class="wrap1"><a href="/business/yuangong.aspx" target="_blank" title="员工培训"> <img
                    src="<%=request.getContextPath()%>/xipin/picture/service/img_2.png" width="334" height="234" alt="员工培训"> <i></i>
                <p><b>代理招聘</b> <span>RPO代理招聘是指招聘流程外包。招聘流程外包服务属于人力资源外包的一种方式，在这种服务中，企业外包的是内部招聘的整个流程，从确定职位描述，到分析用人理念、职位需求、与用人部门负责人沟通，筛选简历，人才测评，面试到录用通知，直至候选人报到的所有环节。<br>
        </span></p>
            </a></div>
            <!--第一个结束-->
            <!--第一个开始-->
            <div class="wrap1"><a href="/business/rlzy.aspx" target="_blank" title="人力资源派遣"> <img
                    src="<%=request.getContextPath()%>/xipin/picture/service/img_3.png" width="334" height="234" alt="人力资源派遣"> <i></i>
                <p><b>灵活用工</b> <span>灵活用工是人才派遣服务领域的成长型产品，它由派遣公司承担全方位的法定雇主责任，在派遣人数确定、派遣周期、派遣人才的筛选方面都非常灵活的一种用工形式。<br>
        </span></p>
            </a></div>
            <!--第一个结束-->
            <!--第一个开始-->
            <div class="wrap1"><a href="/business/zhaopin.aspx" target="_blank" title="人才招聘"> <img
                    src="<%=request.getContextPath()%>/xipin/picture/service/img_4.png" width="334" height="234" alt="人才招聘"> <i></i>
                <p><b>外包服务</b> <span>外包服务就是把人事管理的部分或全部工作外包给一个服务机构来完成，从而达到降低企业人力成本、减轻企业人事压力的一种做法。<br>
        </span></p>
            </a></div>
            <!--第一个结束-->
            <!--第一个开始-->
            <div class="wrap1"><a href="/business/daili.aspx" target="_blank" title="社保代理"> <img
                    src="<%=request.getContextPath()%>/xipin/picture/service/img_5.png" width="334" height="234" alt="社保代理"> <i></i>
                <p><b>人才猎聘</b> <span>高端人才猎聘可以提供中、高级职位及特殊职位人才招聘及专业的相关咨询服务，避免客户与竞争企业直接进行摩擦，也可避免熟人之间难以谈判待遇。<br>
        </span></p>
            </a></div>
            <!--第一个结束-->

            <div class="clear"></div>
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
                                    <img src="<%=request.getContextPath()%>${item.image}" alt="${item.title}"
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
                        <img src="<%=request.getContextPath()%>/xipin/picture/3da6124a3d.jpg" alt=""
                             class="max-w100 block">
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
