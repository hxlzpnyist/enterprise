package com.enterprise.service.impl;

import com.enterprise.dao.NewsDao;
import com.enterprise.dao.ServersManage;
import com.enterprise.entity.News;
import com.enterprise.service.NewsService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("newsService")
public class NewsServiceImpl extends ServersManage<News, NewsDao> implements NewsService {

    @Override
    public News selectPrevious(int id) {
        return dao.selectPrevious(id);
    }

    @Override
    public News selectNext(int id) {
        return dao.selectNext(id);
    }

    @Override
    @Resource(name="newsDao")
    public void setDao(NewsDao newsDao) {
        this.dao = newsDao;
    }
}
