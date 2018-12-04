package com.fff.dao;

import com.fff.entity.Bigcate;
import com.fff.entity.GoodsCategory;

import java.util.List;

/**
 * Created by fsh on 2018/11/14.
 */
public interface GoodsCategoryDao {

    List<GoodsCategory> queryCategory();

    List<Bigcate> queryBigcate();

    List<GoodsCategory> queryDeyilCategory(String idBid);
}
