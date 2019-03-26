package com.xianhuamao.utils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class TimeUtil {

    /**
     * 获取时间戳 单位秒
     * @return
     */
    public static long getTimeStamp(){
        return System.currentTimeMillis()/1000;
    }


    /**
     * 时间戳转日期
     * @param timeStamp
     * @param format
     * @return
     */
    public static String timeStampToDate(String timeStamp,String format){

        if(timeStamp.isEmpty() || timeStamp == null || timeStamp.equals("null"))
            return "";
        if(format == null || format.isEmpty())
            format = "yyyy-MM-dd HH:mm:ss";
        SimpleDateFormat sdf = new SimpleDateFormat(format);

        return sdf.format(new Date(Long.valueOf(timeStamp+"000")));

    }

    /**
     * 时间戳转日期
     * @param timeStamp
     * @param format
     * @return
     */
    public static String timeStampToSimpleDate(String timeStamp,String format){

        if(timeStamp.isEmpty() || timeStamp == null || timeStamp.equals("null"))
            return "";
        if(format == null || format.isEmpty())
            format = "yyyy-MM-dd";
        SimpleDateFormat sdf = new SimpleDateFormat(format);

        return sdf.format(new Date(Long.valueOf(timeStamp+"000")));

    }


    /**
     * 日期转时间戳
     * @param date
     * @param format
     * @return
     */
    public static String dateTotimeStamp(String date,String format){
        try {
            SimpleDateFormat sdf = new SimpleDateFormat(format);
            return String.valueOf(sdf.parse(date).getTime()/1000);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return  "";
    }

    /**
     * 日期转时间戳
     * @param date
     * @return
     */
    public static String simpleDateTotimeStamp(String date){
        String format = "yyyy-MM-dd";
        return timeStampToSimpleDate(date,format);
    }


}
