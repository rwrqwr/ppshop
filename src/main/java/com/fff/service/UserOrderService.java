package com.fff.service;

import com.fff.entity.UserOrder;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by fsh on 2019/5/20.
 */
public interface UserOrderService {

    int insert(UserOrder userOrder);

    List<UserOrder> queryAll(String userId);

    List<UserOrder> queryByTime(String startTime,String endTime,String userId);

}
