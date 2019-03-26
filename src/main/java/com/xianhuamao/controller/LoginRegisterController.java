package com.xianhuamao.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.xianhuamao.dto.BaseDto;
import com.xianhuamao.pojo.Member;
import com.xianhuamao.service.MemberService;
import com.xianhuamao.utils.IdentifyCodeUtil;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.lang.annotation.Target;

/**
 * @author janhs
 * @date 19-3-11 下午6:15
 */
@Controller
public class LoginRegisterController {

    @Autowired
    private MemberService memberService;

    @RequestMapping("/loginRegister")
    public String loginRegister(){
        return "login_register";
    }

    /**
     * 登录接口
     * @param request
     * @param response
     * @return
     */
    @ResponseBody
    @RequestMapping("/loginRegister/login")
    public JSONObject login(HttpServletRequest request, HttpServletResponse response){

        BaseDto baseDto = new BaseDto();

        String loginUsername = request.getParameter("loginUsername");
        String loginPassword = request.getParameter("loginPassword");

        Subject subject = SecurityUtils.getSubject();

        UsernamePasswordToken token = new UsernamePasswordToken(loginUsername,loginPassword);

        try{
            subject.login(token);
        }catch (UnknownAccountException e){
            //用户不存在
            baseDto.setCode(401);
            baseDto.setMsg("用户名不正确！");
            return (JSONObject) JSON.toJSON(baseDto);
        }catch (IncorrectCredentialsException e){
            //密码错误
            baseDto.setCode(402);
            baseDto.setMsg("密码不正确！");
            return (JSONObject) JSON.toJSON(baseDto);
        }

        //用户名密码都正确
        baseDto.setCode(0);
        baseDto.setMsg("验证通过！");


        //把会员id加入session
        Member byNikName = memberService.getByNikName(loginUsername);
        request.getSession().setAttribute("member_id",byNikName.getMember_id());
        request.getSession().setAttribute("member_nikname",byNikName.getMember_nikname());

        return (JSONObject) JSON.toJSON(baseDto);
    }



    @RequestMapping("/login/getIdentifyCode")
    public void get(HttpServletRequest request,HttpServletResponse response){

        // 设置响应的类型格式为图片格式
        response.setContentType("image/jpeg");
        // 禁止图像缓存。
        response.setHeader("Pragma", "no-cache");
        response.setHeader("Cache-Control", "no-cache");
        response.setDateHeader("Expires", 0);

        // 自定义宽、高、字数和干扰线的条数
        IdentifyCodeUtil code = new IdentifyCodeUtil(100, 30, 4, 10);
        // 存入session
        HttpSession session = request.getSession();
        session.setAttribute("identifyCode", code.getCode());
        // 响应图片
        try {
            ServletOutputStream out = response.getOutputStream();
            code.write(out);
            out.flush();
            out.close();
        }catch (IOException e){

        }
    }

    @ResponseBody
    @RequestMapping(value = "/loginRegister/register",method = RequestMethod.POST)
    public JSONObject register(Member member,HttpServletRequest request){

        BaseDto baseDto = new BaseDto();

        //验证验证码
        String identifyCode = request.getParameter("identifyCode");

        if(identifyCode == null || identifyCode.isEmpty()){

            baseDto.setCode(402);
            baseDto.setMsg("验证码未填写！");
            return (JSONObject) JSON.toJSON(baseDto);
        }

        HttpSession session = request.getSession();
        String code = session.getAttribute("identifyCode").toString();

        if(!identifyCode.equals(code)){

            baseDto.setCode(403);
            baseDto.setMsg("验证码不正确！");
            return (JSONObject) JSON.toJSON(baseDto);

        }

        if(member == null){

            baseDto.setCode(400);
            baseDto.setMsg("注册失败！");
            return (JSONObject) JSON.toJSON(baseDto);
        }

        Integer temp = memberService.addMember(member);

        if(temp == 1){

            baseDto.setCode(0);
            baseDto.setMsg("注册成功！");
            return (JSONObject) JSON.toJSON(baseDto);
        } else if(temp == 0){
            //用户名已存在
            baseDto.setCode(404);
            baseDto.setMsg("用户名已存在");
            return (JSONObject) JSON.toJSON(baseDto);
        } else{

            baseDto.setCode(401);
            baseDto.setMsg("注册失败！");
            return (JSONObject) JSON.toJSON(baseDto);
        }

    }

}
