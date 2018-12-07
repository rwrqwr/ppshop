package com.fff.service.impl;

import com.fff.dao.GoodsCategoryDao;
import com.fff.entity.Bigcate;
import com.fff.service.GoodsCategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by fsh on 2018/12/3.
 */
@Service
public class GoodsCategoryServiceImpl implements GoodsCategoryService {

    @Autowired
    GoodsCategoryDao goodsCategoryDao;


    @Override
    public List<Bigcate> queryBigcate() {

        List<Bigcate> bigcates =  goodsCategoryDao.queryBigcate();
        getdetil(bigcates);
        return bigcates;
    }


    /**
     * @Author fsh
     * @Description //往bigcate里添加详细的categoty数据
     * @Date 12:44 2018/12/4
     * @Param [list]
     * @return java.util.List<com.fff.entity.Bigcate>
     **/
    private List<Bigcate> getdetil(List<Bigcate> list){
        for (Bigcate bigcate: list) {
            bigcate.setCategoryList(goodsCategoryDao.queryDeyilCategory(bigcate.getIdBig()));
        }
        return list;
    }
}
