package daoTest;

import com.fff.dao.UserDao;
import com.fff.entity.User;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 * Created by USER on 2018/10/27.
 */

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ "classpath:spring/spring-dao.xml", "classpath:spring/spring-service.xml" })
public class UserDaoTest {

    @Autowired
    private UserDao userDao;


    @Test
    public void queryByTelTest(){
        User u = userDao.queryByTel("13511222705");
        System.out.println(u.getUserName());
    }

    @Test
    public void insertTest(){
        User u = new User();
        u.setUserName("f6");
        u.setUserPassword("123");
        u.setUserTel("123541211");

        int status = userDao.insertUser(u);
        System.out.println(status);
    }

    @Test
    public void updateTest(){
        User u = new User();
        u.setUserName("f6");
        u.setUserPassword("123");
        u.setUserTel("12312123441");

        userDao.updateByTel(u);
    }

}
