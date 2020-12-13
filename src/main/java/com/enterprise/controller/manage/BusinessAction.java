package com.enterprise.controller.manage;

import com.enterprise.controller.BaseController;
import com.enterprise.entity.Business;
import com.enterprise.service.BusinessService;
import com.enterprise.service.Services;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 文章管理Action
 */
@Controller
@RequestMapping("/manage/business/")
public class BusinessAction extends BaseController<Business>{
    private static final String page_toList = "/manage/business/businessList";
    private static final String page_toEdit = "/manage/business/businessEdit";
    private static final String page_toAdd = "/manage/business/businessEdit";
    @Autowired
    private BusinessService businessService;

    @Override
    public Services<Business> getService() {
        return businessService;
    }

    private BusinessAction(){
        super.page_toList = page_toList;
        super.page_toEdit = page_toEdit;
        super.page_toAdd = page_toAdd;
    }


}
