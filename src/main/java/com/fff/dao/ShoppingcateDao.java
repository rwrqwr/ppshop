package com.fff.dao;

import com.fff.entity.GoodsSpu;
import com.fff.entity.Shoppingcate;
import org.apache.ibatis.annotations.MapKey;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 * Created by fsh on 2018/12/5.
 */
public interface ShoppingcateDao {

    List<Shoppingcate> queryByUserid(String userId);

    Shoppingcate queryOne(String userId, String spuNo);

    int insertNew(@Param("shoppingcate") Shoppingcate shoppingcate);

    @MapKey("spuId")
    Map<String, Shoppingcate> queryByUser(String userId);

    int updateQu(@Param("userId") String userId,@Param("spuNo") String spuNo,@Param("quanity") Integer quanity);

}
