package com.xianhuamao.service;


/**
 * @author janhs
 * @date 19-3-22 下午3:47
 */
public interface AliPayService {


    /**
     * 支付宝付款
     * @param order_code  订单编号
     * @param money    支付金额
     * @param order_name   订单的名称
     * @param message   订单描述（可为null）
     * @return
     */
    String aliPay(String order_code,String money,String order_name,String message);


}
