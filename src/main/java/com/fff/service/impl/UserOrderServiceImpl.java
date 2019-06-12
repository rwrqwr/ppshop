package com.fff.service.impl;

import com.fff.dao.UserOrderDao;
import com.fff.entity.UserOrder;
import com.fff.service.UserOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * Created by fsh on 2019/5/20.
 */
@Service
public class UserOrderServiceImpl implements UserOrderService {

    @Autowired
    UserOrderDao userOrderDao;

    @Override
    public int insert(UserOrder userOrder) {
        return userOrderDao.insert(userOrder);
    }

    @Override
    public List<UserOrder> queryAll(String userID) {
        return userOrderDao.queryAll(userID);
    }

    @Override
    public List<UserOrder> queryByTime(String startTime ,String endTime,String userId) {
        return userOrderDao.queryByTime(startTime,endTime,userId);
    }

    @Override
    public int pay(String orderId) {
        return userOrderDao.updateStatus(orderId);
    }

    @Override
    public List<UserOrder> queryAllOrder(int page, int nums, Date start,Date end ,int stat) {
        return userOrderDao.queryAllOrder(page,nums,start,end,stat);
    }

    @Override
    public int count(Date startDate,Date endDate,int tempsta) {
        return userOrderDao.count(startDate, endDate, tempsta);
    }
}
