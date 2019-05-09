package com.fff.web;

import com.fff.entity.Bigcate;
import com.fff.entity.GoodsSpu;
import com.fff.service.GoodsCategoryService;
import com.fff.service.GoodsSpuService;
import com.sun.org.apache.xpath.internal.operations.Mod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.util.UUID;


/**
 * Created by fsh on 2018/12/13.
 */

@Controller
@RequestMapping("/admin")
public class AdminController {


    @Autowired
    GoodsCategoryService goodsCategoryService;

    @Autowired
    GoodsSpuService goodsSpuService;

    @RequestMapping("adhome")
    public String baseadhome(Model model){

        List<Bigcate> bigcates = goodsCategoryService.queryBigcate();
        model.addAttribute("bigcates",bigcates);

        return "admin/adhome";
    }

    @RequestMapping("addspu")
    public String baseaddspu(Model model){

        List<Bigcate> bigcates = goodsCategoryService.queryBigcate();


        model.addAttribute("bigcates",bigcates);

        return "admin/addspu";
    }

    @RequestMapping("adsp")
    public String adsp(@ModelAttribute("GoodsSpu") GoodsSpu goodsSpu){

        String foodId = UUID.randomUUID().toString();
        goodsSpu.setSpuNo(foodId);

        System.out.println(goodsSpu.getGoodsName());



        return "redirect:/admin/addspu";
    }


}
