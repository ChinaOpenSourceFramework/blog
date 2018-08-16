package com.opensource.blog.controller;

import com.opensource.blog.common.BaseResponse;
import com.opensource.blog.service.FtlService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * freemarker生成页面控制器
 */
@RestController
@RequestMapping("/ftl")
public class FtlController {
    private static final Logger logger = LoggerFactory.getLogger(FtlController.class);

    @Autowired
    private FtlService ftlService;

    @RequestMapping("/index")
    public String index(){
        ftlService.createIndex();
        return BaseResponse.successJson();
    }

    @RequestMapping("/tag")
    public String tag(){
        ftlService.createTag();
        return BaseResponse.successJson();
    }

    @RequestMapping("/write")
    public String write(){
        ftlService.write();
        return BaseResponse.successJson();
    }
}
