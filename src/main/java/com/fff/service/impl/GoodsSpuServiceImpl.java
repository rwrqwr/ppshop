package com.fff.service.impl;

import com.fff.dao.GoodsSpuDao;
import com.fff.entity.GoodsSpu;
import com.fff.service.GoodsSpuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by fsh on 2018/12/3.
 */
@Service
public class GoodsSpuServiceImpl implements GoodsSpuService {

    @Autowired
    GoodsSpuDao goodsSpuDao;

    @Override
    public List<GoodsSpu> queryAll(int page,int nums,String goodsName) {
        return goodsSpuDao.queryAllSpu(page,nums,goodsName);
    }

    @Override
    public List<GoodsSpu> queryByCategory(String categoryName) {
        return goodsSpuDao.queryByCategory(categoryName);
    }

    @Override
    public List<GoodsSpu> queryByBrand(String brandName) {
        return goodsSpuDao.queryByBrand(brandName);
    }

    @Override
    public GoodsSpu queryOneSpuByNo(String spuNo) {
        return goodsSpuDao.queryOneSpuByNo(spuNo);
    }

    @Override
    public int count(String goodsName) {
        return goodsSpuDao.count(goodsName);
    }

    @Override
    public int deleteGoods(String spuNo) {
        return goodsSpuDao.delete(spuNo);
    }

    @Override
    public int insert(GoodsSpu goodsSpu) {
        return goodsSpuDao.insert(goodsSpu);
    }
}
