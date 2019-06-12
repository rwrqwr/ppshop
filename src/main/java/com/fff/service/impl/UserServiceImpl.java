package com.fff.service.impl;

import com.fff.dao.UserDao;
import com.fff.entity.User;
import com.fff.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by USER on 2018/10/29.
 */
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    UserDao userDao;

    @Override
    public int deleteUser(String userId) {
        return userDao.deleteUser(userId);
    }

    @Override
    public List<User> queryUserList(int page, int num,String name) {
        List<User> list = userDao.queryUserList(page, num,name);
        for (User user : list) {
            if(user.getUserPre().equals("root"))
                user.setUserPre("checked");
            else
                user.setUserPre("");

        }

        return list;
    }

    @Override
    public int queryCount(String userName) {
        return userDao.queryCount(userName);
    }

    @Override
    public int changePre(String userId, String userPre) {
        return userDao.changePre(userId, userPre);
    }

    @Override
    public User checkLogin(String userTel) {
        return userDao.queryByTel(userTel);
    }

    @Override
    public int addUser(User user) {
        return userDao.insertUser(user);
    }

    @Override
    public int existTel(String userTel) {

        return userDao.queryExist(userTel);
    }

    @Override
    public int changePassword(String password, String userId) {
        return userDao.changePassword(password, userId);
    }
}
