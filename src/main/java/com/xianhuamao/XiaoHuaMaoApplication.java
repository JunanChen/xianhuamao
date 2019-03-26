package com.xianhuamao;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.xianhuamao.mapper")
public class XiaoHuaMaoApplication {

    public static void main(String[] args) {
        SpringApplication.run(XiaoHuaMaoApplication.class, args);
    }

}
