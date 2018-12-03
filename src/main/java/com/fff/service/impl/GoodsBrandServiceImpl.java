package com.fff.service.impl;

import com.fff.dao.GoodsBrandDao;
import com.fff.service.GoodsBrandService;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * Created by fsh on 2018/12/3.
 */
public class GoodsBrandServiceImpl implements GoodsBrandService {

    @Autowired
    GoodsBrandDao goodsBrandDao;

}
