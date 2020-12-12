package com.enterprise.dao;


import com.enterprise.entity.CaseType;

public interface CaseTypeDao extends DaoManage<CaseType>{

    CaseType selectPrevious(int id);

    CaseType selectNext(int id);
}
