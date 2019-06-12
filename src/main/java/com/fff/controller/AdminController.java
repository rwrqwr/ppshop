package com.fff.controller;

import com.fff.entity.*;
import com.fff.service.GoodsCategoryService;
import com.fff.service.GoodsSpuService;
import com.fff.service.UserOrderService;
import com.fff.service.UserService;
import org.apache.commons.collections.map.HashedMap;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;


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

    @Autowired
    UserService userService;

    @Autowired
    UserOrderService userOrderService;




    @RequestMapping("adhome")
    public String in() {
        return "admin/adhome";
    }

    @RequestMapping("li")
    public String li() {
        return "admin/pages/member/li";
    }

    @RequestMapping("addUser")
    public String addUser() {
        return "admin/pages/member/adduser";
    }

    @RequestMapping("welcome")
    public String welcome() {
        return "admin/pages/welcome";
    }

    @RequestMapping("order")
    public String order() {
        return "admin/pages/order/order";
    }

    @RequestMapping("goods")
    public String goods() {
        return "admin/pages/goods/goods";
    }

    @RequestMapping("addGoods")
    public String addGoods(){
        return "admin/pages/goods/addgoods";
    }

    @RequestMapping("category")
    public String category(){
        return "admin/pages/category/category";
    }

    @RequestMapping("addCategory")
    public String addCategory(){
        return "admin/pages/category/addcategory";
    }

    @RequestMapping("adsp")
    public String adsp(@ModelAttribute("GoodsSpu") GoodsSpu goodsSpu) {

        String foodId = UUID.randomUUID().toString();
        goodsSpu.setSpuNo(foodId);

        System.out.println(goodsSpu.getGoodsName());


        return "redirect:/admin/addspu";
    }

    @RequestMapping("userlist")
    @ResponseBody
    public Map<?, ?> returnUserList(@RequestParam("curr") String curr, @RequestParam("nums") String nums
            , @RequestParam("username") String userName) {


        Map<String, Object> map = new HashMap();
        map.put("code", 0);
        int p, n;
        //System.out.println(curr);
        //System.out.println(nums);
        if (nums != null) {
            n = Integer.valueOf(nums);
        } else {
            n = 10;
        }
        if (userName == null)
            userName = "%%";
        else
            userName = "%" + userName + "%";
        p = Integer.valueOf(curr);
        List<User> userList = userService.queryUserList((p - 1) * n, n, userName);

        map.put("data", userList);
        map.put("count", userService.queryCount(userName));


        return map;
    }

    @RequestMapping("delUser")
    @ResponseBody
    public void delUser(@Param("userId") String userId) {
        System.out.println(userId);
        //Map<String,Object> map = new HashMap<>();
        userService.deleteUser(userId);
        //map.put("count",14);
        return;
    }

    @ResponseBody
    @RequestMapping("changePasswd")
    public void changePasswd(@Param("password") String password, @Param("userId") String userId) {

        userService.changePassword(password, userId);

        return;
    }

    @ResponseBody
    @RequestMapping("changePre")
    public void changePre(@RequestParam("userId") String userId, @RequestParam("checked") String ch) {
        System.out.println(userId);
        String userP = "";
        if (ch.equals("true")) {
            userP = "root";
        } else {
            userP = "1";
        }
        userService.changePre(userId, userP);
    }

    @ResponseBody
    @RequestMapping("addUserImpl")
    public void addUser(@ModelAttribute("user") User user) throws NoSuchAlgorithmException {

        //密码加密
        MessageDigest md = MessageDigest.getInstance("MD5");
        md.update(user.getUserPassword().getBytes());
        String newstr = new BigInteger(1, md.digest()).toString(16);
        user.setUserPassword(newstr);
        //统一用户权限格式
        if (user.getUserPre() == null) {
            user.setUserPre("1");
        } else {
            user.setUserPre("root");
        }

        userService.addUser(user);

    }

    @ResponseBody
    @RequestMapping("orderlist")
    public Map<String, Object> orderList(@RequestParam("curr") String curr,
                                         @RequestParam("nums") String nums,
                                         @RequestParam("startTime") String start,
                                         @RequestParam("endTime") String end,
                                         @RequestParam("status") String status) throws ParseException {
        Map<String, Object> map = new HashMap<>();
        map.put("code", 0);
        int n, p;
        if (nums != null) {
            n = Integer.valueOf(nums);
        } else {
            n = 10;
        }
        Date startDate = new Date();
        Date endDate = new Date();
        int tempsta = 2;
        DateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        if (!start.equals(""))
            startDate = format.parse(start + " 00:00:00");
        else
            startDate = null;
        if (!end.equals(""))
            endDate = format.parse(end + " 00:00:00");
        else
            endDate = null;
        if (status.equals("已支付")) {
            tempsta = 1;
        } else if (status.equals("未支付")) {
            tempsta = 0;
        }
        System.out.println(startDate);
        System.out.println(status);

        p = Integer.valueOf(curr);


        List<UserOrder> orderList = userOrderService.queryAllOrder
                ((p - 1) * n, n, startDate, endDate, tempsta);

        map.put("count", userOrderService.count(startDate, endDate, tempsta));
        map.put("data", orderList);


        return map;
    }

    @RequestMapping("goodsList")
    @ResponseBody
    public Map<String, Object> goodsList(@RequestParam("curr") String curr,
                                         @RequestParam("nums") String nums,
                                         @RequestParam("goodsName")String goodsName) {

        Map<String, Object> map = new HashMap<>();
        int n, p;
        if (nums != null) {
            n = Integer.valueOf(nums);
        } else {
            n = 10;
        }
        p = Integer.valueOf(curr);
        map.put("code", 0);
        String nName = "%"+goodsName+"%";
        List<GoodsSpu> goodsSpuList = goodsSpuService.queryAll((p-1)*n,n,nName);
        map.put("data", goodsSpuList);
        map.put("count",goodsSpuService.count(nName));


        return map;
    }

    @RequestMapping("delGoods")
    @ResponseBody
    public void delGoods(@RequestParam("spuNo")String spuNo){
        goodsSpuService.deleteGoods(spuNo);

    }

    @RequestMapping("addGoodsImpl")
    @ResponseBody
    public void addGoodsImpl(@ModelAttribute("goodsSpu") GoodsSpu goodsSpu){
        //System.out.println(goodsSpu.getBrandId());
        goodsSpuService.insert(goodsSpu);

    }

    @RequestMapping("categoryList")
    @ResponseBody
    public Map<String,Object> categoryList(@RequestParam("curr") String curr,
                                           @RequestParam("nums") String nums){
        Map<String,Object> map = new HashMap<>();
        int n, p;
        if (nums != null) {
            n = Integer.valueOf(nums);
        } else {
            n = 10;
        }
        p = Integer.valueOf(curr);
        map.put("code",0);
        map.put("data",goodsCategoryService.queryAll((p-1)*n,n));
        map.put("count",goodsCategoryService.count());

        return map;
    }

    @RequestMapping("addCategoryImpl")
    @ResponseBody
    public void addCategoryImpl(@ModelAttribute("goodsCategory")GoodsCategory goodsCategory){

        goodsCategoryService.insert(goodsCategory);

    }

}
