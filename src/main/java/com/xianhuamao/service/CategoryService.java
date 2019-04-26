package com.xianhuamao.service;


import com.xianhuamao.pojo.Category;

import java.util.List;

/**
 * 书本类别service
 */
public interface CategoryService {

    /**
     * 通过id查分类名
     * @param categoryId
     * @return
     */
    String findNameByCategoryId(Integer categoryId);

    /**
     * 查询所有的分类
     * @return
     */
    List<Category> listCategory();

}
