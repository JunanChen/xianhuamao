package com.xianhuamao.mapper;

import com.xianhuamao.pojo.Goods;

import java.util.HashMap;
import java.util.List;

/**
 * @author janhs
 * @date 19-3-11 下午6:01
 */
public interface GoodsMapper {

    /**
     * 返回数据库新增的16本书
     * @return
     */
    List<Goods> find16Goods();

    /**
     * 通过goods_id查找goods
     * @param goods_id
     * @return
     */
    Goods findByGoods_id(Integer goods_id);

    /**
     * 通过goods_id查询goods和所属类别
     * @param goods_id
     * @return
     */
    HashMap<String,Object> findGoodsCategoryByGoods_id(Integer goods_id);

    /**
     * 获取所有书本
     * @return
     */
    List<Goods> findAll();

    /**
     * 新增喜欢
     * @return
     */
    Integer updateLike(Integer goods_id);
}
