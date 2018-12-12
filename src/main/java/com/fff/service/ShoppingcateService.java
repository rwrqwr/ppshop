package com.fff.service;

import com.fff.entity.Shoppingcate;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 * Created by fsh on 2018/12/5.
 */
public interface ShoppingcateService {

    List<Shoppingcate> queryByUserid(String userId);

    Shoppingcate queryOne(String userId,String spuNo);

    int insertNew (@Param("shoppingcate") Shoppingcate shoppingcate);

    Map<String,Shoppingcate> queryByUser(String userId);

    int updateQu(String userId,String spuNo,Integer quantity);

    int updateById(String shoppingId,Integer quantity);

    int delete(String shoppingId);

    int queryQuantity(String shoppingId);

    int queryQuantityByUserId(String userId, String spuNo);
}
