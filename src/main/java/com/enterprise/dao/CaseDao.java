package com.enterprise.dao;


import com.enterprise.entity.Case;

public interface CaseDao extends DaoManage<Case>{

    Case selectPrevious(int id);

    Case selectNext(int id);
}
