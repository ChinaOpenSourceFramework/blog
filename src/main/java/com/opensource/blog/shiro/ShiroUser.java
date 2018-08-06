package com.opensource.blog.shiro;

import com.opensource.blog.entity.User;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;

public class ShiroUser {

    public static User getUser(){
        Subject subject= SecurityUtils.getSubject();
        if(subject==null)
            return null;
        return (User) subject.getPrincipal();
    }

    public static Long getUserId(){
        return getUser().getId();
    }
}
