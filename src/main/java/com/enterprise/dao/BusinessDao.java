package com.enterprise.dao;


import com.enterprise.entity.Business;

public interface BusinessDao extends DaoManage<Business>{

    Business selectPrevious(int id);

    Business selectNext(int id);
}
