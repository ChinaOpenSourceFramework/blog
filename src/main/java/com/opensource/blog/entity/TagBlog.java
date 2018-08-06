package com.opensource.blog.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.io.Serializable;
import java.util.Date;

@Entity
public class TagBlog implements Serializable{

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY )
    private Long id;

    private String blogUuid;

    private Long tagUuid;

    private Date createTime;

    public String getBlogUuid() {
        return blogUuid;
    }

    public void setBlogUuid(String blogUuid) {
        this.blogUuid = blogUuid;
    }

    public Long getTagUuid() {
        return tagUuid;
    }

    public void setTagUuid(Long tagUuid) {
        this.tagUuid = tagUuid;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
}
