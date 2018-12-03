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
        List<Address> addressList = addressDao.queryByUserTel(userTel);
        for (Address address : addressList) {
            if (address.getAddressStatus() == 1) {
                address.setAddressAd(address.getAddressAd()+" (默认)");
            }
        }
        return addressList;
    }

    @Override
    public int addAddress(Address address, String userId) {
        return addressDao.addAddress(address,userId);
    }

    @Override
    public int updateAddress(String addressId, String userId) {
        return addressDao.updateAddress(addressId, userId);
    }

    @Override
    public int deleteAddress(String addressId) {
        return addressDao.deleteAddress(addressId);
    }
}
