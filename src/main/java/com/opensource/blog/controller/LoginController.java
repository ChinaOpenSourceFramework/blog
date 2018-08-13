package com.opensource.blog.controller;

import com.opensource.blog.common.BaseResponse;
import com.opensource.blog.common.ErrorMessage;
import com.opensource.blog.service.UserService;
import com.opensource.blog.shiro.ShiroUser;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.Map;


/**
 * 登录控制器
 */
@RestController
public class LoginController {
    private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
    @Autowired
    private UserService userService;
    @RequestMapping(value = "/test",method = RequestMethod.GET)
    public String test(){
        logger.info("测试方法,用户ID"+ShiroUser.getUserId());
        return BaseResponse.successJson();
    }

    @RequestMapping(value = "/login",method = RequestMethod.POST)
    public String login(String loginName ,String password ,@RequestParam(defaultValue = "false") Boolean remember){
        logger.info("登录信息 ————>  用户名:{},密码:{},记住我:{}",loginName,password,remember);
        Subject user = SecurityUtils.getSubject();
        UsernamePasswordToken token = new UsernamePasswordToken(loginName,password);
        Map<String,String> param = new HashMap<>();
        try
        {
            // 会调用 shiroDbRealm 的认证方法
            user.login(token);
        }catch (UnknownAccountException e){
            logger.error(e.getMessage(), e);
            return BaseResponse.errorJson(ErrorMessage.ERR_PARAM_ERROR);
        }catch (Exception e){
            logger.error(e.getMessage(), e);
            return BaseResponse.errorJson(ErrorMessage.ERR_PARAM_ERROR);
        }
        return BaseResponse.successJson(ShiroUser.getUser());
    }
}
