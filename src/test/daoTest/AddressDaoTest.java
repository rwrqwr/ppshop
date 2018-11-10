package daoTest;

import com.fff.dao.AddressDao;
import com.fff.entity.Address;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by USER on 2018/11/7.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ "classpath:spring/spring-dao.xml" })
public class AddressDaoTest {

    @Autowired
    AddressDao addressDao;

    @Test
    public void queryById(){
        List<Address> addressList = addressDao.queryByUserTel("12312123441");

        for (Address address : addressList) {
            System.out.println(address.getAddressStatus());
        }

    }

    @Test
    public void addAddress(){
        Address address = new Address("湖北省十堰市发发生区",0,"12388999897","锻炼");
        int status = addressDao.addAddress(address,"12312123441");
        System.out.println(status);
    }

    @Test
    public void updateAddress(){
        int status = addressDao.updateAddress("1","12312123441");
        System.out.println(status);
    }
}
