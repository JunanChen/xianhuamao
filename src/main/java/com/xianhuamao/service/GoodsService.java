package com.xianhuamao.service;


import com.xianhuamao.pojo.Goods;

import java.util.List;

/**
 * 书本service
 */
public interface GoodsService {

    /**
     * 获取数据库新增的16本书
     * @return
     */
    List<Goods> find16Goods();

    /**
     * 通过goods_id查找goods
     * @param goods_id
     * @return
     */
    Goods getByGoods_id(Integer goods_id);

    /**
     * 获取所有的书本信息
     * @return
     */
    List<Goods> getAll();

    /**
     * 对某本书新增喜欢
     * @param goods_id
     * @return
     */
    Integer addLike(Integer goods_id);



}
