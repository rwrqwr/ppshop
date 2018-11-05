package com.fff.service;

import com.fff.entity.User;

/**
 * Created by USER on 2018/10/29.
 */
public interface UserService {

    /**
     * @Author USER
     * @Description //检查登录
     * @Date 17:59 2018/10/29
     * @Param [userTel]
     * @return int
     **/
    User checkLogin(String userTel);

    /**
     * @Author USER
     * @Description //注册新用户 1注册成功 0注册失败
     * @Date 15:32 2018/10/30
     * @Param [user]
     * @return int
     **/
    int addUser(User user);

}
