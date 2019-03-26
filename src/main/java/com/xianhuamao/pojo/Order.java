package com.xianhuamao.pojo;

import java.math.BigDecimal;

public class Order {

    private Integer order_id;

    private String order_code;
    /**
     * 收货人email
     */
    private String order_email;
    /**
     * 收货人的电话
     */
    private String order_tel;
    /**
     * 收货人地址
     */
    private String order_address;
    /**
     * 收货人姓名类
     */
    private String order_user_name;
    /**
     * 订单支付状态
     */
    private Integer order_pay_status;
    /**
     * 订单总金额
     */
    private BigDecimal order_total_price;
    /**
     * 订单添加时间
     */
    private Integer order_add_time;
    /**
     * 订单会员id
     */
    private Integer order_member_id;


    public String getOrder_tel() {
        return order_tel;
    }

    public void setOrder_tel(String order_tel) {
        this.order_tel = order_tel;
    }

    public String getOrder_address() {
        return order_address;
    }

    public void setOrder_address(String order_address) {
        this.order_address = order_address;
    }

    public Integer getOrder_id() {
        return order_id;
    }

    public void setOrder_id(Integer order_id) {
        this.order_id = order_id;
    }

    public String getOrder_code() {
        return order_code;
    }

    public void setOrder_code(String order_code) {
        this.order_code = order_code;
    }

    public String getOrder_email() {
        return order_email;
    }

    public void setOrder_email(String order_email) {
        this.order_email = order_email;
    }

    public String getOrder_user_name() {
        return order_user_name;
    }

    public void setOrder_user_name(String order_user_name) {
        this.order_user_name = order_user_name;
    }

    public Integer getOrder_pay_status() {
        return order_pay_status;
    }

    public void setOrder_pay_status(Integer order_pay_status) {
        this.order_pay_status = order_pay_status;
    }

    public BigDecimal getOrder_total_price() {
        return order_total_price;
    }

    public void setOrder_total_price(BigDecimal order_total_price) {
        this.order_total_price = order_total_price;
    }

    public Integer getOrder_add_time() {
        return order_add_time;
    }

    public void setOrder_add_time(Integer order_add_time) {
        this.order_add_time = order_add_time;
    }

    public Integer getOrder_member_id() {
        return order_member_id;
    }

    public void setOrder_member_id(Integer order_member_id) {
        this.order_member_id = order_member_id;
    }

    @Override
    public String toString() {
        return "Order{" +
                "order_id=" + order_id +
                ", order_code='" + order_code + '\'' +
                ", order_email='" + order_email + '\'' +
                ", order_tel='" + order_tel + '\'' +
                ", order_address='" + order_address + '\'' +
                ", order_user_name='" + order_user_name + '\'' +
                ", order_pay_status=" + order_pay_status +
                ", order_total_price=" + order_total_price +
                ", order_add_time=" + order_add_time +
                ", order_member_id=" + order_member_id +
                '}';
    }
}
