package com.xianhuamao.shiro;

import org.apache.shiro.spring.web.ShiroFilterFactoryBean;
import org.apache.shiro.web.mgt.DefaultWebSecurityManager;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import java.util.LinkedHashMap;
import java.util.Map;

/**
 * shiro配置类
 */
@Configuration
public class ShiroConfig {


    @Bean
    public ShiroFilterFactoryBean getShiroFilterFactoryBean(@Qualifier("defaultWebSecurityManager")
                                                                   DefaultWebSecurityManager securityManager){

        ShiroFilterFactoryBean factoryBean = new ShiroFilterFactoryBean();

        factoryBean.setSecurityManager(securityManager);

        factoryBean.setLoginUrl("/loginRegister");

        Map<String,String> filterMap = new LinkedHashMap<>();


        filterMap.put("/cart","authc");            //查看购物车

        filterMap.put("/orderInfo","authc");        //支付订单

        filterMap.put("/*","anon");
        factoryBean.setFilterChainDefinitionMap(filterMap);

        return factoryBean;
    }




    @Bean(name = "defaultWebSecurityManager")
    public DefaultWebSecurityManager getDefaultWebSecurityManager(){

        DefaultWebSecurityManager securityManager = new DefaultWebSecurityManager();

        //关联realm
        securityManager.setRealm(getRealm());

        return securityManager;
    }


    @Bean()
    public MemberRealm getRealm(){
        MemberRealm memberRealm = new MemberRealm();
        return new MemberRealm();
    }



}
