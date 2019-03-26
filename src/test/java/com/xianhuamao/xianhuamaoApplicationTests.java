package com.xianhuamao;

import com.xianhuamao.service.MailService;
import org.apache.shiro.crypto.hash.Md5Hash;
import org.apache.shiro.util.ByteSource;
import org.apache.shiro.util.SimpleByteSource;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest
public class xianhuamaoApplicationTests {

    @Test
    public void contextLoads() {
    }



    @Test
    public void testShiroMd53(){


        ByteSource.Util.bytes("junan").toHex();

        Md5Hash hash = new Md5Hash("123456",ByteSource.Util.bytes("junan").toHex(),3);

        System.out.println(hash.toString());


    }


    @Autowired
    private MailService mailService;

    @Test
    public void testmail(){

        mailService.sendSimpleEmail("1286890175@qq.com","闲话猫","test");

    }

}
