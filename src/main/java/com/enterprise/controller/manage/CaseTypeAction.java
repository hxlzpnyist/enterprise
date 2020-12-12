package com.enterprise.controller.manage;

import com.enterprise.controller.BaseController;
import com.enterprise.entity.CaseType;
import com.enterprise.service.CaseTypeService;
import com.enterprise.service.Services;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 文章管理Action
 */
@Controller
@RequestMapping("/manage/caseType/")
public class CaseTypeAction extends BaseController<CaseType>{
    private static final String page_toList = "/manage/caseType/caseTypeList";
    private static final String page_toEdit = "/manage/caseType/caseTypeEdit";
    private static final String page_toAdd = "/manage/caseType/caseTypeEdit";
    @Autowired
    private CaseTypeService caseTypeService;

    @Override
    public Services<CaseType> getService() {
        return caseTypeService;
    }

    private CaseTypeAction(){
        super.page_toList = page_toList;
        super.page_toEdit = page_toEdit;
        super.page_toAdd = page_toAdd;
    }


}
