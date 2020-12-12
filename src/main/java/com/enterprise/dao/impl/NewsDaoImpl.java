package com.enterprise.dao.impl;

import com.enterprise.dao.BaseDao;
import com.enterprise.dao.NewsDao;
import com.enterprise.entity.News;
import com.enterprise.entity.page.PageModel;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.util.List;

@Repository("newsDao")
public class NewsDaoImpl implements NewsDao {
    @Resource
    private BaseDao dao;

    public void setDao(BaseDao dao) {
        this.dao = dao;
    }

    @Override
    public int insert(News news) {
        return dao.insert("news.insert",news);
    }

    @Override
    public int delete(News news) {
        return dao.delete("news.delete",news);
    }

    @Override
    public int update(News news) {
        return dao.update("news.update",news);
    }

    @Override
    public News selectOne(News news) {
        return (News) dao.selectOne("news.selectOne",news);
    }

    @Override
    public PageModel selectPageList(News news) {
        return dao.selectPageList("news.selectPageList","news.selectPageCount",news);
    }

    @Override
    public List<News> selectList(News news) {
        return dao.selectList("news.selectList",news);
    }

    @Override
    public int deleteById(int id) {
        return dao.delete("news.deleteById",id);
    }

    @Override
    public News selectById(int id) {
        return (News) dao.selectOne("news.selectById",id);
    }

    @Override
    public News selectPrevious(int id) {
        return (News) dao.selectOne("news.selectPrevious",id);
    }

    @Override
    public News selectNext(int id) {
        return (News) dao.selectOne("news.selectNext",id);
    }
}
