package com.xianhuamao.service.impl;


import com.xianhuamao.service.MailService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.FileSystemResource;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import javax.mail.internet.MimeMessage;
import java.io.File;

/**
 * @author janhs
 * @date 19-3-18 下午2:34
 *
 * 发送邮件
 */
@Service
public class MailServiceImpl implements MailService {

    @Value("${spring.mail.form}")
    private String from;

    @Autowired
    private JavaMailSender javaMailSender;

    private Logger logger = LoggerFactory.getLogger(MailServiceImpl.class);

    @Override
    public void sendSimpleEmail(String to, String subject, String content) {

        SimpleMailMessage message = new SimpleMailMessage();

        message.setFrom(from);
        message.setTo(to);
        message.setSubject(subject);
        message.setText(content);

        try {
            javaMailSender.send(message);
        }catch (Exception e){
            e.printStackTrace();
            logger.error("java mail error");
        }
    }

    @Override
    public void sendAttachmentsEmail(String to, String subject, String content, String filePath) {
        MimeMessage mimeMessage = javaMailSender.createMimeMessage();

        try {
            MimeMessageHelper helper = new MimeMessageHelper(mimeMessage, true);
            helper.setFrom(from);
            helper.setTo(to);
            helper.setSubject(subject);
            helper.setText(content, true);// true表示这个邮件是有附件的

            FileSystemResource file = new FileSystemResource(new File(filePath));//创建文件系统资源
            String fileName = filePath.substring(filePath.lastIndexOf(File.separator));
            helper.addAttachment(fileName, file);//添加附件

            javaMailSender.send(mimeMessage);

        }catch (Exception e){
            e.printStackTrace();
            logger.error("mimeMessageHelper error");
        }


    }

}
