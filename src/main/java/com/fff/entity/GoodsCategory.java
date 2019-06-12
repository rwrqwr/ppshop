package com.fff.entity;

/**
 * Created by fsh on 2018/11/12.
 */
public class GoodsCategory {

    private String id;

    private String categoryName;

    private String categoryEname;

    private String idBid;

    private String bigcateName;

    public String getIdBid() {
        return idBid;
    }

    public void setIdBid(String idBid) {
        this.idBid = idBid;
    }

    public String getBigcateName() {
        return bigcateName;
    }

    public void setBigcateName(String bigcateName) {
        this.bigcateName = bigcateName;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getCategoryEname() {
        return categoryEname;
    }

    public void setCategoryEname(String categoryEname) {
        this.categoryEname = categoryEname;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }
}
