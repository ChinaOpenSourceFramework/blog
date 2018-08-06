package com.opensource.blog.repository;

import com.opensource.blog.BlogApplicationTests;
import com.opensource.blog.entity.User;
import com.opensource.blog.shiro.PasswordHelper;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.Date;

public class UserRepositoryTest extends BlogApplicationTests {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private PasswordHelper passwordHelper;

    @Test
    public void testSave() {
        User u = new User();
        u.setLoginName("li");

        u.setPassword("123456");
        u.setPhone("18356095840");
        u.setNickname("沙沙");
        u.setCreateTime(new Date());
        u.setUpdateTime(new Date());
        u.setEmail("2452403243@qq.com");
        u.setSalt("salt");
        passwordHelper.encryptPassword(u);
        userRepository.save(u);
        User user = userRepository.findByLoginName("shasha");
        Assert.assertEquals("shasha",user.getLoginName());


    }
}
