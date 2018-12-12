package com.fff.entity;

import java.math.BigDecimal;

/**
 * Created by fsh on 2018/11/14.
 */
public class GoodsSpu {

    private String id;

    private String spuNo;

    private String goodsName;

    private BigDecimal price;

    private String cateGoryId;

    private String brandId;

    private String description;

    private Integer spuQuantity;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getSpuNo() {
        return spuNo;
    }

    public void setSpuNo(String spuNo) {
        this.spuNo = spuNo;
    }

    public String getGoodsName() {
        return goodsName;
    }

    public void setGoodsName(String goodsName) {
        this.goodsName = goodsName;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public String getCateGoryId() {
        return cateGoryId;
    }

    public void setCateGoryId(String cateGoryId) {
        this.cateGoryId = cateGoryId;
    }

    public String getBrandId() {
        return brandId;
    }

    public void setBrandId(String brandId) {
        this.brandId = brandId;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Integer getSpuQuantity() {
        return spuQuantity;
    }

    public void setSpuQuantity(Integer spuQuantity) {
        this.spuQuantity = spuQuantity;
    }
}
