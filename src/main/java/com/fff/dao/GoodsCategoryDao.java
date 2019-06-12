package com.fff.dao;

import com.fff.entity.Bigcate;
import com.fff.entity.GoodsCategory;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by fsh on 2018/11/14.
 */
public interface GoodsCategoryDao {

    List<GoodsCategory> queryCategory();

    List<Bigcate> queryBigcate();

    List<GoodsCategory> queryAll(@Param("page") int page,@Param("nums") int nums);

    List<GoodsCategory> queryDeyilCategory(String idBid);

    int count();

    int insert(GoodsCategory goodsCategory);
}
