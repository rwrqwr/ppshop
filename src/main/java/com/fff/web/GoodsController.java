package com.fff.web;

import com.fff.dao.GoodsBrandDao;
import com.fff.dao.GoodsCategoryDao;
import com.fff.dao.GoodsSpuDao;
import com.fff.entity.GoodsBrand;
import com.fff.entity.GoodsCategory;
import com.fff.entity.GoodsSpu;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * Created by fsh on 2018/11/15.
 */
@Controller
@RequestMapping("/goods")
public class GoodsController {

    @Autowired
    GoodsSpuDao goodsSpuDao;

    @Autowired
    GoodsBrandDao goodsBrandDao;

    @Autowired
    GoodsCategoryDao goodsCategoryDao;

    @RequestMapping("product")
    public String re(){
        return "goods/product";
    }

    @RequestMapping(value = "")
    public String name(String name){
        List<GoodsBrand> goodsBrandList = goodsBrandDao.queryGoodBand();
        List<GoodsCategory> goodsCategories = goodsCategoryDao.queryCategory();


        return "goods/product";
    }


}
