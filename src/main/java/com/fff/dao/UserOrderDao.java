package com.fff.dao;

import com.fff.entity.UserOrder;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by fsh on 2019/5/20.
 */
public interface UserOrderDao {

    /**
     * @Author fsh
     * @Description //查询所有的订单信息
     * @Date 23:01 2019/5/20
     * @Param []
     * @return java.util.List<com.fff.entity.UserOrder>
     **/
    List<UserOrder> queryAll();

    /**
     * @Author fsh
     * @Description //根据时间查询
     * @Date 23:22 2019/5/20
     * @Param []
     * @return java.util.List<com.fff.entity.UserOrder>
     **/
    List<UserOrder> queryByTime(@Param("startTime") String startTime, @Param("endTime") String endTime);


}
