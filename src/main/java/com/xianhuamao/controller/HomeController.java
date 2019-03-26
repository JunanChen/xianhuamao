package com.xianhuamao.controller;

import com.alibaba.fastjson.JSONObject;
import com.xianhuamao.pojo.Goods;
import com.xianhuamao.service.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author janhs
 * @date 19-3-11 下午2:26
 */
@Controller
public class HomeController {


    @Autowired
    private GoodsService goodsService;


    @RequestMapping({"/","/index"})
    public ModelAndView home(HttpServletRequest request){

        Map<String,Object> map = new HashMap<>();

        //获取首页面显示的书本
        List<Goods> goods = goodsService.find16Goods();

        List<Map<String,Goods>> list = new ArrayList<>();

        if(goods != null) {

            int temp = 0;
            Map<String,Goods> goodsMap = null;
            for (int i = 0; i < goods.size()/2; i ++){
                goodsMap = new HashMap<>();
                goodsMap.put("goods1",goods.get(temp));
                goodsMap.put("goods2",goods.get(++temp));
                temp++;
                list.add(goodsMap);
            }
            map.put("goods", list);
        }

        //查看用户是否登录
        String member_nikname = (String)request.getSession().getAttribute("member_nikname");

        if(member_nikname != null && !member_nikname.isEmpty()){

            map.put("member_nikname",member_nikname);
        }

        return new ModelAndView("index",map);
    }




}
