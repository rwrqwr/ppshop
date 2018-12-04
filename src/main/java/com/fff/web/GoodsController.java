package com.fff.web;

import com.fff.dao.GoodsBrandDao;
import com.fff.dao.GoodsCategoryDao;
import com.fff.dao.GoodsSpuDao;
import com.fff.entity.Bigcate;
import com.fff.entity.GoodsBrand;
import com.fff.entity.GoodsCategory;
import com.fff.entity.GoodsSpu;
import com.fff.service.GoodsCategoryService;
import com.fff.service.GoodsSpuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * Created by fsh on 2018/11/15.
 */
@Controller
@RequestMapping("/goods")
public class GoodsController {

    @Autowired
    GoodsSpuService goodsSpuService;

    @Autowired
    GoodsCategoryService goodsCategoryService;

//    @RequestMapping("product")
//    public String re() {
//        return "goods/product";
//    }

    @RequestMapping("{name}")
    public String name(@PathVariable("name") String name, Model model) {
        System.out.println("========"+name);

        List<GoodsSpu> goodsSpus = goodsSpuService.queryByCategory(name);
        List<Bigcate> bigcates = goodsCategoryService.queryBigcate();
        System.out.println(goodsSpus.size()+"goodsspusize======");
        System.out.println(bigcates.size()+"bigsize======");
        model.addAttribute("goodsSpus",goodsSpus);
        model.addAttribute("bigcates",bigcates);
        return "goods/product";
    }


    @RequestMapping("shoppingcate")
    public String shoppingcat(){

        return "goods/product";
    }


}
