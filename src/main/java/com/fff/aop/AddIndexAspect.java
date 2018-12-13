package com.fff.aop;


import com.fff.entity.Bigcate;
import com.fff.entity.GoodsSpu;
import com.fff.service.GoodsCategoryService;
import com.fff.service.GoodsSpuService;
import com.sun.org.apache.xpath.internal.operations.Mod;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.test.web.ModelAndViewAssert;
import org.springframework.ui.Model;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by fsh on 2018/12/13.
 */
@Aspect
@Component
public class AddIndexAspect {

    @Autowired
    GoodsSpuService goodsSpuService;

    @Autowired
    GoodsCategoryService goodsCategoryService;

    @Before("execution(* com.fff.web.*.base*(..))")
    public void before(JoinPoint joinPoint){

        System.out.println("...f==");
        Object[] args = joinPoint.getArgs();

        List<Bigcate> bigcates = goodsCategoryService.queryBigcate();

    }


}
