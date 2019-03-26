package com.xianhuamao.dto;

import java.util.HashMap;

/**
 * @author janhs
 * @date 19-3-8 下午8:09
 * 通用消息类型
 */
public class BaseDto {

    private Integer code;

    private String msg;

    private HashMap<String,Object> data;

    public Integer getCode() {
        return code;
    }

    public void setCode(Integer code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public HashMap<String, Object> getData() {
        return data;
    }

    public void setData(HashMap<String, Object> data) {
        this.data = data;
    }

    @Override
    public String toString() {
        return "BaseDto{" +
                "code=" + code +
                ", msg='" + msg + '\'' +
                ", data=" + data +
                '}';
    }
}
