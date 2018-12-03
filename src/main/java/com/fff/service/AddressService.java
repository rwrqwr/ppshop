package com.fff.service;

import com.fff.entity.Address;

import java.util.List;

/**
 * Created by USER on 2018/11/8.
 */
public interface AddressService {

    /**
     * @Author fsh
     * @Description //根据用户的电话查询出所有的收货地址
     * @Date 14:55 2018/11/8
     * @Param [Tel]
     * @return java.util.List<com.fff.entity.Address>
     **/
    List<Address> queryByUserTel(String userTel);

    /**
     * @Author fsh
     * @Description //新增收货地址
     * @Date 14:55 2018/11/8
     * @Param [address, userTel]
     * @return int
     **/
    int addAddress(Address address,String userId);

    /**
     * @Author fsh
     * @Description //更改默认地址
     * @Date 14:56 2018/11/8
     * @Param [addressId, userTel]
     * @return int
     **/
    int updateAddress(String addressId,String userId);

    int deleteAddress(String addressId);
}
