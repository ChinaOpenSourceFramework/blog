package com.opensource.blog.service;

import com.opensource.blog.entity.Blog;
import com.opensource.blog.repository.BlogRepository;
import com.opensource.blog.shiro.ShiroUser;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.UUID;

@Service
public class BlogService {

    private static final Logger logger = LoggerFactory.getLogger(BlogService.class);

    @Autowired
    private BlogRepository blogRepository;

    public void save(Blog blog){
        blog.setUuid(UUID.randomUUID().toString());
        blog.setCreateUserId(ShiroUser.getUserId());
        blog.setCreateTime(new Date());
        blog.setUpdateTime(new Date());
        blog.setDeleteFlag(false);
        blog.setVersion(1);
        this.blogRepository.save(blog);
    }
}
