package com.xianhuamao.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.xianhuamao.dto.BaseDto;
import com.xianhuamao.pojo.Goods;
import com.xianhuamao.service.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;

/**
 * @author janhs
 * @date 19-3-11 下午6:18
 */
@Controller
public class ShopController {


    @Autowired
    private GoodsService goodsService;



    @RequestMapping("/shop")
    public ModelAndView shop(HttpServletRequest request){

        HashMap<String,Object> map = new HashMap<>();

        List<Goods> all = goodsService.getAll();

        if(all != null)
            map.put("allGoods",all);

        //查看用户是否登录
        String member_nikname = (String)request.getSession().getAttribute("member_nikname");

        if(member_nikname != null && !member_nikname.isEmpty()){

            map.put("member_nikname",member_nikname);
        }

        return new ModelAndView("shop",map);
    }



    @ResponseBody
    @RequestMapping(value = "/shop/addlike",method = RequestMethod.GET)
    public JSONObject addLike(HttpServletRequest request){

        BaseDto baseDto = new BaseDto();

        //验证是否以及登录
        Integer member_id = (Integer) request.getSession().getAttribute("member_id");

        if(member_id == null){

            baseDto.setCode(400);
            baseDto.setMsg("未登录");
            return (JSONObject) JSON.toJSON(baseDto);
        }

        Integer goods_id = Integer.valueOf(request.getParameter("goods_id"));

        if(goods_id == null){

            baseDto.setCode(401);
            baseDto.setMsg("参数提交异常");
            return (JSONObject) JSON.toJSON(baseDto);
        }

        Integer integer = goodsService.addLike(goods_id);

        if(integer > 0){

            baseDto.setCode(0);
            baseDto.setMsg("添加喜欢成功！");
            return (JSONObject) JSON.toJSON(baseDto);
        }else{
            baseDto.setCode(402);
            baseDto.setMsg("服务器异常，添加失败！");
            return (JSONObject) JSON.toJSON(baseDto);
        }
    }




}
