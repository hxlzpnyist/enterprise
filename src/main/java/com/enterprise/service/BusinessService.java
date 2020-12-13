package com.enterprise.service;

import com.enterprise.entity.Business;

public interface BusinessService extends Services<Business>{
    Business selectPrevious(int id);
    Business selectNext(int id);
}
