package com.enterprise.dao.impl;

import com.enterprise.dao.BaseDao;
import com.enterprise.dao.CaseDao;
import com.enterprise.dao.NewsDao;
import com.enterprise.entity.Case;
import com.enterprise.entity.Case;
import com.enterprise.entity.page.PageModel;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.util.List;

@Repository("caseDao")
public class CaseDaoImpl implements CaseDao {
    @Resource
    private BaseDao dao;

    public void setDao(BaseDao dao) {
        this.dao = dao;
    }

    @Override
    public int insert(Case c) {
        return dao.insert("case.insert",c);
    }

    @Override
    public int delete(Case c) {
        return dao.delete("case.delete",c);
    }

    @Override
    public int update(Case c) {
        return dao.update("case.update",c);
    }

    @Override
    public Case selectOne(Case c) {
        return (Case) dao.selectOne("case.selectOne",c);
    }

    @Override
    public PageModel selectPageList(Case c) {
        return dao.selectPageList("case.selectPageList","case.selectPageCount",c);
    }

    @Override
    public List<Case> selectList(Case c) {
        return dao.selectList("case.selectList",c);
    }

    @Override
    public int deleteById(int id) {
        return dao.delete("case.deleteById",id);
    }

    @Override
    public Case selectById(int id) {
        return (Case) dao.selectOne("case.selectById",id);
    }

    @Override
    public Case selectPrevious(int id) {
        return (Case) dao.selectOne("case.selectPrevious",id);
    }

    @Override
    public Case selectNext(int id) {
        return (Case) dao.selectOne("case.selectNext",id);
    }
}
