package com.enterprise.service;

import com.enterprise.entity.Friend;

public interface FriendService extends Services<Friend>{
    Friend selectPrevious(int id);
    Friend selectNext(int id);
}
