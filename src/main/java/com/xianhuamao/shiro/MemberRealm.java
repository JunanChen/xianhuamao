package com.xianhuamao.shiro;

import com.xianhuamao.pojo.Member;
import com.xianhuamao.service.MemberService;
import org.apache.shiro.authc.*;
import org.apache.shiro.authc.credential.CredentialsMatcher;
import org.apache.shiro.authc.credential.HashedCredentialsMatcher;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.apache.shiro.util.SimpleByteSource;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;

/**
 * 自定义的realm
 */
public class MemberRealm extends AuthorizingRealm {

    Logger logger = LoggerFactory.getLogger(MemberRealm.class);

    public MemberRealm(){
        // 更改匹配器为md5加密匹配器
        HashedCredentialsMatcher hashedCredentialsMatcher = new HashedCredentialsMatcher();
        hashedCredentialsMatcher.setHashAlgorithmName("md5");// 散列算法:这里使用MD5算法;
        hashedCredentialsMatcher.setHashIterations(3);// 散列的次数，比如散列两次，相当于md5(md5(""));
        this.setCredentialsMatcher(hashedCredentialsMatcher);
    }

    @Autowired
    private MemberService memberService;

    /**
     * 授权逻辑
     * @param principalCollection
     * @return
     */
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        return null;
    }


    /**
     * 认证逻辑
     * @param authenticationToken
     * @return
     * @throws AuthenticationException
     */
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {


        UsernamePasswordToken token = (UsernamePasswordToken)authenticationToken;

        Member member = memberService.getByNikName(token.getUsername());

        if(member == null)
            return null;

        SimpleAuthenticationInfo info =
                new SimpleAuthenticationInfo(token.getUsername(),
                        member.getMember_pwd(),new SimpleByteSource(ByteSource.Util.bytes(member.getMember_nikname()).toHex()),getName());

        return info;
    }

}
