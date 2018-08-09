package com.opensource.blog.controller;

import com.alibaba.fastjson.JSON;
import com.opensource.blog.common.BaseResponse;
import com.opensource.blog.entity.Blog;
import com.opensource.blog.entity.User;
import com.opensource.blog.service.BlogService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/blog")
public class BlogController {

    private static final Logger logger = LoggerFactory.getLogger(BlogController.class);

    @Autowired
    private BlogService blogService;

    @RequestMapping(value = "/save",method = RequestMethod.POST)
    public String save(Blog blog){
        logger.info("注册用户 {}", JSON.toJSONString(blog));
        blogService.save(blog);
        return BaseResponse.successJson();
    }
}
