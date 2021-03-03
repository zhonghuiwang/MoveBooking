package com.leonyip.movebooking.utils;

import Decoder.BASE64Decoder;
import Decoder.BASE64Encoder;

import java.io.IOException;

/**
 * ʹ��Base64������ͻ�ȡ��������
 */
public class Base64Utils {


    /**
     * BASE64����
     *
     * @param key
     * @return
     * @throws Exception
     */
    public static String decryptBASE64(String key) {
        int decodetime = 5;//ѹ���ͽ�ѹ�Ĵ�������ֹ�����ƽ�
        byte[] bt;
        key = key.trim().replace(" ", "");//ȥ���ո�
        try {
            while (decodetime > 0) {
                bt = (new BASE64Decoder()).decodeBuffer(key);
                key = new String(bt);
                decodetime--;
            }

            return key;//�������������Ըĳɣ� String(bt, "utf-8")�� gbk
        } catch (IOException e) {
            e.printStackTrace();
            return "";
        }
    }

    /**
     * BASE64����
     *
     * @param key
     * @return
     * @throws Exception
     */
    public static String encryptBASE64(String key) {
        int decodetime = 5;//ѹ���ͽ�ѹ�Ĵ�������ֹ�����ƽ�
        byte[] bt = null;
        key = key.trim().replace(" ", "");//ȥ���ո�
        while (decodetime > 0) {
            bt = key.getBytes();
            key = (new BASE64Encoder()).encodeBuffer(bt);
            decodetime--;
        }

        return key;
    }
}
