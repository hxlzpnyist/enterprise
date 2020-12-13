package com.enterprise.controller.manage;

import com.enterprise.controller.BaseController;
import com.enterprise.entity.Case;
import com.enterprise.entity.Friend;
import com.enterprise.service.CaseService;
import com.enterprise.service.FriendService;
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
@RequestMapping("/manage/friend/")
public class FriendAction extends BaseController<Friend>{
    private static final String page_toList = "/manage/friend/friendList";
    private static final String page_toEdit = "/manage/friend/friendEdit";
    private static final String page_toAdd = "/manage/friend/friendEdit";
    @Autowired
    private FriendService friendService;

    @Override
    public Services<Friend> getService() {
        return friendService;
    }

    private FriendAction(){
        super.page_toList = page_toList;
        super.page_toEdit = page_toEdit;
        super.page_toAdd = page_toAdd;
    }


}
