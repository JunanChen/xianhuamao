package com.xianhuamao.service.impl;

import com.xianhuamao.mapper.OrderMapper;
import com.xianhuamao.pojo.Order;
import com.xianhuamao.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author janhs
 * @date 19-3-22 上午11:29
 */
@Service
public class OrderServiceImpl implements OrderService {

    @Autowired
    private OrderMapper orderMapper;

    @Override
    public Integer addOrder(Order order) {
        return orderMapper.add(order);
    }

    @Override
    public Order getOrderByOrder_code(String order_code) {
        return orderMapper.findByOrder_code(order_code);
    }

    @Override
    public Integer updateOrder(Order order) {
        return orderMapper.update(order);
    }
}
