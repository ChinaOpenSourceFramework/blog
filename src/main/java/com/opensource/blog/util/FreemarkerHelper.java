package com.opensource.blog.util;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import freemarker.template.Configuration;
import freemarker.template.DefaultObjectWrapper;
import freemarker.template.Template;

@Component
public class FreemarkerHelper {

    private static final Logger LOGGER = LoggerFactory.getLogger(FreemarkerHelper.class);

    private static Map<String, Template> template_cache = new HashMap<>();

    private static Configuration defaultCfg;

    private static String webSite;

    private static String webUrl;

    private static boolean cacheFtl;

    @Value("${blog.web-site}")
    public void setWebSite(String webSite) {
        FreemarkerHelper.webSite = webSite;
    }
    @Value("${blog.web-url}")
    public void setWebUrl(String webUrl) {
        FreemarkerHelper.webUrl = webUrl;
    }
    @Value("${blog.cache-ftl}")
    public void setCacheFtl(boolean cacheFtl) {
        FreemarkerHelper.cacheFtl = cacheFtl;
    }


    static{
        // 创建一个合适的Configration对象
        defaultCfg = new Configuration(Configuration.VERSION_2_3_23);
        defaultCfg.setClassForTemplateLoading(FreemarkerHelper.class,"/templates");
        defaultCfg.setObjectWrapper(new DefaultObjectWrapper(Configuration.VERSION_2_3_23));
        defaultCfg.setDefaultEncoding("UTF-8"); // 这个一定要设置，不然在生成的页面中 会乱码
    }

    /**
     * 生成静态HTMl
     *
     * @param ftlName
     *            模板名称（有目录的需要加上目录）
     * @param dataSource
     *            数据源
     * @param htmlName
     *            生成html静态文件名
     */
    public static boolean createHtml(String ftlName, Map<String, Object> dataSource, String htmlName) {
        LOGGER.info("生成页面  ftl名字：{} ,  html名字：{}", ftlName,htmlName);
        //添加默认后缀
        ftlName += ".ftl";
        htmlName += ".html";
        try {

            htmlName = webSite+ htmlName;
            File file = new File(htmlName);
            if(!file.exists()){
                file.getParentFile().mkdirs();
            }
            //动态资源路径
            dataSource.put("staticUrl",webUrl);
            // 获取或创建一个模版。
            Template template = cacheFtl?getTemplateFromCache(ftlName):getTemplate(ftlName);
            Writer writer = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(htmlName), "UTF-8"));

            template.process(dataSource, writer);
            writer.close();
            LOGGER.info("生成页面：{}", htmlName);
            return true;
        } catch (Exception e) {
            LOGGER.error("生成页面报错", e);
            return false;
        }
    }

    /**
     * 正式环境环境  设置缓存
     * @param ftlName 模板名称
     */
    private static Template getTemplateFromCache(String ftlName){
        if(template_cache.get(ftlName) == null){
            Template template;
            try {
                template = defaultCfg.getTemplate(ftlName);
                template_cache.put(ftlName, template);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return template_cache.get(ftlName);
    }

    /**
     * 开发环境环境
     * @param ftlName 模板名称
     */
    private static Template getTemplate(String ftlName){
        Template template = null;
        try {
            template = defaultCfg.getTemplate(ftlName);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return template;
    }
}