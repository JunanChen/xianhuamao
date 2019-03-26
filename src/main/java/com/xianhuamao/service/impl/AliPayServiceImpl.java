package com.xianhuamao.service.impl;

import com.alipay.api.AlipayClient;
import com.alipay.api.AlipayRequest;
import com.alipay.api.DefaultAlipayClient;
import com.alipay.api.request.AlipayTradeFastpayRefundQueryRequest;
import com.xianhuamao.config.AlipayConfig;
import com.xianhuamao.service.AliPayService;
import org.springframework.stereotype.Service;
import com.alipay.api.request.*;

/**
 * @author janhs
 * @date 19-3-22 下午3:54
 */
@Service
public class AliPayServiceImpl implements AliPayService {

    private AlipayClient alipayClient = null;

    private AlipayTradePagePayRequest alipayRequest = null;

    public AliPayServiceImpl(){

        //初始化alipayclient
        alipayClient = new DefaultAlipayClient(AlipayConfig.gatewayUrl, AlipayConfig.app_id, AlipayConfig.merchant_private_key, "json", AlipayConfig.charset, AlipayConfig.alipay_public_key, AlipayConfig.sign_type);

        //设置请求参数
        alipayRequest = new AlipayTradePagePayRequest();
        alipayRequest.setReturnUrl(AlipayConfig.return_url);
        alipayRequest.setNotifyUrl(AlipayConfig.notify_url);
    }

    @Override
    public String aliPay(String order_code,String money,String order_name,String message) {
        alipayRequest.setBizContent("{\"out_trade_no\":\""+ order_code +"\","
                + "\"total_amount\":\""+ money +"\","
                + "\"subject\":\""+ order_name +"\","
                + "\"body\":\""+ message +"\","
                + "\"product_code\":\"FAST_INSTANT_TRADE_PAY\"}");

        String result = null;
        try {
            //请求
            result = alipayClient.pageExecute(alipayRequest).getBody();
        }catch (Exception e){
            e.printStackTrace();
        }
        //输出
        return result;
    }
}
