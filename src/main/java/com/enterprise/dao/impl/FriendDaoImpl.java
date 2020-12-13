package com.enterprise.dao.impl;

import com.enterprise.dao.BaseDao;
import com.enterprise.dao.FriendDao;
import com.enterprise.entity.Friend;
import com.enterprise.entity.page.PageModel;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.util.List;

@Repository("friendDao")
public class FriendDaoImpl implements FriendDao {
    @Resource
    private BaseDao dao;

    public void setDao(BaseDao dao) {
        this.dao = dao;
    }

    @Override
    public int insert(Friend friend) {
        return dao.insert("friend.insert",friend);
    }

    @Override
    public int delete(Friend friend) {
        return dao.delete("friend.delete",friend);
    }

    @Override
    public int update(Friend friend) {
        return dao.update("friend.update",friend);
    }

    @Override
    public Friend selectOne(Friend friend) {
        return (Friend) dao.selectOne("friend.selectOne",friend);
    }

    @Override
    public PageModel selectPageList(Friend friend) {
        return dao.selectPageList("friend.selectPageList","friend.selectPageCount",friend);
    }

    @Override
    public List<Friend> selectList(Friend friend) {
        return dao.selectList("friend.selectList",friend);
    }

    @Override
    public int deleteById(int id) {
        return dao.delete("friend.deleteById",id);
    }

    @Override
    public Friend selectById(int id) {
        return (Friend) dao.selectOne("friend.selectById",id);
    }

    @Override
    public Friend selectPrevious(int id) {
        return (Friend) dao.selectOne("friend.selectPrevious",id);
    }

    @Override
    public Friend selectNext(int id) {
        return (Friend) dao.selectOne("friend.selectNext",id);
    }
}
