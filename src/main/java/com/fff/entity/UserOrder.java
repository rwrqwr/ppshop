package com.fff.entity;

import java.util.Date;

/**
 * Created by fsh on 2019/5/20.
 */
public class UserOrder {

    private String orderId;
    private String userId;

    private String goodsName;

    private String price;

    private String spuId;

    private int quantity;

    private Date finalTime;

    private int status;

    public UserOrder() {
    }

    public UserOrder(String userId, String spuId, int quantity, Date finalTime, int status) {
        this.userId = userId;
        this.spuId = spuId;
        this.quantity = quantity;
        this.finalTime = finalTime;
        this.status = status;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getGoodsName() {
        return goodsName;
    }

    public void setGoodsName(String goodsName) {
        this.goodsName = goodsName;
    }

    public String getOrderId() {
        return orderId;
    }

    public void setOrderId(String orderId) {
        this.orderId = orderId;
    }

    public Date getFinalTime() {
        return finalTime;
    }

    public void setFinalTime(Date finalTime) {
        this.finalTime = finalTime;
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
