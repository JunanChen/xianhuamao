package com.xianhuamao.controller;


import com.alipay.api.internal.util.AlipaySignature;
import com.xianhuamao.config.AlipayConfig;
import com.xianhuamao.pojo.Cart;
import com.xianhuamao.pojo.Order;
import com.xianhuamao.service.AliPayService;
import com.xianhuamao.service.CartService;
import com.xianhuamao.service.MailService;
import com.xianhuamao.service.OrderService;
import com.xianhuamao.utils.GetParamsFromAliPayUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/**
 * @author janhs
 * @date 19-3-20 下午7:47
 */
@Controller
public class OrderController {

    Logger logger = LoggerFactory.getLogger(getClass());

    @Autowired
    private CartService cartService;

    @Autowired
    private OrderService orderService;

    @Autowired
    private AliPayService aliPayService;

    @Autowired
    private MailService mailService;


    @RequestMapping(value = "/orderInfo",method = RequestMethod.GET)
    public ModelAndView orderInfo(HttpServletRequest request){

        HashMap<String,Object> map = new HashMap<>();

        String order_code = request.getParameter("order_code");
        Order orderById = orderService.getOrderByOrder_code(order_code);

        List<Cart> list = cartService.getListByMemberId((Integer) request.getSession().getAttribute("member_id"));

        map.put("carts",list);
        map.put("order",orderById);

        return new ModelAndView("orderInfo",map);
    }

    @RequestMapping("/orderInfo/pay")
    public ModelAndView submit_pay(HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException{

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        String tele = request.getParameter("tele");

        //从session获取order
        Order order = (Order) request.getSession().getAttribute("order");
        order.setOrder_user_name(name);
        order.setOrder_email(email);
        order.setOrder_address(address);
        order.setOrder_tel(tele);
        request.getSession().setAttribute("order",order);

        //更新购物车物品数据
        Cart cart = new Cart();
        cart.setCart_member_id((Integer) request.getSession().getAttribute("member_id"));
        cart.setCart_order_code(order.getOrder_code());
        cart.setCart_order_status(1);

        Integer temp1 = cartService.updateAboutOrder(cart);
        if(temp1 <= 0){

            logger.error("向cart表更新生成订单相关的数据失败！");
        }

        //调支付宝接口
        String result = aliPayService.aliPay(order.getOrder_code(), order.getOrder_total_price()+"", "闲话猫图书消费", "");

        HashMap<String,Object> map = new HashMap<>();
        map.put("result",result);

        return new ModelAndView("aliPay",map);
    }


    @SuppressWarnings("all")
    @RequestMapping("/orderInfo/paySuccess")
    public ModelAndView paySuccessful(HttpServletRequest request) throws UnsupportedEncodingException {

        Map<String,String> params = GetParamsFromAliPayUtil.getParamsFromAliPay(request);
        boolean signVerified = false;
        try {
            signVerified = AlipaySignature.rsaCheckV1(params, AlipayConfig.alipay_public_key, AlipayConfig.charset, AlipayConfig.sign_type); //调用SDK验证签名

        }catch (Exception e){
            e.printStackTrace();
        }

        //返回的数据
        HashMap map = new HashMap();

        if(signVerified) {
            //商户订单号
            String out_trade_no = request.getParameter("out_trade_no");

            //支付宝交易号
            String trade_no = request.getParameter("trade_no");

            //付款金额
            String total_amount = request.getParameter("total_amount");

            if(total_amount != null && !total_amount.isEmpty()) {

                //向数据库更新数据
                Order order = (Order)(request.getSession().getAttribute("order"));

                if(order != null) {
                    //发送邮件
                    String member_nikname = (String) request.getSession().getAttribute("member_nikname");
                    mailService.sendSimpleEmail(order.getOrder_email(),"闲话猫","尊敬的"+member_nikname+"会员，恭喜您成功在闲话猫网站购买到知识，订单号为："+out_trade_no+"  支付宝交易号："+trade_no+"  欢迎下次光临！ (＝^ω^＝)");

                    order.setOrder_pay_status(1);
                    Integer temp = orderService.updateOrder(order);
                    if(temp > 0){
                        request.getSession().removeAttribute("order");
                        return new ModelAndView("paySuccessful",map);
                    }
                    logger.error("用户订单信息支付成功！但写入数据库失败！");
                    return new ModelAndView("paySuccessful",map);
                }
                logger.error("用户订单信息支付成功!但从缓存获取订单信息失败!");
                return new ModelAndView("paySuccessful",map);
            }
            else {
                logger.error("支付宝返回的信息中金额信息不对");
                return new ModelAndView("paySuccessful",map);
            }
        }else {
            logger.error("支付宝返回的信息校检不对！");
            map.put("message","支付宝返回的信息校检不对！");
            return new ModelAndView("paySuccessful",map);
        }

    }

    /**
     * 此接口支付宝异步通知订单状态
     */
    @SuppressWarnings("all")
    @RequestMapping("/orderInfo/payStatu")
    public void alipayStatu(HttpServletRequest request){

        Map<String,String> params = GetParamsFromAliPayUtil.getParamsFromAliPay(request);
        boolean signVerified = false;
        try {
            signVerified = AlipaySignature.rsaCheckV1(params, AlipayConfig.alipay_public_key, AlipayConfig.charset, AlipayConfig.sign_type); //调用SDK验证签名

        }catch (Exception e){
            e.printStackTrace();
        }
        /* 实际验证过程建议商户务必添加以下校验：
        1、需要验证该通知数据中的out_trade_no是否为商户系统中创建的订单号，
        2、判断total_amount是否确实为该订单的实际金额（即商户订单创建时的金额），
        3、校验通知中的seller_id（或者seller_email) 是否为out_trade_no这笔单据的对应的操作方（有的时候，一个商户可能有多个seller_id/seller_email）
        4、验证app_id是否为该商户本身。
        */
        if(signVerified) {//验证成功
            //商户订单号
            String out_trade_no = request.getParameter("out_trade_no");

            //支付宝交易号
            String trade_no = request.getParameter("trade_no");

            //交易状态
            String trade_status = request.getParameter("trade_status");

            if(trade_status.equals("TRADE_FINISHED")){

            }else if (trade_status.equals("TRADE_SUCCESS")){

            }

            logger.info("验证成功！");

        }else {//验证失败

            logger.info("验证失败！");
            //调试用，写文本函数记录程序运行情况是否正常
            //String sWord = AlipaySignature.getSignCheckContentV1(params);
            //AlipayConfig.logResult(sWord);
        }


    }


}
