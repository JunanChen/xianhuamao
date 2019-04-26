package com.xianhuamao.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.xianhuamao.dto.BaseDto;
import com.xianhuamao.pojo.Category;
import com.xianhuamao.pojo.Goods;
import com.xianhuamao.service.CategoryService;
import com.xianhuamao.service.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
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

    @Autowired
    private CategoryService categoryService;

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
        //获取类别
        List<Category> categories = categoryService.listCategory();
        map.put("categories", categories);
        return new ModelAndView("shop",map);
    }

    @GetMapping("/shop/{categoryId}")
    public ModelAndView shopCategory(@PathVariable("categoryId") Integer categoryId){
        HashMap<String,Object> map = new HashMap<>();
        //查询某分类的书籍
        List<Goods> goods = goodsService.listByCategory(categoryId);
        map.put("allGoods", goods);
        map.put("categoryName", categoryService.findNameByCategoryId(categoryId));
        //获取类别
        List<Category> categories = categoryService.listCategory();
        map.put("categories", categories);
        return new ModelAndView("shop", map);
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

    //搜索
    @GetMapping("/shop/search/{search}")
    public ModelAndView search(@PathVariable("search") String search){
        HashMap<String,Object> map = new HashMap<>();
        //获取类别
        List<Category> categories = categoryService.listCategory();
        //获取查询的书籍
        List<Goods> goods = goodsService.listBySearch(search);

        map.put("categories", categories);
        map.put("search", search);
        map.put("allGoods", goods);
        return new ModelAndView("shop", map);
    }


}
