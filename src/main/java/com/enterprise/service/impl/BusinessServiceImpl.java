package com.enterprise.service.impl;

import com.enterprise.dao.BusinessDao;
import com.enterprise.dao.NewsDao;
import com.enterprise.dao.ServersManage;
import com.enterprise.entity.Business;
import com.enterprise.entity.News;
import com.enterprise.service.BusinessService;
import com.enterprise.service.NewsService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("businessService")
public class BusinessServiceImpl extends ServersManage<Business, BusinessDao> implements BusinessService {

    @Override
    public Business selectPrevious(int id) {
        return dao.selectPrevious(id);
    }

    @Override
    public Business selectNext(int id) {
        return dao.selectNext(id);
    }

    @Override
    @Resource(name="businessDao")
    public void setDao(BusinessDao businessDao) {
        this.dao = businessDao;
    }
}
