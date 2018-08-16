package com.opensource.blog.service;

import com.opensource.blog.entity.Blog;
import com.opensource.blog.repository.BlogRepository;
import com.opensource.blog.shiro.ShiroUser;
import com.opensource.blog.util.FreemarkerHelper;
import com.opensource.blog.util.PathUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.File;
import java.util.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

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
        blog.setContentPart(contentPart(blog.getContent()));
        blog.setImgUrl(getImgSrc(blog.getContent()).get(0));
        createPage(blog);
        this.blogRepository.save(blog);
    }

    private void createPage(Blog blog){
        logger.info("开始创建详情页");
        Map<String, Object> dataSource = new HashMap<>();
        dataSource.put("blog",blog);
        String path = PathUtil.blogPath()+UUID.randomUUID().toString();
        FreemarkerHelper.createHtml("detail",dataSource, path);
        blog.setLocation((path+".html").replaceAll("\\\\","/"));
    }
    //从html中提取纯文本
    private static String contentPart(String content) {
        String txtContent = content.replaceAll("</?[^>]+>", ""); //剔出<html>的标签
        txtContent = txtContent.replaceAll("<a>\\s*|\t|\r|\n</a>", "");//去除字符串中的空格,回车,换行符,制表符
        return txtContent.length() > 100 ? txtContent.substring(0,100) :txtContent;
    }
    /**
     * 获取img标签中的src值
     * @param content
     * @return
     */
    private static List<String> getImgSrc(String content){
        List<String> list = new ArrayList<String>();
        //目前img标签标示有3种表达式
        //<img alt="" src="1.jpg"/>   <img alt="" src="1.jpg"></img>     <img alt="" src="1.jpg">
        //开始匹配content中的<img />标签
        Pattern p_img = Pattern.compile("<(img|IMG)(.*?)(/>|></img>|>)");
        Matcher m_img = p_img.matcher(content);
        boolean result_img = m_img.find();
        if (result_img) {
            while (result_img) {
                //获取到匹配的<img />标签中的内容
                String str_img = m_img.group(2);
                //开始匹配<img />标签中的src
                Pattern p_src = Pattern.compile("(src|SRC)=(\"|\')(.*?)(\"|\')");
                Matcher m_src = p_src.matcher(str_img);
                if (m_src.find()) {
                    String str_src = m_src.group(3);
                    list.add(str_src);
                }
                //结束匹配<img />标签中的src
                //匹配content中是否存在下一个<img />标签，有则继续以上步骤匹配<img />标签中的src
                result_img = m_img.find();
            }
        }
        if(list.size()==0){
            list.add("http://127.0.0.1/img/logo-s.png");
        }
        return list;
    }

}
