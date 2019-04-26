package com.xianhuamao.service.impl;


import com.xianhuamao.mapper.CategoryMapper;
import com.xianhuamao.pojo.Category;
import com.xianhuamao.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * category实现类
 */
@Service
public class CategoryServiceimpl implements CategoryService {

    @Autowired
    private CategoryMapper mapper;

    @Override
    public String findNameByCategoryId(Integer categoryId) {
        return mapper.findById(categoryId).getCategory_name();
    }

    @Override
    public List<Category> listCategory() {
        return mapper.selectAll();
    }
}
