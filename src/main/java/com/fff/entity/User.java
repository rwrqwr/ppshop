package com.fff.entity;

/**
 * Created by USER on 2018/10/27.
 */
public class User {
    private String userId;
    private String userName;
    private String userPassword;

    private String userTel;
    private String userPre;

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserPassword() {
        return userPassword;
    }

    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword;
    }



    public String getUserTel() {
        return userTel;
    }

    public void setUserTel(String userTel) {
        this.userTel = userTel;
    }

    public String getUserPre() {
        return userPre;
    }

    public void setUserPre(String userPre) {
        this.userPre = userPre;
    }
}
