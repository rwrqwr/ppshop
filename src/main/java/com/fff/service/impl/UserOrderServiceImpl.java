package com.fff.service.impl;

import com.fff.dao.UserOrderDao;
import com.fff.entity.UserOrder;
import com.fff.service.UserOrderService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * Created by fsh on 2019/5/20.
 */
public class UserOrderServiceImpl implements UserOrderService {

    @Autowired
    UserOrderDao userOrderDao;


    @Override
    public List<UserOrder> queryAll() {
        return userOrderDao.queryAll();
    }

    @Override
    public List<UserOrder> queryByTime(String startTime ,String endTime) {
        return userOrderDao.queryByTime(startTime,endTime);
    }
}
