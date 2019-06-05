package com.fff.interceptor;

import com.fff.entity.User;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by fsh on 2018/12/12.
 */
public class AdminInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o) throws Exception {

        User user = (User) httpServletRequest.getSession().getAttribute("user");
        if (user != null) {
            if (!user.getUserPre().equals("root")) {

                httpServletResponse.sendRedirect(httpServletRequest.getContextPath() + "/user/login");
            } else {

                return true;
            }
        }else {
            httpServletResponse.sendRedirect(httpServletRequest.getContextPath() + "/user/login");
        }


        return false;
    }

    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

    }
}
