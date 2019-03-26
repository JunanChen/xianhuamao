package com.xianhuamao.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.fasterxml.jackson.annotation.JsonAlias;
import com.sun.org.apache.regexp.internal.RE;
import com.sun.xml.internal.rngom.parse.host.Base;
import com.xianhuamao.dto.BaseDto;
import com.xianhuamao.pojo.Cart;
import com.xianhuamao.pojo.Order;
import com.xianhuamao.service.CartService;
import com.xianhuamao.service.OrderService;
import com.xianhuamao.utils.TimeUtil;
import com.xianhuamao.utils.UUIDUtil;
import org.apache.ibatis.annotations.Param;
import org.eclipse.jetty.util.log.LoggerLog;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;

/**
 * @author janhs
 * @date 19-3-11 下午6:14
 */
@Controller
public class CartController {

    Logger logger = LoggerFactory.getLogger(CartController.class);

    @Autowired
    private CartService cartService;

    @Autowired
    private OrderService orderService;


    @RequestMapping("/cart")
    public ModelAndView cart(HttpServletRequest request){

        Integer member_id = (Integer) request.getSession().getAttribute("member_id");
        //获取购物车的数据
        List<Cart> list = cartService.getListByMemberId(member_id);

        HashMap<String,Object> map = new HashMap<>();
        map.put("carts",list);

        //查看用户是否登录
        String member_nikname = (String)request.getSession().getAttribute("member_nikname");

        if(member_nikname != null && !member_nikname.isEmpty()){

            map.put("member_nikname",member_nikname);
        }

        return new ModelAndView("cart",map);
    }



    @ResponseBody
    @RequestMapping("/cart/add")
    public JSONObject add(Cart cart, HttpServletRequest request){

        BaseDto baseDto = new BaseDto();

        if(cart != null) {

            Integer goods_id = Integer.valueOf( request.getParameter("goods_id"));

            //设置goods_id
            cart.setCart_goods_id(goods_id);

            Integer member_id = (Integer) request.getSession().getAttribute("member_id");

            if(member_id == null){

                baseDto.setCode(402);
                baseDto.setMsg("未登录，禁止操作！");
                return (JSONObject) JSON.toJSON(baseDto);
            }

            //设置当前登录会员id
            cart.setCart_member_id(member_id);

            Integer add = cartService.add(cart);

            if(add > 0){

                baseDto.setCode(0);
                baseDto.setMsg("加入购物车成功！");
                return (JSONObject) JSON.toJSON(baseDto);
            }else{

                baseDto.setCode(401);
                baseDto.setMsg("服务器异常，添加购物车失败！");
                return (JSONObject) JSON.toJSON(baseDto);
            }

        }else{

            baseDto.setCode(400);
            baseDto.setMsg("提交数据异常");

            return (JSONObject) JSON.toJSON(baseDto);
        }

    }


    @ResponseBody
    @RequestMapping("/cart/updateCount")
    public JSONObject changeCount(@Param("cart_id")Integer cart_id,@Param("cart_goods_count")Integer cart_goods_count){

        BaseDto baseDto = new BaseDto();

        if(cart_id == null || cart_goods_count == null){

            baseDto.setCode(400);
            baseDto.setMsg("参数不正确！");
            return (JSONObject) JSON.toJSON(baseDto);
        }else{
            Integer update = cartService.update(cart_id, cart_goods_count);

            if(update > 0){

                baseDto.setCode(0);
                baseDto.setMsg("修改成功！");
                return (JSONObject) JSON.toJSON(baseDto);

            }else{

                baseDto.setCode(401);
                baseDto.setMsg("修改失败！");
                return (JSONObject) JSON.toJSON(baseDto);
            }
        }
    }

    @ResponseBody
    @RequestMapping("/cart/delete")
    public JSONObject delete(@Param("cart_id")Integer cart_id){

        BaseDto baseDto = new BaseDto();

        if(cart_id == null){
            baseDto.setCode(400);
            baseDto.setMsg("参数提交异常！");
            return (JSONObject) JSON.toJSON(baseDto);
        }

        Integer i = cartService.deleteCart(cart_id);

        if(i > 0){
            baseDto.setCode(0);
            baseDto.setMsg("删除成功！");
            return (JSONObject) JSON.toJSON(baseDto);
        }else {
            baseDto.setCode(401);
            baseDto.setMsg("服务器错误！");
            return (JSONObject) JSON.toJSON(baseDto);
        }
    }

    @RequestMapping("/cart/pay")
    @ResponseBody
    public JSONObject cartPay(HttpServletRequest request,HttpServletResponse response){

        BaseDto baseDto = new BaseDto();

        String totle_price = request.getParameter("totle_price");

        //生成订单
        Order order = new Order();
        order.setOrder_code(UUIDUtil.get32UUID());
        order.setOrder_add_time(Integer.valueOf(TimeUtil.getTimeStamp()+""));
        order.setOrder_total_price(new BigDecimal(totle_price));
        order.setOrder_member_id((Integer) request.getSession().getAttribute("member_id"));

        //添加订单
        Integer temp = orderService.addOrder(order);
        if(temp > 0){

            //order写入session
            request.getSession().setAttribute("order",order);

            HashMap<String,Object> map = new HashMap<>();
            map.put("order_code",order.getOrder_code());
            baseDto.setCode(0);
            baseDto.setMsg("添加订单成功");
            baseDto.setData(map);
            return (JSONObject) JSON.toJSON(baseDto);
        }

        baseDto.setCode(400);
        baseDto.setMsg("添加订单失败");
        return (JSONObject) JSON.toJSON(baseDto);

    }

}
