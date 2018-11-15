package com.fff.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by fsh on 2018./10/28.
 */
@RequestMapping("/page")
@Controller
public class PageController {
    
    /**
     * @Author USER
     * @Description //二级页面跳转，例如 WEB-INF/user/login.js
     * @Date 12:45 2018/10/29
     * @Param [pageName1, pageName2]
     * @return org.springframework.web.servlet.ModelAndView
     **/
    @RequestMapping(value = "{pageName1}/{pageName2}", method = RequestMethod.GET)
    public ModelAndView toPage(@PathVariable("pageName1") String pageName1, @PathVariable("pageName2") String pageName2) {
        ModelAndView mv = new ModelAndView(pageName1+"/"+pageName2);
        System.out.println("ru========");
        return mv;
    }

}
