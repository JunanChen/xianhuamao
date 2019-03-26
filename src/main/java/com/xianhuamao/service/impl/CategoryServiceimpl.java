package com.xianhuamao.service.impl;


import com.xianhuamao.mapper.CategoryMapper;
import com.xianhuamao.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * category实现类
 */
@Service
public class CategoryServiceimpl implements CategoryService {



    @Autowired
    private CategoryMapper mapper;


}
