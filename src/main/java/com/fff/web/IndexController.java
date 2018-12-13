package com.fff.web;

import com.fff.entity.Shoppingcate;
import com.fff.service.GoodsCategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by fsh on 2018/12/12.
 */
@Controller
@RequestMapping("")
public class IndexController {

    @Autowired
    GoodsCategoryService goodsCategoryService;

    @RequestMapping("")
    public String baseindex(Model model,HttpSession session){

        model.addAttribute("bigcates",goodsCategoryService.queryBigcate());
        List<Shoppingcate> shoppingcateMap = (List<Shoppingcate>) session.getAttribute("shoppingcate");
        if(shoppingcateMap == null){
            shoppingcateMap = new ArrayList<>();
        }

        return "index";
    }

}
