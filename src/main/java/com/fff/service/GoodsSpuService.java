package com.fff.service;

import com.fff.entity.GoodsSpu;

import java.util.List;

/**
 * Created by fsh on 2018/12/3.
 */
public interface GoodsSpuService {


    List<GoodsSpu> queryAll();

    List<GoodsSpu> queryByCategory(String categoryName);

    List<GoodsSpu> queryByBrand(String brandName);


}
