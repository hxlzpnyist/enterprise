package com.enterprise.service.impl;

import com.enterprise.dao.CaseDao;
import com.enterprise.dao.ServersManage;
import com.enterprise.entity.Case;
import com.enterprise.service.CaseService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("caseService")
public class CaseServiceImpl extends ServersManage<Case, CaseDao> implements CaseService {

    @Override
    public Case selectPrevious(int id) {
        return dao.selectPrevious(id);
    }

    @Override
    public Case selectNext(int id) {
        return dao.selectNext(id);
    }

    @Override
    @Resource(name="caseDao")
    public void setDao(CaseDao caseDao) {
        this.dao = caseDao;
    }
}
