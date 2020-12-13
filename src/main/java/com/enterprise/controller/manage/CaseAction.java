package com.enterprise.controller.manage;

import com.enterprise.controller.BaseController;
import com.enterprise.entity.Case;
import com.enterprise.service.CaseService;
import com.enterprise.service.Services;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 文章管理Action
 */
@Slf4j
@Controller
@RequestMapping("/manage/case/")
public class CaseAction extends BaseController<Case>{
    private static final String page_toList = "/manage/case/caseList";
    private static final String page_toEdit = "/manage/case/caseEdit";
    private static final String page_toAdd = "/manage/case/caseEdit";
    @Autowired
    private CaseService caseService;

    @Override
    public Services<Case> getService() {
        return caseService;
    }

    private CaseAction(){
        super.page_toList = page_toList;
        super.page_toEdit = page_toEdit;
        super.page_toAdd = page_toAdd;
    }


}
