package com.xianhuamao.service.impl;


import com.xianhuamao.mapper.GoodsMapper;
import com.xianhuamao.pojo.Category;
import com.xianhuamao.pojo.Goods;
import com.xianhuamao.service.GoodsService;
import org.apache.commons.beanutils.BeanUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;

@Service
public class GoodsServiceImpl implements GoodsService {


    Logger logger = LoggerFactory.getLogger(GoodsServiceImpl.class);

    @Autowired
    private GoodsMapper mapper;

    @Override
    public List<Goods> find16Goods() {
        return mapper.find16Goods();
    }

    @Override
    public Goods getByGoods_id(Integer goods_id) {

        HashMap<String, Object> map = mapper.findGoodsCategoryByGoods_id(goods_id);

        Goods goods = new Goods();
        Category category = new Category();

        try {
            BeanUtils.populate(goods, map);
            BeanUtils.populate(category, map);
        }catch (Exception e){
            logger.error("BeanUtils error!");
        }

        goods.setCategory(category);

        return goods;
    }


    @Override
    public List<Goods> getAll() {
        return mapper.findAll();
    }

    @Override
    public Integer addLike(Integer goods_id) {
        return mapper.updateLike(goods_id);
    }

    @Override
    public List<Goods> listByCategory(Integer categoryId) {
        return mapper.selectByCategory(categoryId);
    }

    @Override
    public List<Goods> listBySearch(String search) {
        return mapper.selectByLikeNameOrAnthor(search);
    }
}
