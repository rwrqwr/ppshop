package com.fff.entity;

/**
 * Created by USER on 2018/10/27.
 */
public class Address {
    private int userID;
    private String addressAd;
    private int addressStatus;
    private String telPhone;
    private String addressId;
    private String receiverName;

    public Address() {
    }

    public Address(String addressAd, int addressStatus, String telPhone, String receiverName) {
        this.addressAd = addressAd;
        this.addressStatus = addressStatus;
        this.telPhone = telPhone;
        this.receiverName = receiverName;
    }

    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public String getAddressAd() {
        return addressAd;
    }

    public void setAddressAd(String addressAd) {
        this.addressAd = addressAd;
    }

    public int getAddressStatus() {
        return addressStatus;
    }

    public void setAddressStatus(int addressStatus) {
        this.addressStatus = addressStatus;
    }

    public String getTelPhone() {
        return telPhone;
    }

    public void setTelPhone(String telPhone) {
        this.telPhone = telPhone;
    }

    public String getAddressId() {
        return addressId;
    }

    public void setAddressId(String addressId) {
        this.addressId = addressId;
    }

    public String getReceiverName() {
        return receiverName;
    }

    public void setReceiverName(String receiverName) {
        this.receiverName = receiverName;
    }
}
