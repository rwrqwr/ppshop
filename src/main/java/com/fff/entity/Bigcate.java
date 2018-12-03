package com.fff.entity;

import java.util.List;

/**
 * Created by fsh on 2018/12/3.
 */
public class Bigcate {

    private int id;

    private List<GoodsBrand> goodsBrandList;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public List<GoodsBrand> getGoodsBrandList() {
        return goodsBrandList;
    }

    public void setGoodsBrandList(List<GoodsBrand> goodsBrandList) {
        this.goodsBrandList = goodsBrandList;
    }
}
