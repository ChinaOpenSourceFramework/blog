package com.opensource.blog.shiro;

import java.io.IOException;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.opensource.blog.common.BaseResponse;
import com.opensource.blog.common.ErrorMessage;
import org.apache.shiro.web.filter.authc.UserFilter;

public class HttpAjaxAuthcFilter extends UserFilter {
	
	@Override
    protected boolean onAccessDenied(ServletRequest request, ServletResponse response) throws IOException {  
  
        HttpServletRequest httpRequest = (HttpServletRequest) request;  
        HttpServletResponse httpResponse = (HttpServletResponse) response;  
        if (httpRequest.getHeader("X-Requested-With") != null) {
            response.setContentType("text/html;charset=UTF-8");
            response.setCharacterEncoding("UTF-8");
            response.getWriter().print(BaseResponse.errorJson(ErrorMessage.ERR_SHIRO_NO_LOGIN));
         } else {  
        	 saveRequestAndRedirectToLogin(httpRequest, httpResponse);
         }
        return false;  
    }
}  