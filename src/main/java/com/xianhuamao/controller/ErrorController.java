package com.xianhuamao.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author janhs
 * @date 19-3-11 下午2:37
 */
@Controller
public class ErrorController {

    @RequestMapping("/404")
    public String error_404(){

        return "error/404";
    }

}
