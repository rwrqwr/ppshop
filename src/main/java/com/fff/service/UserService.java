package com.fff.service;

import com.fff.entity.User;

import java.util.List;

/**
 * Created by USER on 2018/10/29.
 */
public interface UserService {

    int deleteUser(String userId);

    /**
     * @Author fsh
     * @Description //查所有用户
     * @Date 13:10 2019/6/9
     * @Param []
     * @return com.fff.entity.User
     **/
    List<User> queryUserList(int page,int num,String name);

    int changePre(String userId,String userPre);

    int queryCount(String userName);


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

    /**
     * @Author fsh
     * @Description //存在唯一的电话
     * @Date 8:42 2019/5/16
     * @Param [userTel]
     * @return java.lang.Boolean
     **/
    int existTel(String userTel);

    int changePassword(String password,String userId);

}
