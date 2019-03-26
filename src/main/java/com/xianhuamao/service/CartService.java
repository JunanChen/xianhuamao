package com.xianhuamao.service;

import com.xianhuamao.pojo.Cart;

import java.util.List;

/**
 * 购物车service
 */
public interface CartService {

    /**
     * 添加一条数据
     * @param cart
     * @return
     */
    Integer add(Cart cart);

    /**
     * 购物车数目加1
     * @param cart_id
     * @return
     */
    Integer update(Integer cart_id);

    /**
     * 修改cart数目
     * @param cart_id
     * @param cart_goods_count
     * @return
     */
    Integer update(Integer cart_id,Integer cart_goods_count);

    /**
     * 更新生成订单先关数据
     * @param cart
     * @return
     */
    Integer updateAboutOrder(Cart cart);

    /**
     * 通过某会员的id获取其购物车信息
     * @param Member_id
     * @return
     */
    List<Cart> getListByMemberId(Integer Member_id);

    /**
     * 删除某个购物车物品
     * @param cart_id
     * @return 受影响行数
     */
    Integer deleteCart(Integer cart_id);

}
