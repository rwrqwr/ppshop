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
        u.setUserName("f3");
        u.setUserPassword("123");
        u.setUserTel("12322111234");
        u.setUserEmail("414122332@qq.com");
        int status = userDao.insertUser(u);
        System.out.println(status);
    }
}
