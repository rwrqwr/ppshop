package com.fff.service.impl;

import com.fff.dao.ShoppingcateDao;
import com.fff.entity.Shoppingcate;
import com.fff.service.ShoppingcateService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import java.util.List;
import java.util.Map;

/**
 * Created by fsh on 2018/12/5.
 */
@Controller
public class ShoppingcateServiceImpl implements ShoppingcateService {


    @Autowired
    ShoppingcateDao shoppingcateDao;


    @Override
    public List<Shoppingcate> queryByUserid(String userId) {
        return shoppingcateDao.queryByUserid(userId);
    }

    @Override
    public Shoppingcate queryOne(String userId, String spuNo) {
        return shoppingcateDao.queryOne(userId,spuNo);
    }

    @Override
    public int insertNew(Shoppingcate shoppingcate) {
        return shoppingcateDao.insertNew(shoppingcate);
    }

    @Override
    public Map<String, Shoppingcate> queryByUser(String userId) {
        return shoppingcateDao.queryByUser(userId);
    }

    @Override
    public int updateQu(String userId, String spuNo,Integer quantity) {
        return shoppingcateDao.updateQu(userId,spuNo,quantity);
    }

    @Override
    public int updateById(String shoppingId, Integer quantity) {
        return shoppingcateDao.updateById(shoppingId,quantity);
    }

    @Override
    public int delete(String shoppingId) {
        return shoppingcateDao.delete(shoppingId);
    }

    @Override
    public int queryQuantity(String shoppingId) {
        return shoppingcateDao.queryQuantity(shoppingId);
    }

    @Override
    public int queryQuantityByUserId(String userId, String spuNo) {
        return shoppingcateDao.queryQuantityByUserId(userId,spuNo);
    }

}
