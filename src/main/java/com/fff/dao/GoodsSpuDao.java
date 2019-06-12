package com.fff.dao;

import com.fff.entity.GoodsSpu;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by fsh on 2018/11/14.
 */
public interface GoodsSpuDao {

    List<GoodsSpu> queryAllSpu(@Param("page") int page,@Param("nums") int nums,@Param("goodsName") String goodsName);

    List<GoodsSpu> queryByCategory(String categoryName);

    List<GoodsSpu> queryByBrand(String brandId);

    GoodsSpu queryOneSpuByNo(String spuNo);

    int insert(@Param("goodsSpu") GoodsSpu goodsSpu);

    int count(String goodsName);

    int delete(String SpuNo);
}
