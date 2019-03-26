package com.xianhuamao.controller;

import com.xianhuamao.pojo.Goods;
import com.xianhuamao.service.GoodsService;
import com.xianhuamao.utils.TimeUtil;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

/**
 * @author janhs
 * @date 19-3-12 下午5:41
 */
@Controller
public class BookInfoController {

    @Autowired
    private GoodsService goodsService;

    @RequestMapping(value = "/bookinfo",method = RequestMethod.GET)
    public ModelAndView bookinfo(@Param("goods_id") Integer goods_id, HttpServletRequest request){

        Goods goods = goodsService.getByGoods_id(goods_id);

        Map<String,Object> map = new HashMap<>();

        map.put("goods",goods);

        map.put("goods_publish_time", TimeUtil.simpleDateTotimeStamp(goods.getGoods_publish_time().toString()));

        //查看用户是否登录
        String member_nikname = (String)request.getSession().getAttribute("member_nikname");

        if(member_nikname != null && !member_nikname.isEmpty()){

            map.put("member_nikname",member_nikname);
        }

        return new ModelAndView("bookinfo",map);
    }



}
