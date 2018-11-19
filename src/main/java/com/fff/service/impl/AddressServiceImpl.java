package com.fff.service.impl;

import com.fff.dao.AddressDao;
import com.fff.entity.Address;
import com.fff.service.AddressService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by USER on 2018/11/8.
 */
@Service
public class AddressServiceImpl implements AddressService {

    @Autowired
    AddressDao addressDao;

    @Override
    public List<Address> queryByUserTel(String userTel) {
        return addressDao.queryByUserTel(userTel);
    }

    @Override
    public int addAddress(Address address, String userTel) {
        return addressDao.addAddress(address,userTel);
    }

    @Override
    public int updateAddress(String addressId, String userTel) {
        return addressDao.updateAddress(addressId, userTel);
    }

    @Override
    public int deleteAddress(String addressId) {
        return addressDao.deleteAddress(addressId);
    }
}
