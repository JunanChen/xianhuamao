package com.xianhuamao.service;

import com.xianhuamao.pojo.Order;

/**
 * @author janhs
 * @date 19-3-22 上午11:09
 * 订单业务
 */
public interface OrderService {

    /**
     * 添加新订单
     * @return
     */
    Integer addOrder(Order order);

    /**
     * 通过order_code获取order
     * @param order_code
     * @return
     */
    Order getOrderByOrder_code(String  order_code);

    /**
     * 更新order
     * @param order
     * @return
     */
    Integer updateOrder(Order order);

}
