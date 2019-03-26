package com.xianhuamao.service.impl;

import com.xianhuamao.mapper.ContactMapper;
import com.xianhuamao.pojo.Contact;
import com.xianhuamao.service.ContactService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author janhs
 * @date 19-3-13 下午9:13
 */
@Service
public class ContactServiceImpl implements ContactService {


    @Autowired
    private ContactMapper mapper;

    @Override
    public Integer add(Contact contact) {
        return mapper.insert(contact);
    }
}
