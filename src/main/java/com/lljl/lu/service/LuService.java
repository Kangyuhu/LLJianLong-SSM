package com.lljl.lu.service;

import com.lljl.lu.bean.User;

import java.util.List;

public interface LuService {
    //增加
    int addUser(User zUser);

    //根据ID查找
    User getById(int id);

    //删除
    int deleteUser( List<Integer> did);

    //查找所有
    List<User> getUserAll();

    //根据ID修改
    int update(User user);


}
