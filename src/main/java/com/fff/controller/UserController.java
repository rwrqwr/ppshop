package com.fff.controller;

import com.fff.entity.*;

import com.fff.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.DigestUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import sun.misc.BASE64Encoder;

import javax.servlet.http.HttpSession;
import java.io.UnsupportedEncodingException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

/**
 * Created by USER on 2018/10/29.
 */
@RequestMapping("/user")
@Controller
public class UserController {

    @Autowired
    UserService userService;

    @Autowired
    UserOrderService userOrderService;

    @Autowired
    AddressService addressService;

    @Autowired
    ShoppingcateService shoppingcateService;

    @Autowired
    GoodsCategoryService goodsCategoryService;

    @RequestMapping("login")
    public String login(Model model) {
        List<Bigcate> bigcates = goodsCategoryService.queryBigcate();
        model.addAttribute("bigcates", bigcates);
        return "user/login";
    }

    @RequestMapping("registered")
    public String registered(Model model) {
        List<Bigcate> bigcates = goodsCategoryService.queryBigcate();
        model.addAttribute("bigcates", bigcates);
        return "user/registered";
    }

    @RequestMapping("person")
    public String person(Model model, HttpSession session) {
        User user = (User) session.getAttribute("user");
        List<Address> list = addressService.queryByUserTel(user.getUserTel());
        List<Bigcate> bigcates = goodsCategoryService.queryBigcate();
        model.addAttribute("bigcates", bigcates);
        System.out.println("person======");
        model.addAttribute("addressList", list);

        //订单添加
        List<UserOrder> userOrders = userOrderService.queryAll(user.getUserId());


        model.addAttribute("orderList", userOrders);
        return "user/person";
    }

    @RequestMapping("out")
    public String out(HttpSession session) {
        session.removeAttribute("user");
        session.removeAttribute("shoppingcate");
        return "redirect:/";
    }

    /**
     * @return java.lang.String
     * @Author USER
     * @Description //检测电话与密码是否正确 用于登录
     * @Date 17:55 2018/10/29
     * @Param [tel, password]
     **/
    @RequestMapping("/checklogin")
    public String checklogin(@RequestParam("tel") String tel, @RequestParam("password") String password, HttpSession session) throws NoSuchAlgorithmException, UnsupportedEncodingException {
        System.out.println(tel + "       " + password);
        User user = userService.checkLogin(tel);
        MessageDigest md = MessageDigest.getInstance("MD5");
        md.update(password.getBytes());
        String newstr = new BigInteger(1, md.digest()).toString(16);


        if (user != null && user.getUserPassword().equals(newstr)) {
            session.setAttribute("user", user);

            List<Shoppingcate> shoppingcateListnew = shoppingcateService.queryByUserid(user.getUserId());

            List<Shoppingcate> shoppingcateList = (List<Shoppingcate>) session.getAttribute("shoppingcate");

            //购物车合并
            Boolean flag = false;
            if (shoppingcateList != null) {
                for (Shoppingcate shoppingcate : shoppingcateList) {
                    flag = false;

                    for (Shoppingcate s : shoppingcateListnew) {
                        if (s.getSpuId().equals(shoppingcate.getSpuId())) {
                            Integer sa = s.getQuantity() + shoppingcate.getQuantity();
                            shoppingcateService.updateById(s.getShoppingId(), sa);
                            flag = true;
                        }
                    }
                    if (!flag) {

                        shoppingcate.setUserId(user.getUserId());
                        shoppingcateService.insertNew(shoppingcate);
                    }
                }
                shoppingcateListnew.addAll(shoppingcateList);
            }

            session.removeAttribute("shoppingcate");

            if (user.getUserPre().equals("root")) {
                return "admin/adhome";
            }

            return "redirect:/";
        }
        return "user/login";
    }

    /**
     * @return java.lang.String
     * @Author USER
     * @Description //添加用户
     * @Date 19:29 2018/11/5
     * @Param [user]
     **/
    @RequestMapping("/adduser")
    public String addUser(@ModelAttribute("user") User user, HttpSession session) throws NoSuchAlgorithmException, UnsupportedEncodingException {
        String str = user.getUserPassword();
        MessageDigest md = MessageDigest.getInstance("MD5");
        md.update(str.getBytes());
        String newstr = new BigInteger(1, md.digest()).toString(16);
        user.setUserPassword(newstr);
        int stat = userService.addUser(user);

        if (stat == 1) {
            session.setAttribute("user", user);

            return "redirect:/";
        }

        return "user/registered";
    }

    @RequestMapping("/deladdress")
    public String delAddres(String addressId) {
        int stat = addressService.deleteAddress(addressId);
        if (stat == 1) {
            System.out.println("success========");
        }
        return "redirect:/user/person";
    }

    @RequestMapping("/addaddress")
    public String addaddress(Address address, HttpSession session) {
        User user = (User) session.getAttribute("user");
        int stat = addressService.addAddress(address, user.getUserId());
        return "redirect:/user/person";
    }

    @RequestMapping("/todefault")
    public String todefault(String addressId, HttpSession session) {
        User user = (User) session.getAttribute("user");
        addressService.updateAddress(addressId, user.getUserId());
        return "redirect:/user/person";
    }

    @ResponseBody
    @RequestMapping("change")
    public Map changePasswordTemp(@RequestParam Map<String, Object> map) {

        String userTel = (String) map.get("userTel");

        map.put("flag", userService.existTel(userTel));


        return map;
    }

    @ResponseBody
    @RequestMapping("pay")
    public void pay(@RequestParam("orderId")String orderId) {
        userOrderService.pay(orderId);
    }


}
