package com.xianhuamao.pojo;

/**
 * @author janhs
 * @date 19-3-13 下午9:05
 */
public class Contact {


    private Integer contact_id;
    private String contact_name;
    private String contact_email;
    private String contact_tel;
    private String contact_message;

    public Integer getContact_id() {
        return contact_id;
    }

    public void setContact_id(Integer contact_id) {
        this.contact_id = contact_id;
    }

    public String getContact_name() {
        return contact_name;
    }

    public void setContact_name(String contact_name) {
        this.contact_name = contact_name;
    }

    public String getContact_email() {
        return contact_email;
    }

    public void setContact_email(String contact_email) {
        this.contact_email = contact_email;
    }

    public String getContact_tel() {
        return contact_tel;
    }

    public void setContact_tel(String contact_tel) {
        this.contact_tel = contact_tel;
    }

    public String getContact_message() {
        return contact_message;
    }

    public void setContact_message(String contact_message) {
        this.contact_message = contact_message;
    }

    @Override
    public String toString() {
        return "Contact{" +
                "contact_id=" + contact_id +
                ", contact_name='" + contact_name + '\'' +
                ", contact_email='" + contact_email + '\'' +
                ", contact_tel='" + contact_tel + '\'' +
                ", contact_message='" + contact_message + '\'' +
                '}';
    }
}
