package cn.edu.nwafu.blog.util;

import org.springframework.util.DigestUtils;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/**
 * @author shensr
 * @version V1.0
 * @description: MD5加密
 * @create 2019/9/6
 **/

public class MD5Utils {

    /**
     * MD5加密
     * @param str 要加密的字符串
     * @return    加密后的字符串
     */
    public static String code(String str){
        try {
            MessageDigest md = MessageDigest.getInstance("MD5");
            md.update(str.getBytes());
            byte[]byteDigest = md.digest();
            int i;
            StringBuffer buf = new StringBuffer("");
            for (int offset = 0; offset < byteDigest.length; offset++) {
                i = byteDigest[offset];
                if (i < 0)
                    i += 256;
                if (i < 16)
                    buf.append("0");
                buf.append(Integer.toHexString(i));
            }
            //32位加密
            return buf.toString();
            // 16位的加密
            //return buf.toString().substring(8, 24);
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return null;
        }

    }

    /**
     * SpringBoot 自带的MD5加密
     * @param str
     * @return
     */
    public static String codeMD5(String str){
        return DigestUtils.md5DigestAsHex(str.getBytes());
    }


    public static void main(String[] args) {

    }
}
