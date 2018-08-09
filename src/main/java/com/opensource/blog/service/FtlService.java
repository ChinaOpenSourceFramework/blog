package com.opensource.blog.service;

import com.opensource.blog.util.FreemarkerHelper;
import com.opensource.blog.util.PathUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

@Service
public class FtlService {
    private static final Logger logger = LoggerFactory.getLogger(FtlService.class);

    /**
     * 创建首页
     * @return 默认true 创建成功
     */
    public Boolean createIndex(){
        logger.info("开始创建首页");
        Map<String, Object> dataSource = new HashMap<>();
        FreemarkerHelper.createHtml("index",dataSource,"index");
        return true;
    }

    public Boolean createBlog(){
        logger.info("开始创建详情页");
        Map<String, Object> dataSource = new HashMap<>();
        String path = PathUtil.blogPath()+UUID.randomUUID().toString();
        FreemarkerHelper.createHtml("detail",dataSource, path);
        return true;
    }

    public Boolean createTag(){
        logger.info("开始创建标签页");
        Map<String, Object> dataSource = new HashMap<>();
        String path = PathUtil.tagPath()+UUID.randomUUID().toString();
        FreemarkerHelper.createHtml("tag",dataSource, path);
        return true;
    }

    public Boolean write() {
        logger.info("创建blog页面");
        Map<String, Object> dataSource = new HashMap<>();
        FreemarkerHelper.createHtml("write",dataSource,"write");
        return true;
    }
}
