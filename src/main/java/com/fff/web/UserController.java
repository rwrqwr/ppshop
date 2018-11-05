package com.fff.web;

import com.fff.entity.User;
import com.fff.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Created by USER on 2018/10/29.
 */
@RequestMapping("/user")
@Controller
public class UserController {

    @Autowired
    UserService userService;


    /**
     * @Author USER
     * @Description //检测电话与密码是否正确 用于登录
     * @Date 17:55 2018/10/29
     * @Param [tel, password]
     * @return java.lang.String
     **/
    @RequestMapping("/checklogin")
    public String checklogin(@RequestParam("tel")String tel,@RequestParam("password") String password){
        System.out.println(tel+"       "+password);
        User user = userService.checkLogin(tel);
        if(user.getUserPassword().equals(password)){
            return "/user/success";
        }
        return "/user/login";
    }

    /**
     * @Author USER
     * @Description //
     * @Date 23:10 2018/11/2
     * @Param [user]
     * @return java.lang.String
     **/
    @RequestMapping("/adduser")
    public String addUser(@ModelAttribute("user")User user){
        int stat = userService.addUser(user);
        if (stat == 1)
            return "/user/success";
        return "user/logon";
    }

}
