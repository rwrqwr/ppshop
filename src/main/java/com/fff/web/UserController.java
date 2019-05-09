package com.fff.web;

import com.fff.entity.Address;
import com.fff.entity.Bigcate;
import com.fff.entity.Shoppingcate;
import com.fff.entity.User;
import com.fff.service.AddressService;
import com.fff.service.GoodsCategoryService;
import com.fff.service.ShoppingcateService;
import com.fff.service.UserService;
import com.sun.org.apache.xpath.internal.operations.Bool;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
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
    AddressService addressService;

    @Autowired
    ShoppingcateService shoppingcateService;

    @Autowired
    GoodsCategoryService goodsCategoryService;

    @RequestMapping("login")
    public String login(Model model){
        List<Bigcate> bigcates = goodsCategoryService.queryBigcate();
        model.addAttribute("bigcates",bigcates);
        return "user/login";
    }

    @RequestMapping("registered")
    public String registered(Model model) {
        List<Bigcate> bigcates = goodsCategoryService.queryBigcate();
        model.addAttribute("bigcates",bigcates);
        return "user/registered";
    }

    @RequestMapping("person")
    public String person(Model model,HttpSession session){
        User user = (User) session.getAttribute("user");
        List<Address> list = addressService.queryByUserTel(user.getUserTel());
        List<Bigcate> bigcates = goodsCategoryService.queryBigcate();
        model.addAttribute("bigcates",bigcates);
        System.out.println("person======");
        model.addAttribute("addressList",list);

        List<Shoppingcate> shoppingcateList = shoppingcateService.queryEndByUserid(user.getUserId());
        System.out.println(shoppingcateList+"==========");
        model.addAttribute("shoppingendcate",shoppingcateList);
        return "user/person";
    }

    @RequestMapping("out")
    public String out(HttpSession session){
        session.removeAttribute("user");
        session.removeAttribute("shoppingcate");
        return "redirect:/";
    }
    /**
     * @Author USER
     * @Description //检测电话与密码是否正确 用于登录
     * @Date 17:55 2018/10/29
     * @Param [tel, password]
     * @return java.lang.String
     **/
    @RequestMapping("/checklogin")
    public String checklogin(@RequestParam("tel")String tel, @RequestParam("password") String password, HttpSession session){
        System.out.println(tel+"       "+password);
        User user = userService.checkLogin(tel);
        if(user !=null && user.getUserPassword().equals(password)){
            session.setAttribute("user",user);

            List<Shoppingcate> shoppingcateListnew = shoppingcateService.queryByUserid(user.getUserId());

            List<Shoppingcate> shoppingcateList = (List<Shoppingcate>) session.getAttribute("shoppingcate");

            System.out.println("addddd====");

            Boolean flag = false;
            for (Shoppingcate shoppingcate : shoppingcateList){
                flag = false;
                System.out.println("1231123=====");
                for (Shoppingcate s : shoppingcateListnew){
                    if (s.getSpuId().equals(shoppingcate.getSpuId())){
                        Integer sa = s.getQuantity()+shoppingcate.getQuantity();
                        shoppingcateService.updateById(s.getShoppingId(),sa);
                        flag = true;
                    }
                }
                if(!flag){
                    System.out.println("=========+++");
                    shoppingcate.setUserId(user.getUserId());
                    shoppingcateService.insertNew(shoppingcate);
                }
            }

            shoppingcateListnew.addAll(shoppingcateList);

            session.removeAttribute("shoppingcate");

            return "redirect:/";
        }
        return "user/login";
    }

    /**
     * @Author USER
     * @Description //添加用户
     * @Date 19:29 2018/11/5
     * @Param [user]
     * @return java.lang.String
     **/
    @RequestMapping("/adduser")
    public String addUser(@ModelAttribute("user")User user){
        int stat = userService.addUser(user);
        if (stat == 1)
            return "redirect:/";
        return "user/registered";
    }

    @RequestMapping("/deladdress")
    public String delAddres(String addressId){
        int stat = addressService.deleteAddress(addressId);
        if(stat == 1){
            System.out.println("success========");
        }
        return "redirect:/user/person";
    }

    @RequestMapping("/addaddress")
    public String addaddress(Address address,HttpSession session){
        User user = (User)session.getAttribute("user");
        int stat = addressService.addAddress(address,user.getUserId());
        return "redirect:/user/person";
    }

    @RequestMapping("/todefault")
    public String todefault(String addressId,HttpSession session){
        User user = (User)session.getAttribute("user");
        addressService.updateAddress(addressId,user.getUserId());
        return "redirect:/user/person";
    }

}
