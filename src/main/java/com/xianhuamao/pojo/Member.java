package com.xianhuamao.pojo;

/**
 * member表
 */
public class Member {


    private Integer member_id;             //会员id
    private String member_nikname;     //会员昵称
    private String member_pwd;         //会员密码
    private String member_email;       //会员邮箱
    private String member_name;        //会员真实姓名
    private String member_phone;       //会员电话
    private Integer member_status;         //会员是否激活
    private Long member_reg_time;       //会员注册时间
    private Integer member_money;          //会员账户余额
    private String member_vcode;       //会员验证码
    private String member_city;        //会员城市

    public Integer getMember_id() {
        return member_id;
    }

    public void setMember_id(Integer member_id) {
        this.member_id = member_id;
    }

    public String getMember_nikname() {
        return member_nikname;
    }

    public void setMember_nikname(String member_nikname) {
        this.member_nikname = member_nikname;
    }

    public String getMember_pwd() {
        return member_pwd;
    }

    public void setMember_pwd(String member_pwd) {
        this.member_pwd = member_pwd;
    }

    public String getMember_email() {
        return member_email;
    }

    public void setMember_email(String member_email) {
        this.member_email = member_email;
    }

    public String getMember_name() {
        return member_name;
    }

    public void setMember_name(String member_name) {
        this.member_name = member_name;
    }

    public String getMember_phone() {
        return member_phone;
    }

    public void setMember_phone(String member_phone) {
        this.member_phone = member_phone;
    }

    public Integer getMember_status() {
        return member_status;
    }

    public void setMember_status(Integer member_status) {
        this.member_status = member_status;
    }

    public Long getMember_reg_time() {
        return member_reg_time;
    }

    public void setMember_reg_time(Long member_reg_time) {
        this.member_reg_time = member_reg_time;
    }

    public Integer getMember_money() {
        return member_money;
    }

    public void setMember_money(Integer member_money) {
        this.member_money = member_money;
    }

    public String getMember_vcode() {
        return member_vcode;
    }

    public void setMember_vcode(String member_vcode) {
        this.member_vcode = member_vcode;
    }

    public String getMember_city() {
        return member_city;
    }

    public void setMember_city(String member_city) {
        this.member_city = member_city;
    }

    @Override
    public String toString() {
        return "Member{" +
                "member_id=" + member_id +
                ", member_nikname='" + member_nikname + '\'' +
                ", member_pwd='" + member_pwd + '\'' +
                ", member_email='" + member_email + '\'' +
                ", member_name='" + member_name + '\'' +
                ", member_phone='" + member_phone + '\'' +
                ", member_status=" + member_status +
                ", member_reg_time=" + member_reg_time +
                ", member_money=" + member_money +
                ", member_vcode='" + member_vcode + '\'' +
                ", member_city='" + member_city + '\'' +
                '}';
    }
}
