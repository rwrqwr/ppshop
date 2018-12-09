package com.fff.web;

import com.fff.dao.GoodsBrandDao;
import com.fff.dao.GoodsCategoryDao;
import com.fff.dao.GoodsSpuDao;
import com.fff.entity.*;
import com.fff.service.GoodsCategoryService;
import com.fff.service.GoodsSpuService;
import com.fff.service.ShoppingcateService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

//    @RequestMapping("product")
//    public String re() {
//        return "goods/product";
//    }


    String urlname = "";

    @RequestMapping("cate")
    public String tocate(){
        return "goods/cate";
    }


    @RequestMapping("{name}")
    public String name(@PathVariable("name") String name, Model model) {
        urlname = name;
        List<GoodsSpu> goodsSpus = goodsSpuService.queryByCategory(name);
        List<Bigcate> bigcates = goodsCategoryService.queryBigcate();
        model.addAttribute("bigcates",bigcates);
        model.addAttribute("goodsSpus",goodsSpus);
        return "goods/product";
    }


    @RequestMapping("/shoppingcate")
    public String shoppingcat(@RequestParam("spuNo")String spuNo,@RequestParam("quanity")Integer quanity,HttpSession session){

        Map<String,Shoppingcate> shoppingcateMap = (Map<String, Shoppingcate>) session.getAttribute("shoppingcate");

        User user = (User) session.getAttribute("user");

        //如果用户没有登录
        if (user == null){
            //如果没有购物车||购物车为空新建购物车加入sesion
            if (shoppingcateMap == null){
                shoppingcateMap = new HashMap<>();
            }
            //如果购物车中没有所选商品 根据商品no从spu表中查找 并且转为shoppingcate存入购物车
            Shoppingcate shoppingcat = shoppingcateMap.get(spuNo);
            if (shoppingcat == null){
                GoodsSpu spu = goodsSpuService.queryOneSpuByNo(spuNo);
                Shoppingcate s = new Shoppingcate();
                s.setGoodsName(spu.getGoodsName());
                s.setPrice(spu.getPrice());
                s.setQuanity(quanity);
                s.setSpuId(spuNo);
                s.setStatus(0);
                shoppingcateMap.put(spuNo,s);
                /*System.out.println(s.getGoodsName()+"goodsnaem+==========");*/
            }else {         //如果存在就加一

                /*System.out.println("在这里add1");*/
                shoppingcat.setQuanity(shoppingcat.getQuanity()+quanity);
            }
            //加入session
            session.setAttribute("shoppingcate",shoppingcateMap);
/*

            for (int i = 0; i < shoppingcateMap.size() ; i++) {
                System.out.println(shoppingcateMap.get(spuNo)+"map====");
            }
*/

            return "redirect:/goods/"+urlname;
        }


        //如果用户已经登录
        if (shoppingcateMap == null){
            shoppingcateMap = new HashMap<>();
        }
        //如果购物车中没有所选商品 根据商品no从spu表中查找 并且转为shoppingcate存入购物车
        Shoppingcate shoppingcat = shoppingcateMap.get(spuNo);
        if (shoppingcat == null){
            GoodsSpu spu = goodsSpuService.queryOneSpuByNo(spuNo);
            Shoppingcate s = new Shoppingcate();
            s.setGoodsName(spu.getGoodsName());
            s.setPrice(spu.getPrice());
            s.setQuanity(quanity);
            s.setSpuId(spuNo);
            s.setUserId(user.getUserId());
            s.setStatus(0);
            shoppingcateMap.put(spuNo,s);
            shoppingcateService.insertNew(s);
        }else {         //如果存在就加一
            shoppingcateService.updateQu(user.getUserId(),spuNo,quanity);
            System.out.println("=====+++++1");
            shoppingcat.setQuanity(shoppingcat.getQuanity()+quanity);
        }
        //加入session
        session.setAttribute("shoppingcate",shoppingcateMap);
        //System.out.println(user.getUserId()+"=====userid");
        return "redirect:/goods/"+urlname;
    }

    @RequestMapping("single")
    public String getSingle(String spuNo,Model model){

        GoodsSpu goodsSpu = goodsSpuService.queryOneSpuByNo(spuNo);
        model.addAttribute("spu",goodsSpu);

        return "/goods/single";
    }


}
