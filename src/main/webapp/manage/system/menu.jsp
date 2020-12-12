<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.Collection" %>
	<%@page import="com.enterprise.entity.MenuItem" %>
	<%@page import="com.enterprise.entity.Menu" %>
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
%>

        <ul class="nav nav-list" id="side-menu">

            <!-- 喜聘导航 -->
            <li class="menu-item active">
                <a id="item_1"  href="<%=path%><%="" %>" >
                    <i class="icon-desktop"></i>
                    <span class="menu-text">首页</span>
                </a>
            </li>
            <li class="menu-item">
                <a id="item_2"  href="<%=path%><%="" %>" >
                    <i class="icon-edit"></i>
                    <span class="menu-text">内容管理</span>
                </a>
                <ul class="submenu">
                    <li class="menu-item active" >
                        <a id="item_news"  href="<%=path%>/manage/news/selectList" >
                            <i class="icon-double-angle-right"></i>
                            新闻管理
                        </a>
                    </li>
                    <li class="menu-item active" >
                        <a id="item_case_type"  href="<%=path%>/manage/caseType/selectList" >
                            <i class="icon-double-angle-right"></i>
                            案例分类管理
                        </a>
                    </li>
                </ul>
            </li>
            <li class="menu-item">
                <a id="item_3"  href="<%=path%><%="" %>" >
                    <i class="icon-cog bigger-150"></i>
                    <span class="menu-text">系统管理</span>
                </a>
            </li>

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
            <%} }%>
        </ul>

