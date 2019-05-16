package com.fff.dao;

import com.fff.entity.User;

/**
 * Created by USER on 2018/10/27.
 */
public interface UserDao {


    /**
     * @Author USER
     * @Description // 根据用户的电话查询，主要为登录
     * @Date 17:49 2018/10/28
     * @Param [userTel]
     * @return com.fff.entity.User
     **/
    User queryByTel(String userTel);

    /**
     * @Author USER
     * @Description // 添加新用户
     * @Date 17:50 2018/10/28
     * @Param [user]
     * @return int
     **/
    int insertUser(User user);


    int updateByTel(User user);

    int queryExist(String userTel);



}
