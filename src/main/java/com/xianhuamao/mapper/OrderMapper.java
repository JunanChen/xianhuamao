package com.xianhuamao.mapper;

import com.xianhuamao.pojo.Order;

/**
 * @author janhs
 * @date 19-3-11 下午6:02
 */
public interface OrderMapper {

    /**
     * 添加一条数据
     * @param order
     * @return
     */
    Integer add(Order order);

    /**
     * 通过order_code查找Order
     * @param order_code
     * @return
     */
    Order findByOrder_code(String  order_code);

    /**
     * 更新order
     * @param order
     * @return
     */
    Integer update(Order order);


}
