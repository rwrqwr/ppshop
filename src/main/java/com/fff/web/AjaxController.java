package com.fff.web;

import com.fff.entity.GoodsSpu;
import com.fff.entity.Shoppingcate;
import com.fff.entity.User;
import com.fff.service.GoodsSpuService;
import com.fff.service.ShoppingcateService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by fsh on 2018/12/12.
 */
@RestController
@RequestMapping("/ajax")
public class AjaxController {


    @Autowired
    ShoppingcateService shoppingcateService;

    @Autowired
    GoodsSpuService goodsSpuService;

    /**
     * @Author fsh
     * @Description //点击加入购物车
     * @Date 16:25 2018/12/12
     * @Param [map, session]
     * @return java.util.Map
     **/
    @ResponseBody
    @RequestMapping("singleadd")
    public Map aj(@RequestParam Map<String,Object> map, HttpSession session){

        String spuNo = (String) map.get("spuNo");
        Integer spuQ = Integer.parseInt((String) map.get("spuQ"));
        User user = (User) session.getAttribute("user");
        /*用户已经登录*/
        if (user != null){
            List<Shoppingcate> shoppingcateList = shoppingcateService.queryByUserid(user.getUserId());
            Boolean flag = false;    //true为有这个商品
            for(Shoppingcate shoppingcate : shoppingcateList){
                if(shoppingcate.getSpuId().equals(spuNo)){
                    shoppingcateService.updateQu(user.getUserId(),spuNo,
                            shoppingcateService.queryQuantity(shoppingcate.getShoppingId())+spuQ);
                    flag = true;
                    break;
                }
            }

        /*如果有这个商品*/
            if(!flag){
                GoodsSpu spu = goodsSpuService.queryOneSpuByNo(spuNo);
                Shoppingcate s = new Shoppingcate();
                s.setUserId(user.getUserId());
                s.setQuantity(spuQ);
                s.setSpuId(spuNo);
                s.setStatus(0);
                shoppingcateService.insertNew(s);
            }
            return map;
        }

        /*用户没有登录*/
        Map<String,Shoppingcate> shoppingcateMap = (Map<String, Shoppingcate>) session.getAttribute("shoppingcate");
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
            s.setQuantity(spuQ);
            s.setSpuId(spuNo);
            s.setStatus(0);
            shoppingcateMap.put(spuNo,s);

        }else {         //如果存在就加一
            shoppingcat.setQuantity(shoppingcat.getQuantity()+spuQ);
        }
        //加入session
        session.setAttribute("shoppingcate",shoppingcateMap);

        return map;
    }

    @ResponseBody
    @RequestMapping("del")
    public Map del (@RequestParam Map<String,Object> map, HttpSession session){

        String shoppingId = (String)map.get("temp");
        shoppingcateService.delete(shoppingId);

        return map;
    }

    @ResponseBody
    @RequestMapping("addQuantity")
    public Map addQuantity(@RequestParam Map<String,Object> map){

        String shoppingId = (String)map.get("temp");
        Integer temp = shoppingcateService.queryQuantity(shoppingId);
        shoppingcateService.updateById(shoppingId,temp+1);
        return map;
    }

    @ResponseBody
    @RequestMapping("reduce")
    public Map reduce(@RequestParam Map<String,Object> map){

        String shoppingId = (String)map.get("temp");
        Integer temp = shoppingcateService.queryQuantity(shoppingId);
        shoppingcateService.updateById(shoppingId,temp-1);

        return map;
    }

    @ResponseBody
    @RequestMapping("change")
    public Map change(@RequestParam Map<String,Object> map){

        String shoppingId = (String)map.get("temp");
        Integer quan = Integer.parseInt((String)map.get("quan"));

        shoppingcateService.updateById(shoppingId,quan);

        return map;
    }


}