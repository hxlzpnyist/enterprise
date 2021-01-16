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
    <script>
        jQuery(window).scrollTop(0);
        jQuery('html,body').scrollTop(0);
        new WOW().init({
            mobile: false
        });

        var path = '<%=request.getContextPath()%>';
        var pageSize = 4;
        function queryCase(pageNum) {
            $.ajax({
                type: 'GET',
                url: "<%=request.getContextPath()%>/xipin/cases",
                data: {
                    "pageNum" : pageNum,
                    "pageSize" : pageSize
                },
                success: function (data, textStatus, jqXHR) {
                    console.log(data);

                    displayCase(data);
                },
                dataType: "json"
            });
        }

        function displayCase(data) {
            var $list = $(".instance-list");
            var content = '';
            var list = data.list;

            for (var i = 0; i < list.length; i++) {
                var ca = list[i];

                content += '<div class="item border-box over wow fadeInUp '+ ((i % 2) == 0 ? "fl" : "fr") +'"> ' +
                    '<div class="relative clean"> ' +
                        '<div class="cover fl relative"> ' +
                            '<img src="'+ path +'/xipin/picture/notebook.png" alt="科纳网络" class="trans max-w100" ondragstart="return false;"> ' +
                        '<div class="img absolute text-center fz0"> ' +
                            '<img src="'+ path + '/' + ca.image +'" alt="科纳网络" class="trans" ondragstart="return false;"> ' +
                        '</div> ' +
                    '</div> ' +
                    '<div class="info fl"> ' +
                        '<div class="clean"> ' +

                            '<div class="title fl"> ' +
                                '<div class="name">'+ ca.title +'</div> ' +
                                '<div class="date">合作时间: '+ ca.viewTime +' </div> ' +
                            '</div> ' +
                        '</div> ' +
                        '<div class="brief over">' + ca.content +
                        '</div> ' +
                        '<a href="'+path+'/xipin/case/info?id='+ca.id+'"  class="view block text-center" rel="nofollow">查看内容 </a> ' +
                    '</div> </div> </div>';
            }

            var page = ''

            var currentPage = data.pageNum;
            var totalPage = data.pagerSize;
            if (currentPage > 0) {
                page += '<a class="page_item" href="javascript:void(0);" onclick="queryCase('+ (currentPage - 1) +')">上一页 </a>';
            }

            page += '<font class="page_item_current">'+ (currentPage + 1) +'</font>';

            if (currentPage + 1 < totalPage) {
                page += '<a class="page_item" href="javascript:void(0);" onclick="queryCase('+ (currentPage + 1) +')">下一页</a>';
            }

            $list.html(content);
            $("#turn_page").html(page);
        }

        $(function () {
            queryCase(0, "");

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
                    <img src="<%=request.getContextPath()%>/xipin/picture/44c5a1b00c.jpg" alt="" class="max-w100">
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
    <div class="bgf3">
        <div id="instance" class="wrap clean">
            <div class="instance-list clean">

                <div class='item border-box over wow fadeInUp fr'>
                    <div class="relative clean">
                        <div class="cover fl relative">
                            <img src="picture/notebook.png" alt="威廉科技" class="trans max-w100" ondragstart="return false;">
                            <div class="img absolute text-center fz0">
                                <img src="picture/1-1g0091605330-l.jpg" alt="威廉科技" class="trans" ondragstart="return false;">
                            </div>
                        </div>
                        <div class="info fl">
                            <div class="clean">
                                <div class="logo fl text-center over fz0">
                                    <img src="picture/1-1g0091605330-l.jpg" alt="威廉科技" class="middle max-w100 inline-block">
                                    <span class="middle-span">
                                            </span>
                                </div>
                                <div class="title fl">
                                    <div class="name">
                                        威廉科技
                                    </div>
                                    <div class="date">
                                        合作时间:2017/10/09
                                    </div>
                                </div>
                            </div>
                            <div class="brief over">
                                跃威科技是一家成立于2007年的高新技术企业，总部位于中国xx。公司主要致力于数字影音产品的研发、生产、销售。在USB、视频延长等方面有特殊专长，
                                拥有多项国家发明专利。公司...
                            </div>
                            <a href="caseshow.html"​ ​ class="view block text-center" rel="nofollow">
                                查看内容
                            </a>
                        </div>
                    </div>
                </div>
                <div class='item border-box over wow fadeInUp fl'>
                    <div class="relative clean">
                        <div class="cover fl relative">
                            <img src="picture/notebook.png" alt="xx环保" class="trans max-w100" ondragstart="return false;">
                            <div class="img absolute text-center fz0">
                                <img src="picture/1-1g0091605100-l.jpg" alt="xx环保" class="trans" ondragstart="return false;">
                            </div>
                        </div>
                        <div class="info fl">
                            <div class="clean">
                                <div class="logo fl text-center over fz0">
                                    <img src="picture/1-1g0091605100-l.jpg" alt="xx环保" class="middle max-w100 inline-block">
                                    <span class="middle-span">
                                            </span>
                                </div>
                                <div class="title fl">
                                    <div class="name">
                                        xx环保
                                    </div>
                                    <div class="date">
                                        合作时间:2017/10/09
                                    </div>
                                </div>
                            </div>
                            <div class="brief over">
                                xx市能源环保有限公司（简称深能环保）成立于1997年，是由xx能源集团股份有限公司控股的中国大型垃圾焚烧发电专业化公司。...
                            </div>
                            <a href="caseshow.html"​ ​ class="view block text-center" rel="nofollow">
                                查看内容
                            </a>
                        </div>
                    </div>
                </div>
                <div class='item border-box over wow fadeInUp fr'>
                    <div class="relative clean">
                        <div class="cover fl relative">
                            <img src="picture/notebook.png" alt="福特自行车" class="trans max-w100" ondragstart="return false;">
                            <div class="img absolute text-center fz0">
                                <img src="picture/1-1g0091604420-l.jpg" alt="福特自行车" class="trans" ondragstart="return false;">
                            </div>
                        </div>
                        <div class="info fl">
                            <div class="clean">
                                <div class="logo fl text-center over fz0">
                                    <img src="picture/1-1g0091604420-l.jpg" alt="福特自行车" class="middle max-w100 inline-block">
                                    <span class="middle-span">
                                            </span>
                                </div>
                                <div class="title fl">
                                    <div class="name">
                                        福特自行车
                                    </div>
                                    <div class="date">
                                        合作时间:2017/10/09
                                    </div>
                                </div>
                            </div>
                            <div class="brief over">
                                福特（Ford）自行车是世界著名汽车品牌美国福特（Ford）汽车旗下的延伸产品，它的第一批产品于2014年1月研发成功，并开始投入生产，2014年5月正式在中国大陆全面上市。...
                            </div>
                            <a href="caseshow.html"​ ​ class="view block text-center" rel="nofollow">
                                查看内容
                            </a>
                        </div>
                    </div>
                </div>
                <div class='item border-box over wow fadeInUp fl'>
                    <div class="relative clean">
                        <div class="cover fl relative">
                            <img src="picture/notebook.png" alt="无人机" class="trans max-w100" ondragstart="return false;">
                            <div class="img absolute text-center fz0">
                                <img src="picture/1-1g0091604160-l.jpg" alt="无人机" class="trans" ondragstart="return false;">
                            </div>
                        </div>
                        <div class="info fl">
                            <div class="clean">
                                <div class="logo fl text-center over fz0">
                                    <img src="picture/1-1g0091604160-l.jpg" alt="无人机" class="middle max-w100 inline-block">
                                    <span class="middle-span">
                                            </span>
                                </div>
                                <div class="title fl">
                                    <div class="name">
                                        无人机
                                    </div>
                                    <div class="date">
                                        合作时间:2017/10/09
                                    </div>
                                </div>
                            </div>
                            <div class="brief over">
                                xx智航无人机有限公司，总部位于xx南山科技园，是集专业研发，生产，销售为一体的全球领先无人机企业，是国际顶尖的无人机智能飞控系统，高端影视航拍云台，高清图传的开...
                            </div>
                            <a href="caseshow.html"​ ​ class="view block text-center" rel="nofollow">
                                查看内容
                            </a>
                        </div>
                    </div>
                </div>
                <div class='item border-box over wow fadeInUp fr'>
                    <div class="relative clean">
                        <div class="cover fl relative">
                            <img src="picture/notebook.png" alt="东莞电子" class="trans max-w100" ondragstart="return false;">
                            <div class="img absolute text-center fz0">
                                <img src="picture/1-1g0091603340-l.jpg" alt="东莞电子" class="trans" ondragstart="return false;">
                            </div>
                        </div>
                        <div class="info fl">
                            <div class="clean">
                                <div class="logo fl text-center over fz0">
                                    <img src="picture/1-1g0091603340-l.jpg" alt="东莞电子" class="middle max-w100 inline-block">
                                    <span class="middle-span">
                                            </span>
                                </div>
                                <div class="title fl">
                                    <div class="name">
                                        东莞电子
                                    </div>
                                    <div class="date">
                                        合作时间:2017/10/09
                                    </div>
                                </div>
                            </div>
                            <div class="brief over">
                                xx市南方精诚电子有限公司是一家高精密连接器的专业制造商。随着市场需求，公司致力于圆形快速推拉自锁精密的连接器研发设计、制造、销售和技术服务、技术支持。呈现出高技...
                            </div>
                            <a href="caseshow.html"​ ​ class="view block text-center" rel="nofollow">
                                查看内容
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <div id="turn_page" class="wow fadeInUp" first last>
                        <span class="pageinfo">
                            共
                            <strong>
                                1
                            </strong>
                            页
                            <strong>
                                6
                            </strong>
                            条记录
                        </span>
            </div>
            <div class="blank20">
            </div>
            <div class="blank20">
            </div>
            <div class="blank20">
            </div>
        </div>
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
