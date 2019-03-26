package com.xianhuamao.config;

import java.io.FileWriter;
import java.io.IOException;

/* *
 *类名：AlipayConfig
 *功能：基础配置类
 *详细：设置帐户有关信息及返回路径
 *修改日期：2017-04-05
 *说明：
 *以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
 *该代码仅供学习和研究支付宝接口使用，只是提供一个参考。
 */

public class AlipayConfig {

//↓↓↓↓↓↓↓↓↓↓请在这里配置您的基本信息↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

    // 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
    public static String app_id = "2016092700606504";

    // 商户私钥，您的PKCS8格式RSA2私钥
    public static String merchant_private_key = "MIIEvAIBADANBgkqhkiG9w0BAQEFAASCBKYwggSiAgEAAoIBAQC4qD8R/94TZ2hc\n" +
            "2XYUJ7plf11sWWSFXhsffXlFirblNWT7OB9H28vXQA6pBgZg9B9kojC012fmX2Yv\n" +
            "2xMSUUkaesc8nxgMP8ccWpmlUQt6LygEfneK4TZ/cuHFFj2JSCNFjlg7ktilOQu8\n" +
            "EPtMG42k2Nmy9K7KXube1doUYpB1/eLAKJMA3IbEjMpq1KXbkewzSPnsvU3elJst\n" +
            "awtNFkx1ca/F2oXdh0i6BFkfmmY0i/fWsfQQlcRGNt27mPXYhmeKSWwE6Hpv/lmd\n" +
            "nE5ETIQyw4ojPh1UrBD7qIXdIBbYK0IBz5bD193jiFJTLwHATBN5oyE54slxuFJo\n" +
            "cmhpG/5rAgMBAAECggEAFny+uYVsWPaV2gDNhWTVKTkaenBkcm1kZjBUjWh4H2+i\n" +
            "LYnHHWwh5cOyRVkre7EfBZVO0ycMSxzBCADo0Kk/es8K5lIFjrBRoh1SarR07ltB\n" +
            "x1JTYoFMrrah0euEcOxtBzJvgkm+wlgxGqUCxWDxneqekFGF27U07lwio6rhJs0g\n" +
            "VFJ4HXZ05afPXsXuqfZb+tv99X7o/RJrlXbtNwQ8fxZE0vh4G08klPuomgmc73Lb\n" +
            "3gX/FMF4cFY9KnHZmpUrEUr3t1IG+l+43PrfZQPRjmfUxHNxTTvq1368rFOZZ+NZ\n" +
            "8DE1MlaSwayQo9sSfJWQb6i0dTGdJyb7hYvh3Ee2gQKBgQDaNloIEefGO3bXPMci\n" +
            "uj91l/d3ax03TAQKiQVhnkSnjVcDf0jBxBW4r0/etADJN6yws5SzWN1j8sThP7sP\n" +
            "3PskPCUsBmWTaQCGvf+leUR7avcRz2ZBHyVzgGKSfOtYqN++6is8hGioHy/vbVn0\n" +
            "8hIhFfcTUtIQ9CvLN+87ud1OqwKBgQDYoln+9ITb3F1qMiYZw2b+cTw/xbH4nSs3\n" +
            "HwpBiImd3yFhNbAbi9G7BRV9acPLVfyFbtGEgKjoyMIYsF//b+x3B4I7n2Gxq/gK\n" +
            "2yE320FN1VKK/J8Pq25MikQuXKMHhv/A8yqs05HRM0Ee+qB3V3JWCvoXh1kCXo8a\n" +
            "yYC5RO0PQQKBgEUvlG4Ylz8P3Ycy2wSUvsgfDbRMPvAoZuOcPBuOXcAuHRebxMrC\n" +
            "zAxJcW5v7gveXh+MYKpYk6E7+NZeKYZHD02W0EZcJNqPIT6XgTXK9D6ZVIrOEmK1\n" +
            "aF9tplNBzjDHImHaxyih5rjfYohsSGhUVBEvcK4sxTPg5v3A11Y9gQCPAoGAM4sF\n" +
            "UKULC2i2DTNbX1vfoIB+rkmyW43Bn37SKN98psRVI9TrTtKIly/ReiJ1BGc0Cudg\n" +
            "EF+wUJqbm9YzMQqHP5bYxKjaTLS28pZKpAiV1BgCaLFMgyTtvGZVbJZ776mOJnF0\n" +
            "4OQB2L2SK/XDwkFbId/Au2JnqimncN8qsmoU4UECgYAeIkzZQw34aHBiBlDNJj7+\n" +
            "L6PCe7FCGtQ/3AT0zd3HkgE5lTz165XfMs8YnIsuIkBH8JXC1nXJJYbCMnzuICkY\n" +
            "cUavdTFwf8xRXTaHCQ/q/3TQK7gqgkLZeS0P5rGvz4vLLeawu5k9qvEO478ZsdlD\n" +
            "7BRM4DgN3e/92W9ZNFS4HQ==";

    // 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
    public static String alipay_public_key =
            "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIB]" +
            "CgKCAQEAsuDpXUTUN8IXACgn6AzMBHQbBR5fiJt" +
            "j7T9SpZmNSZTzgiBKPQ0TBWMo0dJVvfINlT5Fvzj" +
            "hvb3duM/GnO+ieJQeT63SPhwTEBsBnt+oPiIYGqTZ4" +
            "JRfvgwSVMp8qU3uvf6CV0n5WByizq/EelbsHL9ENQlnY7T" +
            "8yW1zdrr8rd6OSOEYbqxWfs9+76Ej9vAbkshCf3xyW2zwbmT" +
            "PbZYJT5RpALAVD+vCwOp1hV0/oBZKE1ORHkwcHtJFn7uP5Ds" +
            "XFq48C5Df921/6YDToGA0Wt7juQgWfQi6s4pyxIfDrOvds4" +
            "dPB7fpSOpNVDrJSh/HAvjqQBY43TxcUPFBYkCjVwIDAQAB";

    // 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
    public static String notify_url = "http://zsjnqg.natappfree.cc/orderInfo/payStatu";

    // 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
    public static String return_url = "http://zsjnqg.natappfree.cc/orderInfo/paySuccess";

    // 签名方式
    public static String sign_type = "RSA2";

    // 字符编码格式
    public static String charset = "utf-8";

    // 支付宝网关
    public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";

    // 支付宝网关
    public static String log_path = "/media/chenjunan/D";


//↑↑↑↑↑↑↑↑↑↑请在这里配置您的基本信息↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

    /**
     * 写日志，方便测试（看网站需求，也可以改成把记录存入数据库）
     * @param sWord 要写入日志里的文本内容
     */
    public static void logResult(String sWord) {
        FileWriter writer = null;
        try {
            writer = new FileWriter(log_path + "alipay_log_" + System.currentTimeMillis()+".txt");
            writer.write(sWord);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (writer != null) {
                try {
                    writer.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}

