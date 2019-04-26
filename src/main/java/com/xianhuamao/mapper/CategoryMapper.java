package com.xianhuamao.mapper;

import com.xianhuamao.pojo.Category;

import java.util.List;

/**
 * <p>
 *     mapper
 * </p>
 *
 * @author janhs
 * @date 19-3-11 下午6:01
 */
public interface CategoryMapper {

    /**
     * 通过id查
     * @param catgoryId
     * @return
     */
    Category findById(Integer catgoryId);

    /**
     * 查询所有的类别
     * @return
     */
    List<Category> selectAll();
}
