package com.xianhuamao.pojo;

public class Category {
     private Integer category_id;
     private String category_name;//分类的名字
     private String category_desc;
     private String category_is_show;//是否显示在导航栏,1:显示,0:不显示

     public Integer getCategory_id() {
          return category_id;
     }

     public void setCategory_id(Integer category_id) {
          this.category_id = category_id;
     }

     public String getCategory_name() {
          return category_name;
     }

     public void setCategory_name(String category_name) {
          this.category_name = category_name;
     }

     public String getCategory_desc() {
          return category_desc;
     }

     public void setCategory_desc(String category_desc) {
          this.category_desc = category_desc;
     }

     public String getCategory_is_show() {
          return category_is_show;
     }

     public void setCategory_is_show(String category_is_show) {
          this.category_is_show = category_is_show;
     }

     @Override
     public String toString() {
          return "Category{" +
                  "category_id=" + category_id +
                  ", category_name='" + category_name + '\'' +
                  ", category_desc='" + category_desc + '\'' +
                  ", category_is_show='" + category_is_show + '\'' +
                  '}';
     }
}
