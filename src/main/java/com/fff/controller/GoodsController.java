package com.fff.controller;


import com.fff.entity.*;
import com.fff.service.GoodsCategoryService;
import com.fff.service.GoodsSpuService;
import com.fff.service.ShoppingcateService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;


import javax.servlet.http.HttpSession;

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

    @Autowired
    ShoppingcateService shoppingcateService;


    private String urlname = "";

    @RequestMapping("cate")
    public String basetocate(Model model,HttpSession session){

        List<Bigcate> bigcates = goodsCategoryService.queryBigcate();
        model.addAttribute("bigcates",bigcates);

        return "goods/cate";
    }


    @RequestMapping("{name}")
    public String basename(@PathVariable("name") String name, Model model) {
        urlname = name;
        List<GoodsSpu> goodsSpus = goodsSpuService.queryByCategory(name);
        List<Bigcate> bigcates = goodsCategoryService.queryBigcate();
        model.addAttribute("bigcates",bigcates);
        model.addAttribute("goodsSpus",goodsSpus);
        return "goods/product";
    }

    @RequestMapping("single")
    public String basegetSingle(String spuNo,Model model){

        GoodsSpu goodsSpu = goodsSpuService.queryOneSpuByNo(spuNo);
        List<Bigcate> bigcates = goodsCategoryService.queryBigcate();
        model.addAttribute("bigcates",bigcates);
        model.addAttribute("spu",goodsSpu);

        return "/goods/single";
    }




}
