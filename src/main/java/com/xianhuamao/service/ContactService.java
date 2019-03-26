package com.xianhuamao.service;

import com.xianhuamao.pojo.Contact;

/**
 * @author janhs
 * @date 19-3-13 下午9:12
 */
public interface ContactService {

    /**
     * 添加留言
     * @param contact
     * @return
     */
    Integer add(Contact contact);

}
