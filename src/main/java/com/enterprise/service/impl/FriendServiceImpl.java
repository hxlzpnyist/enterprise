package com.enterprise.service.impl;

import com.enterprise.dao.FriendDao;
import com.enterprise.dao.ServersManage;
import com.enterprise.entity.Friend;
import com.enterprise.service.FriendService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("friendService")
public class FriendServiceImpl extends ServersManage<Friend, FriendDao> implements FriendService {

    @Override
    public Friend selectPrevious(int id) {
        return dao.selectPrevious(id);
    }

    @Override
    public Friend selectNext(int id) {
        return dao.selectNext(id);
    }

    @Override
    @Resource(name="friendDao")
    public void setDao(FriendDao friendDao) {
        this.dao = friendDao;
    }
}
