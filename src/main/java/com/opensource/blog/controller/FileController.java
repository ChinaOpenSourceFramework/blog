package com.opensource.blog.controller;

import com.alibaba.fastjson.JSON;
import com.opensource.blog.util.PathUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

@RestController
public class FileController {

    private static final Logger logger = LoggerFactory.getLogger(FileController.class);
   @Value("${blog.web-site}")
    private String webSite;
    @Value("${blog.web-url}")
    private String webUrl;

    // 单文件上传
    @RequestMapping(value = "/upload", method = RequestMethod.POST)
    public String upload(@RequestParam("file") MultipartFile file) {
        try {
            if (file.isEmpty()) {
                return "{\"success\":\"" + false + "\"}";
            }
            // 获得文件后缀名
            String suffix = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));
            String path = PathUtil.imgPath()+ UUID.randomUUID().toString() + suffix;
            // 设置文件存储路径
            File dest = new File(webSite + path);
            // 检测是否存在目录
            if (!dest.getParentFile().exists()) {
                dest.getParentFile().mkdirs();// 新建文件夹
            }
            file.transferTo(dest);// 文件写入

            String urlPath = path.replace("\\", "/");

            Map<String,String> result = new HashMap<>();
            result.put("success","true");
            result.put("file_path","http://"+webUrl+"/"+urlPath);
            return JSON.toJSONString(result);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return "{\"success\":\"" + false + "\"}";
    }
}
