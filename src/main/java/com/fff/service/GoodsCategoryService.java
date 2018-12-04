package com.fff.service;

import com.fff.dao.GoodsCategoryDao;
import com.fff.entity.Bigcate;
import com.fff.entity.GoodsCategory;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * Created by fsh on 2018/12/3.
 */
public interface GoodsCategoryService {

    List<Bigcate> queryBigcate();


}
