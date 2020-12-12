package com.enterprise.dao;


import com.enterprise.entity.News;

public interface NewsDao extends DaoManage<News>{

    News selectPrevious(int id);

    News selectNext(int id);
}
