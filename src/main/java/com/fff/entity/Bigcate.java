package com.fff.entity;

import java.util.List;

/**
 * Created by fsh on 2018/12/3.
 */
public class Bigcate {

    private String idBig;

    private String bigcateName;

    private List<GoodsCategory> categoryList;

    public String getIdBig() {
        return idBig;
    }

    public void setIdBig(String idBig) {
        this.idBig = idBig;
    }

    public String getBigcateName() {
        return bigcateName;
    }

    public void setBigcateName(String bigcateName) {
        this.bigcateName = bigcateName;
    }

    public List<GoodsCategory> getCategoryList() {
        return categoryList;
    }

    public void setCategoryList(List<GoodsCategory> categoryList) {
        this.categoryList = categoryList;
    }
}
