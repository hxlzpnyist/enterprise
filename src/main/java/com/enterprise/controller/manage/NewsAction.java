package com.enterprise.controller.manage;

import com.enterprise.controller.BaseController;
import com.enterprise.entity.Article;
import com.enterprise.entity.News;
import com.enterprise.service.ArticleService;
import com.enterprise.service.NewsService;
import com.enterprise.service.Services;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 文章管理Action
 */
@Controller
@RequestMapping("/manage/news/")
public class NewsAction extends BaseController<News>{
    private static final String page_toList = "/manage/news/newsList";
    private static final String page_toEdit = "/manage/news/newsEdit";
    private static final String page_toAdd = "/manage/news/newsEdit";
    @Autowired
    private NewsService newsService;

    @Override
    public Services<News> getService() {
        return newsService;
    }

    private NewsAction(){
        super.page_toList = page_toList;
        super.page_toEdit = page_toEdit;
        super.page_toAdd = page_toAdd;
    }


}
