package com.xianhuamao.pojo;

public class Category {
     private int category_id;
     private String category_name;//分类的名字
     private String categroy_desc;
     private String category_is_show;//是否显示在导航栏,1:显示,0:不显示

     public int getCategory_id() {
          return category_id;
     }

     public void setCategory_id(int category_id) {
          this.category_id = category_id;
     }

     public String getCategory_name() {
          return category_name;
     }

     public void setCategory_name(String category_name) {
          this.category_name = category_name;
     }

     public String getCategroy_desc() {
          return categroy_desc;
     }

     public void setCategroy_desc(String categroy_desc) {
          this.categroy_desc = categroy_desc;
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
                  ", categroy_desc='" + categroy_desc + '\'' +
                  ", category_is_show='" + category_is_show + '\'' +
                  '}';
     }
}
