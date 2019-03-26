package com.xianhuamao.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.sun.xml.internal.rngom.parse.host.Base;
import com.xianhuamao.dto.BaseDto;
import com.xianhuamao.pojo.Contact;
import com.xianhuamao.service.CategoryService;
import com.xianhuamao.service.ContactService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

/**
 * @author janhs
 * @date 19-3-13 下午8:43
 */
@Controller
public class ContactController {

    @Autowired
    private ContactService contactService;

    @RequestMapping("/contact")
    public ModelAndView contact(HttpServletRequest request){

        Map<String,Object> map = new HashMap<>();

        //查看用户是否登录
        String member_nikname = (String)request.getSession().getAttribute("member_nikname");

        if(member_nikname != null && !member_nikname.isEmpty()){

            map.put("member_nikname",member_nikname);
        }

        return new ModelAndView("contact",map);
    }


    @ResponseBody
    @RequestMapping("/contact/add")
    public JSONObject addContact(Contact contact){

        BaseDto baseDto = new BaseDto();

        if(contact == null){

            baseDto.setCode(400);
            baseDto.setMsg("参数异常");
            return (JSONObject) JSON.toJSON(baseDto);
        }
        Integer add = contactService.add(contact);

        if(add > 0){
            baseDto.setCode(0);
            baseDto.setMsg("添加成功！");
            return (JSONObject) JSON.toJSON(baseDto);

        }
        baseDto.setCode(401);
        baseDto.setMsg("服务器异常！");
        return (JSONObject) JSON.toJSON(baseDto);
    }

}
