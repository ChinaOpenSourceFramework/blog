package com.opensource.blog.service;

import com.opensource.blog.entity.User;
import com.opensource.blog.repository.UserRepository;
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
    public String test(){
        List<User> u = userRepository.findAll();
        Optional<User> uu = userRepository.findById(1l);
        logger.info("xxxxxxxxxxxx"+uu.get().getNickname());
        return "123";
    }
}