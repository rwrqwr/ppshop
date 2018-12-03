package com.fff.service.impl;

import com.fff.dao.GoodsCategoryDao;
import com.fff.service.GoodesCategoryService;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * Created by fsh on 2018/12/3.
 */
public class GoodsCategoryImpl implements GoodesCategoryService {

    @Autowired
    GoodsCategoryDao goodsCategoryDao;

}
