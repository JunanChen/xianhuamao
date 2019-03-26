package com.xianhuamao.mapper;

import com.xianhuamao.pojo.Contact;

/**
 * @author janhs
 * @date 19-3-13 下午9:07
 */
public interface ContactMapper {

    /**
     * 新增留言
     * @param contact
     * @return
     */
    Integer insert(Contact contact);

}
