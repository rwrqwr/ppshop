package com.fff.entity;

import java.math.BigDecimal;

/**
 * Created by fsh on 2018/12/5.
 * 购物车中单个商品的实体类
 */
public class Shoppingcate {

    private String shoppingId;

    private String userId;

    private BigDecimal price;

    private String spuId;

    private String goodsName;

    private int quantity;

    private int status;

    public String getShoppingId() {
        return shoppingId;
    }

    public void setShoppingId(String shoppingId) {
        this.shoppingId = shoppingId;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getSpuId() {
        return spuId;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public String getGoodsName() {
        return goodsName;
    }

    public void setGoodsName(String goodsName) {
        this.goodsName = goodsName;
    }

    public void setSpuId(String spuId) {
        this.spuId = spuId;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
}
