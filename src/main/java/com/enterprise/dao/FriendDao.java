package com.enterprise.dao;


import com.enterprise.entity.Friend;

public interface FriendDao extends DaoManage<Friend>{

    Friend selectPrevious(int id);

    Friend selectNext(int id);
}
