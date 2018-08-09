package com.opensource.blog.service;

import com.opensource.blog.entity.User;
import com.opensource.blog.repository.UserRepository;
import com.opensource.blog.shiro.PasswordHelper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class UserService {
    private static final Logger logger = LoggerFactory.getLogger(UserService.class);

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private PasswordHelper passwordHelper;
    public void save(User user) {
        user.setSalt("salt");
        passwordHelper.encryptPassword(user);
        userRepository.save(user);
    }
}
