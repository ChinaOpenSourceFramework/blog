package com.opensource.blog.shiro.realm;

import com.opensource.blog.entity.User;
import com.opensource.blog.repository.UserRepository;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;

public class UserRealm extends AuthorizingRealm {
	
	@Autowired
	private UserRepository userRepository;
	
	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
		return new SimpleAuthorizationInfo();
	}

	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
		//获取用户账号
        String loginName = token.getPrincipal().toString();
		User user  = this.userRepository.findByLoginName(loginName);
        if(user == null) {
            throw new UnknownAccountException();//没找到帐号
        }
      //将查询到的用户账号和密码存放到 authenticationInfo用于后面的权限判断。第三个参数传入realName。
        AuthenticationInfo authenticationInfo = new SimpleAuthenticationInfo(user, //用户名
                user.getPassword(),
                ByteSource.Util.bytes(user.getCredentialsSalt()),//salt=username+salt
                getName()  //realm name
                );
        return authenticationInfo ;
	}

}
