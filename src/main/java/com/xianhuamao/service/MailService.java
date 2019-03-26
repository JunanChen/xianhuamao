package com.xianhuamao.service;

/**
 * @author janhs
 * @date 19-3-18 下午2:33
 */
public interface MailService {

    /**
     * 发送简单邮件
     * @param to
     * @param subject
     * @param content
     */
    public void sendSimpleEmail(String to, String subject, String content);


    /**
     * 发送带附件的邮件
     * @param to
     * @param subject
     * @param content
     * @param filePath
     */
    public void sendAttachmentsEmail(String to, String subject, String content, String filePath);


}
