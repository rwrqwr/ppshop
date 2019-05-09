package com.fff.dao;

import com.fff.entity.GoodsSpu;

import java.util.List;

/**
 * Created by fsh on 2018/11/14.
 */
public interface GoodsSpuDao {

    List<GoodsSpu> queryAllSpu();

    List<GoodsSpu> queryByCategory(String categoryName);

    List<GoodsSpu> queryByBrand(String brandId);

    GoodsSpu queryOneSpuByNo(String spuNo);

    int insert(GoodsSpu goodsSpu);
}
