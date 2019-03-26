package com.xianhuamao.mapper;

import com.xianhuamao.pojo.Cart;

import java.util.HashMap;
import java.util.List;

/**
 * @author janhs
 * @date 19-3-11 下午6:00
 */
public interface CartMapper {


    /**
     * 新增cart
     * @param cart
     * @return
     */
    Integer insert(Cart cart);

    /**
     * 修改购物车数目
     * @param cart_id
     * @return
     */
    Integer update(Integer cart_id);

    /**
     * 通过cart_member_id和cart_goods_id查询未生成订单cart
     * @param cart_goods_id  商品id
     * @param cart_member_id  会员id
     * @return
     */
    Cart findByGoodsIdMemberId(Integer cart_goods_id,Integer cart_member_id);

    /**
     * 查询某会员的购物车信息
     * @param member_id  会员id
     * @return
     */
    List<HashMap<String,Object>> findAllByMemberId(Integer member_id);

    /**
     * 通过cart_id修改cart数目
     * @param cart_id
     * @param cart_goods_count
     * @return
     */
    Integer updateCount(Integer cart_id,Integer cart_goods_count);

    /**
     *
     * @param cart_id
     * @return
     */
    Integer delete(Integer cart_id);

    /**
     * 更新生成订单相关的数据
     * @param cart
     * @return
     */
    Integer updateAboutOrder(Cart cart);

}
