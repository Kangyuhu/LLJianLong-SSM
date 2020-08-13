package com.lljl.lu.service;

import com.lljl.lu.bean.User;
import com.lljl.lu.bean.UserExample;
import com.lljl.lu.dao.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LuServiceImpl implements LuService {

    @Autowired
    UserMapper userMapper;

    public int addUser(User user) {
        System.out.println("service");
        return userMapper.insert(user);
    }

    public User getById(int id) {
        return userMapper.selectByPrimaryKey(id);
    }

    public int deleteUser( List<Integer> did) {
        UserExample userExample = new UserExample();
        UserExample.Criteria ue = userExample.createCriteria();
        ue.andIdIn(did);
        return userMapper.deleteByExample(userExample);
    }

    public List<User> getUserAll() {
        return userMapper.selectByExample(null);
    }

    public int update(User user) {
        return userMapper.updateByPrimaryKey(user);
    }
}
