package com.enterprise.dao.impl;

import com.enterprise.dao.BaseDao;
import com.enterprise.dao.CaseTypeDao;
import com.enterprise.entity.CaseType;
import com.enterprise.entity.page.PageModel;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.util.List;

@Repository("caseTypeDao")
public class CaseTypeDaoImpl implements CaseTypeDao {
    @Resource
    private BaseDao dao;

    public void setDao(BaseDao dao) {
        this.dao = dao;
    }

    @Override
    public int insert(CaseType caseType) {
        return dao.insert("caseType.insert",caseType);
    }

    @Override
    public int delete(CaseType caseType) {
        return dao.delete("caseType.delete",caseType);
    }

    @Override
    public int update(CaseType caseType) {
        return dao.update("caseType.update",caseType);
    }

    @Override
    public CaseType selectOne(CaseType caseType) {
        return (CaseType) dao.selectOne("caseType.selectOne",caseType);
    }

    @Override
    public PageModel selectPageList(CaseType caseType) {
        return dao.selectPageList("caseType.selectPageList","caseType.selectPageCount",caseType);
    }

    @Override
    public List<CaseType> selectList(CaseType caseType) {
        return dao.selectList("caseType.selectList",caseType);
    }

    @Override
    public int deleteById(int id) {
        return dao.delete("caseType.deleteById",id);
    }

    @Override
    public CaseType selectById(int id) {
        return (CaseType) dao.selectOne("caseType.selectById",id);
    }

    @Override
    public CaseType selectPrevious(int id) {
        return (CaseType) dao.selectOne("caseType.selectPrevious",id);
    }

    @Override
    public CaseType selectNext(int id) {
        return (CaseType) dao.selectOne("caseType.selectNext",id);
    }
}
