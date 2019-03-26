package com.xianhuamao.mapper;

import com.xianhuamao.pojo.Member;

/**
 * @author janhs
 * @date 19-3-11 下午6:01
 */
public interface MemberMapper {


    /**
     * 通过昵称查找会员
     * @param nikName
     * @return
     */
    Member findByNikName(String nikName);

    /**
     * 向member添加一条数据
     * @param member
     * @return
     */
    Integer insert(Member member);

}
