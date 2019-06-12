package com.fff.dao;

import com.fff.entity.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by USER on 2018/10/27.
 */
public interface UserDao {


    List<User> queryUserList(@Param("page") int page,@Param("num") int num,@Param("name")String name);

    int queryCount(String userName);

    int deleteUser(String userId);


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

    int changePassword(@Param("password") String password,@Param("userId") String userId);

    int changePre(@Param("userId")String userId,@Param("userPre")String userPre);


}
