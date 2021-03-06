package com.opensource.blog.shiro;

import java.time.Duration;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;

import javax.servlet.Filter;

import com.opensource.blog.shiro.credentials.RetryLimitHashedCredentialsMatcher;
import com.opensource.blog.shiro.realm.UserRealm;
import org.apache.shiro.authc.credential.HashedCredentialsMatcher;
import org.apache.shiro.cache.ehcache.EhCacheManager;
import org.apache.shiro.spring.LifecycleBeanPostProcessor;
import org.apache.shiro.spring.web.ShiroFilterFactoryBean;
import org.apache.shiro.web.mgt.DefaultWebSecurityManager;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.redis.cache.RedisCacheConfiguration;
import org.springframework.data.redis.cache.RedisCacheManager;
import org.springframework.data.redis.cache.RedisCacheWriter;
import org.springframework.data.redis.connection.RedisConnectionFactory;


@Configuration
public class ShiroConfig {


    @Bean
    public EhCacheManager cacheManager() {
    	EhCacheManager ehCacheManager = new EhCacheManager();
        ehCacheManager.setCacheManagerConfigFile("classpath:ehcache.xml");
        return ehCacheManager;
    }

	@Bean
    public HashedCredentialsMatcher credentialsMatcher() {
		RetryLimitHashedCredentialsMatcher hashedCredentialsMatcher = new RetryLimitHashedCredentialsMatcher(cacheManager());
        hashedCredentialsMatcher.setHashAlgorithmName("md5");//散列算法:这里使用MD5算法;  
        hashedCredentialsMatcher.setHashIterations(2);//散列的次数，比如散列两次，相当于 md5(md5(""));
        hashedCredentialsMatcher.setStoredCredentialsHexEncoded(true);
        return hashedCredentialsMatcher;  
    }
	
	  
    @Bean  
    public UserRealm userRealm() {
    	UserRealm userRealm = new UserRealm();  
    	userRealm.setCredentialsMatcher(credentialsMatcher());
    	userRealm.setCachingEnabled(true);
    	userRealm.setAuthenticationCachingEnabled(true);
    	userRealm.setAuthenticationCacheName("authenticationCache");
    	userRealm.setAuthorizationCachingEnabled(true);
    	userRealm.setAuthorizationCacheName("authorizationCache");
        return userRealm;  
    }
    
    @Bean
    public DefaultWebSecurityManager securityManager() {
        DefaultWebSecurityManager securityManager = new DefaultWebSecurityManager();  
        securityManager.setRealm(userRealm());
        securityManager.setCacheManager(cacheManager());
        return securityManager;  
    }  
    
    @Bean
    public SimpleShiroFilter simpleShiroFilter() {
    	return new SimpleShiroFilter();
    }
  
    @Bean  
    public ShiroFilterFactoryBean shirFilter() {
        ShiroFilterFactoryBean shiroFilterFactoryBean = new ShiroFilterFactoryBean();  
        shiroFilterFactoryBean.setSecurityManager(securityManager());
        shiroFilterFactoryBean.setLoginUrl("/login");
        shiroFilterFactoryBean.setSuccessUrl("/");
        shiroFilterFactoryBean.setUnauthorizedUrl("/unauth");

        Map<String, Filter> filters = new HashMap<>();
        filters.put("SimpleShiroFilter", simpleShiroFilter());
        filters.put("HttpAjaxAuthcFilter", new HttpAjaxAuthcFilter());
		shiroFilterFactoryBean.setFilters(filters);
        
        Map<String, String> filterChainDefinitionMap = new LinkedHashMap<>();
        //注意过滤器配置顺序 不能颠倒  
        filterChainDefinitionMap.put("/test", "authc");

        filterChainDefinitionMap.put("/login", "anon");
        filterChainDefinitionMap.put("/register", "anon");
        filterChainDefinitionMap.put("/user/save", "anon");
        filterChainDefinitionMap.put("/upload", "anon");
        filterChainDefinitionMap.put("/validateCode", "anon");
     //   filterChainDefinitionMap.put("/**", "anon");
        filterChainDefinitionMap.put("/blog/likeBlog", "HttpAjaxAuthcFilter");
        filterChainDefinitionMap.put("/blog/collectBlog", "HttpAjaxAuthcFilter");
        filterChainDefinitionMap.put("/user/followUser", "HttpAjaxAuthcFilter");
        
        filterChainDefinitionMap.put("/**", "anon");
        shiroFilterFactoryBean.setFilterChainDefinitionMap(filterChainDefinitionMap);  
        return shiroFilterFactoryBean;  
    }  
    
    @Bean
    public LifecycleBeanPostProcessor lifecycleBeanPostProcessor(){
        return new LifecycleBeanPostProcessor();  
    }  
}
