package com.fff.dao;

import com.fff.entity.UserOrder;
import org.apache.ibatis.annotations.Param;

import java.util.Date;
import java.util.List;

/**
 * Created by fsh on 2019/5/20.
 */
public interface UserOrderDao {

    /**
     * @return java.util.List<com.fff.entity.UserOrder>
     * @Author fsh
     * @Description //查询所有的订单信息用户
     * @Date 23:01 2019/5/20
     * @Param []
     **/
    List<UserOrder> queryAll(String userId);

    /**
     * @return java.util.List<com.fff.entity.UserOrder>
     * @Author fsh
     * @Description //根据时间查询
     * @Date 23:22 2019/5/20
     * @Param []
     **/
    List<UserOrder> queryByTime(@Param("startTime") String startTime,
                                @Param("endTime") String endTime, @Param("userId") String userId);

    int insert(UserOrder userOrder);

    int updateStatus(String orderId);

    List<UserOrder> queryAllOrder(@Param("page")int page, @Param("num")int nums,
                                  @Param("startTime")Date start,@Param("end")Date end,
                                  @Param("status")int stat);

    int count(@Param("startTime")Date start,@Param("end")Date end,
    @Param("status")int stat);

}
