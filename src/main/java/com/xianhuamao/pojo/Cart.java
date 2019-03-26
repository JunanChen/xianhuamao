package com.xianhuamao.pojo;

/**Cart表
 *
 */
public class Cart {

    private Integer cart_id;//购物车表
    private Integer cart_goods_id;//关联商品id
    private Integer cart_member_id;//对应的会员id
    private Integer cart_goods_count;//商品的购物车里面对应的数量
    private Long cart_add_time;//购物车的添加时间
    private Integer cart_order_status;//购物车里面的商品是否生成了订单,0:未生成,1:已生成
    private String cart_order_code;//购物车关联的订单号

    private Goods goods;

    public Goods getGoods() {
        return goods;
    }

    public void setGoods(Goods goods) {
        this.goods = goods;
    }

    public Integer getCart_id() {
        return cart_id;
    }

    public void setCart_id(Integer cart_id) {
        this.cart_id = cart_id;
    }

    public Integer getCart_goods_id() {
        return cart_goods_id;
    }

    public void setCart_goods_id(Integer cart_goods_id) {
        this.cart_goods_id = cart_goods_id;
    }

    public Integer getCart_member_id() {
        return cart_member_id;
    }

    public void setCart_member_id(Integer cart_member_id) {
        this.cart_member_id = cart_member_id;
    }

    public Integer getCart_goods_count() {
        return cart_goods_count;
    }

    public void setCart_goods_count(Integer cart_goods_count) {
        this.cart_goods_count = cart_goods_count;
    }

    public Long getCart_add_time() {
        return cart_add_time;
    }

    public void setCart_add_time(Long cart_add_time) {
        this.cart_add_time = cart_add_time;
    }

    public Integer getCart_order_status() {
        return cart_order_status;
    }

    public void setCart_order_status(Integer cart_order_status) {
        this.cart_order_status = cart_order_status;
    }

    public String getCart_order_code() {
        return cart_order_code;
    }

    public void setCart_order_code(String cart_order_code) {
        this.cart_order_code = cart_order_code;
    }

    @Override
    public String toString() {
        return "Cart{" +
                "cart_id=" + cart_id +
                ", cart_goods_id=" + cart_goods_id +
                ", cart_member_id=" + cart_member_id +
                ", cart_goods_count=" + cart_goods_count +
                ", cart_add_time=" + cart_add_time +
                ", cart_order_status=" + cart_order_status +
                ", cart_order_code='" + cart_order_code + '\'' +
                ", goods=" + goods +
                '}';
    }
}
