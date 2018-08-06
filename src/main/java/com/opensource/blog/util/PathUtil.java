package com.opensource.blog.util;

import java.io.File;
import java.util.Calendar;
import java.util.UUID;

public class PathUtil {

    public static final String BLOG = "blog";
    public static final String TAG = "tag";
    public static final String IMG = "img";

    /**
     *  返回日期路径
     *  年\月\日\时   2018\8\5\16
     * @return
     */
    public static String dataPath(){
        Calendar cal = Calendar.getInstance();
        StringBuffer path = new StringBuffer();
        path.append(cal.get(Calendar.YEAR))
                .append(File.separator)
                .append((cal.get(Calendar.MONTH)+1))
                .append(File.separator)
                .append(cal.get(Calendar.DAY_OF_MONTH))
                .append(File.separator)
                .append(cal.get(Calendar.HOUR_OF_DAY));
        return path.toString();
    }

    /**
     * 博客路径
     * @return
     */
    public static String blogPath(){
        return BLOG + File.separator + PathUtil.dataPath()+ File.separator;
    }

    /**
     * 标签路径
     * @return
     */
    public static String tagPath(){
        return TAG + File.separator + PathUtil.dataPath()+ File.separator;
    }

    /**
     * 图片路径
     * @return
     */
    public static String imgPath(){
        return IMG + File.separator + PathUtil.dataPath()+ File.separator;
    }

    public static void main(String[] args) {
        System.out.println(PathUtil.tagPath());
    }
}
