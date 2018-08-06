package com.opensource.blog.common;

import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

@Component
@ConfigurationProperties(prefix = "blog")
public class BlogProperties {

    private String webSite;
    private String webUrl;
    private Boolean cacheFtl = Boolean.FALSE;

    public String getWebSite() {
        return webSite;
    }

    public void setWebSite(String webSite) {
        this.webSite = webSite;
    }

    public String getWebUrl() {
        return webUrl;
    }

    public void setWebUrl(String webUrl) {
        this.webUrl = webUrl;
    }

    public Boolean getCacheFtl() {
        return cacheFtl;
    }

    public void setCacheFtl(Boolean cacheFtl) {
        this.cacheFtl = cacheFtl;
    }
}
