package com.fff.service;

import com.fff.entity.GoodsSpu;

import java.util.List;

/**
 * Created by fsh on 2018/12/3.
 */
public interface GoodsSpuService {


    List<GoodsSpu> queryAll(int page,int num,String goodsName);

    List<GoodsSpu> queryByCategory(String categoryName);

    List<GoodsSpu> queryByBrand(String brandName);

    GoodsSpu queryOneSpuByNo(String spuNo);

    int count(String goodsName);

    int deleteGoods(String spuNo);

    int insert(GoodsSpu goodsSpu);

}
