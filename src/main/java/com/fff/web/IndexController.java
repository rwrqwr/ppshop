package com.fff.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by fsh on 2018/12/12.
 */
@Controller
@RequestMapping("")
public class IndexController {

    @RequestMapping("")
    public String index(){

        return "index";
    }

}
