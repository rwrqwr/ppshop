package com.fff.dao;

import com.fff.entity.Address;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by USER on 2018/11/5.
 */
public interface AddressDao {

    /**
     * @Author fsh
     * @Description //根据用户的手机号查询出用户id，联合查询出用户的取货地址
     * @Date 20:30 2018/11/7
     * @Param [Tel]
     * @return java.util.List<com.fff.entity.Address>
     **/
    List<Address> queryByUserTel(String userTel);

    /**
     * @Author fsh
     * @Description //插入新地址，根据前台获取当前用户的手机号进行查询
     * @Date 22:54 2018/11/7
     * @Param [address, userTel]
     * @return int
     **/
    int addAddress(@Param("address") Address address,@Param("userTel") String userTel);

    /**
     * @Author fsh
     * @Description //更改默认地址，status设为1之前的地址的status设为0
     * @Date 22:57 2018/11/7
     * @Param [address, userTel]
     * @return int
     **/
    int updateAddress(@Param("addressId")String addressId,@Param("userTel")String userTel);

    int deleteAddress(String addressId);
}
