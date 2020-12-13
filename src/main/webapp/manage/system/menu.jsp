<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.Collection" %>
	<%@page import="com.enterprise.entity.MenuItem" %>
	<%@page import="com.enterprise.entity.Menu" %>
<%@ page import="java.util.Arrays" %>
<script>
    $(function(){
        $('#side-menu').metisMenu();
        var parent = $("li.menu-item.active").parent();
        if(parent.is("ul.submenu")){
            parent.addClass("in").parent().addClass("active open");
        }
    });
</script>
<%
    Collection<MenuItem> menus = (Collection<MenuItem>)session.getAttribute("userMenus");

    MenuItem newsMenu = new MenuItem("/manage/news/selectList", "新闻管理", null);
    MenuItem caseTypeMenu = new MenuItem("/manage/caseType/selectList", "案例分类管理", null);
    MenuItem caseMenu = new MenuItem("/manage/case/selectList", "案例管理", null);
    MenuItem businessMenu = new MenuItem("/manage/business/selectList", "业务管理", null);
    MenuItem indexImgMenu = new MenuItem("/manage/indexImg/selectList", "门户滚动图片", null);
    MenuItem aboutMenu = new MenuItem("/manage/about/selectList", "关于我们", null);
    MenuItem aboutUserMenu = new MenuItem("/manage/aboutUser/selectList", "核心成员", null);
    MenuItem friendMenu = new MenuItem("/manage/friend/selectList", "合作伙伴", null);

    Collection<MenuItem> managerMenus = Arrays.asList(newsMenu, caseTypeMenu, caseMenu, businessMenu, indexImgMenu, aboutMenu, aboutUserMenu, friendMenu);

    MenuItem adminMenu = new MenuItem("/manage/user/selectList", "网站管理员", null);
    MenuItem logMenu = new MenuItem("/manage/systemlog/selectList", "日志管理", null);

    Collection<MenuItem> systemMenus = Arrays.asList(adminMenu, logMenu);


%>

        <ul class="nav nav-list" id="side-menu">

            <!-- 喜聘导航 -->
            <li class="menu-item <%if(getServletInfo().equals("首页")){%>active<%}%>">
                <a id="item_1"  href="<%=path%>/manage/user/home" >
                    <i class="icon-desktop"></i>
                    <span class="menu-text">首页</span>
                </a>
            </li>
            <li class="menu-item">
                <a id="item_2"  href="<%=path%><%="" %>" >
                    <i class="icon-edit"></i>
                    <span class="menu-text">内容管理</span>
                    <b class="arrow icon-angle-down"></b>
                </a>
                <ul class="submenu">

                    <%for(MenuItem menuItem : managerMenus){ %>

                    <li class="menu-item <%if(getServletInfo().equals(menuItem.getName())){%>active<%}%>" >
                        <a id="item_news"  href="<%=path%><%=menuItem.getUrl()%>" >
                            <i class="icon-double-angle-right"></i>
                            <%=menuItem.getName()%>
                        </a>
                    </li>
                    <%} %>

                </ul>
            </li>
            <li class="menu-item">
                <a id="item_3"  href="<%=path%><%="" %>" >
                    <i class="icon-cog bigger-150"></i>
                    <span class="menu-text">系统管理</span>
                    <b class="arrow icon-angle-down"></b>
                </a>
                <ul class="submenu">

                    <%for(MenuItem menuItem : systemMenus){ %>

                    <li class="menu-item <%if(getServletInfo().equals(menuItem.getName())){%>active<%}%>" >
                        <a id="item_"  href="<%=path%><%=menuItem.getUrl()%>" >
                            <i class="icon-double-angle-right"></i>
                            <%=menuItem.getName()%>
                        </a>
                    </li>
                    <%} %>

                </ul>
            </li>
<%--
            <%if(menus!=null && menus.size()>0){
                for(MenuItem menu:menus){ %>
            <li class="menu-item <%if(getServletInfo().equals(menu.getName())){%>active<%}%>">
                <a id="item_<%=menu.getPid() %>_<%=menu.getId() %>"  href="<%=path%><%=menu.getUrl() %>" >
                    <i class="<%=menu.getIcon() %>"></i>
                    <span class="menu-text"><%=menu.getName() %></span>

                <%if(menu.getChildren()!=null){%>
                    <b class="arrow icon-angle-down"></b>
                <%} %>
                </a>
                <%if(menu.getChildren()!=null){%>
                <ul class="submenu">
                    <% for(MenuItem menuChild : menu.getChildren()){ %>
                    <li  class="menu-item <%if(getServletInfo().equals(menuChild.getName())){%>active<%}%>" >
                        <a id="item_<%=menuChild.getPid() %>_<%=menuChild.getId() %>"  href="<%=path%><%=menuChild.getUrl() %>" >
                            <i class="icon-double-angle-right"></i>
                            <%=menuChild.getName() %>
                        </a>
                    </li>
                    <%} %>
                </ul>
                <%} %>
            </li>
            <%} }%>--%>
        </ul>

