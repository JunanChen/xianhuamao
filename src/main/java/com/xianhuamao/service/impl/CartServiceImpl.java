package com.xianhuamao.service.impl;

import com.xianhuamao.mapper.CartMapper;
import com.xianhuamao.pojo.Cart;
import com.xianhuamao.pojo.Goods;
import com.xianhuamao.service.CartService;
import com.xianhuamao.utils.TimeUtil;
import org.apache.commons.beanutils.BeanUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;


@Service
public class CartServiceImpl implements CartService {

    private Logger logger = LoggerFactory.getLogger(CartServiceImpl.class);

    @Autowired
    private CartMapper mapper;


    @Override
    public Integer add(Cart cart) {

        //验证数据库是否已经存在该数据，如存在，加1
        Cart cart1 = mapper.findByGoodsIdMemberId(cart.getCart_goods_id(),cart.getCart_member_id());
        if(cart1 == null){
            //购物车不存在
            cart.setCart_goods_count(1);

            //加入购物车时间
            cart.setCart_add_time(TimeUtil.getTimeStamp());

            return mapper.insert(cart);

        } else {
            //购物车已存在

            cart.setCart_id(cart1.getCart_id());

            return update(cart.getCart_id());
        }

    }


    @Override
    public List<Cart> getListByMemberId(Integer Member_id) {

        List<HashMap<String, Object>> listMap = mapper.findAllByMemberId(Member_id);

        List<Cart> list = new ArrayList<>();

        for (HashMap<String, Object> map : listMap){

            Cart cart = new Cart();

            Goods goods = new Goods();

            try {
                BeanUtils.populate(cart, map);

                BeanUtils.populate(goods, map);
            }catch (Exception e){
                logger.error("BeanUtils populate error");
            }

            cart.setGoods(goods);

            list.add(cart);
        }



        return list;
    }


    @Override
    public Integer update(Integer cart_id) {

        return mapper.update(cart_id);

    }

    @Override
    public Integer update(Integer cart_id,Integer cart_goods_count){

        return mapper.updateCount(cart_id,cart_goods_count);

    }


    @Override
    public Integer deleteCart(Integer cart_id) {
        return mapper.delete(cart_id);
    }

    @Override
    public Integer updateAboutOrder(Cart cart) {
        return mapper.updateAboutOrder(cart);
    }
}
