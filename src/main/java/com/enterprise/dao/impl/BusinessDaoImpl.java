package com.enterprise.dao.impl;

import com.enterprise.dao.BaseDao;
import com.enterprise.dao.BusinessDao;
import com.enterprise.dao.NewsDao;
import com.enterprise.entity.Business;
import com.enterprise.entity.News;
import com.enterprise.entity.page.PageModel;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.util.List;

@Repository("businessDao")
public class BusinessDaoImpl implements BusinessDao {
    @Resource
    private BaseDao dao;

    public void setDao(BaseDao dao) {
        this.dao = dao;
    }

    @Override
    public int insert(Business business) {
        return dao.insert("business.insert",business);
    }

    @Override
    public int delete(Business business) {
        return dao.delete("business.delete",business);
    }

    @Override
    public int update(Business business) {
        return dao.update("business.update",business);
    }

    @Override
    public Business selectOne(Business business) {
        return (Business) dao.selectOne("business.selectOne",business);
    }

    @Override
    public PageModel selectPageList(Business business) {
        return dao.selectPageList("business.selectPageList","business.selectPageCount",business);
    }

    @Override
    public List<Business> selectList(Business business) {
        return dao.selectList("business.selectList",business);
    }

    @Override
    public int deleteById(int id) {
        return dao.delete("business.deleteById",id);
    }

    @Override
    public Business selectById(int id) {
        return (Business) dao.selectOne("business.selectById",id);
    }

    @Override
    public Business selectPrevious(int id) {
        return (Business) dao.selectOne("business.selectPrevious",id);
    }

    @Override
    public Business selectNext(int id) {
        return (Business) dao.selectOne("business.selectNext",id);
    }
}
