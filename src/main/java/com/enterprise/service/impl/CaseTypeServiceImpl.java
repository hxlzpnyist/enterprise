package com.enterprise.service.impl;

import com.enterprise.dao.CaseTypeDao;
import com.enterprise.dao.NewsDao;
import com.enterprise.dao.ServersManage;
import com.enterprise.entity.CaseType;
import com.enterprise.entity.News;
import com.enterprise.service.CaseTypeService;
import com.enterprise.service.NewsService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("caseTypeService")
public class CaseTypeServiceImpl extends ServersManage<CaseType, CaseTypeDao> implements CaseTypeService {

    @Override
    public CaseType selectPrevious(int id) {
        return dao.selectPrevious(id);
    }

    @Override
    public CaseType selectNext(int id) {
        return dao.selectNext(id);
    }

    @Override
    @Resource(name="caseTypeDao")
    public void setDao(CaseTypeDao caseTypeDao) {
        this.dao = caseTypeDao;
    }
}
