package com.fff.service;

import com.fff.entity.UserOrder;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by fsh on 2019/5/20.
 */
@Service
public interface UserOrderService {

    List<UserOrder> queryAll();

    List<UserOrder> queryByTime(String startTime,String endTime);

}
