package com.fff.service.impl;

import com.fff.dao.UserDao;
import com.fff.entity.User;
import com.fff.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by USER on 2018/10/29.
 */
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    UserDao userDao;

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
}
