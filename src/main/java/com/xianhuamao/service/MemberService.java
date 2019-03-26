package com.xianhuamao.service;


import com.xianhuamao.pojo.Member;

/**
 * 会员service
 */
public interface MemberService{

    /**
     * 通过昵称查找会员
     * @param nikName
     * @return
     */
    Member getByNikName(String nikName);

    /**
     * 添加新会员
     * @param member
     * @return
     */
    Integer addMember(Member member);

}
