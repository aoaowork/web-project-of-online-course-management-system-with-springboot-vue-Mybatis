package com.czj.util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class SHAUtil {

    public static final String KEY_SHA = "SHA";
    public static final String ALGORITHM = "SHA-256";

    /***
     * SHA加密
     * @param data
     * @return
     * @throws Exception
     */
    public static byte[] encryptSHA(byte[] data) throws Exception{
        MessageDigest sha = MessageDigest.getInstance(KEY_SHA);
        sha.update(data);
        return sha.digest();
    }

    // 加密

    public static String SHAEncrypt(final String content) {
        try {
            //输入字符串转为字节数组，调用 digest 方法生成哈希值
            MessageDigest sha = MessageDigest.getInstance(KEY_SHA);
            byte[] sha_byte = sha.digest(content.getBytes());
            StringBuffer hexValue = new StringBuffer();
            for (byte b : sha_byte) {
                //将其中的每个字节转成十六进制字符串：byte类型的数据最高位是符号位，通过和0xff进行与操作，转换为int类型的正整数
                String toHexString = Integer.toHexString(b & 0xff);
                //这行代码的作用是将每个字节转换为两位十六进制表示，并追加到 hexValue 字符串缓冲区中。如果生成的十六进制字符串长度不足两位，则在前面补零以确保格式一致
                hexValue.append(toHexString.length() == 1 ? "0" + toHexString : toHexString);
            }
            return hexValue.toString();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "";
    }

    //SHA-256加密
    public static String SHA256Encrypt(String sourceStr) {
        MessageDigest md = null;
        try {
            md = MessageDigest.getInstance(ALGORITHM);
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }
        if (null != md) {
            //使用 update 方法将原始字符串（通过 getBytes() 转换为字节数组）提供给 MessageDigest
            md.update(sourceStr.getBytes());
            //digest() 方法计算并返回消息摘要，结果是一个字节数组，调用辅助方法 getDigestStr 将哈希值字节数组转为可读的 16 进制字符串。
            String digestStr = getDigestStr(md.digest());
            return digestStr;
        }
        return null;
    }

    private static String getDigestStr(byte[] origBytes) {
        String tempStr = null;
        StringBuilder stb = new StringBuilder();
        for (int i = 0; i < origBytes.length; i++) {
            tempStr = Integer.toHexString(origBytes[i] & 0xff);
            if (tempStr.length() == 1) {
                stb.append("0");
            }
            stb.append(tempStr);

        }
        return stb.toString();
    }
}
