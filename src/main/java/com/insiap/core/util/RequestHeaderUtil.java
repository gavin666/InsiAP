package com.insiap.core.util;

import java.time.LocalDateTime;
import java.time.ZoneOffset;
import java.util.Arrays;

import org.jeecgframework.core.util.JSONHelper;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.util.DigestUtils;

import com.google.common.base.Charsets;

public class RequestHeaderUtil {
	public static String sign(String deviceId, String originKey, long signTime) {
        String requestKey = md5(deviceId + originKey);
        return md5(deviceId + signTime + requestKey);
    }

    private static String md5(String string) {
        return DigestUtils.md5DigestAsHex(string.getBytes(Charsets.UTF_8));
    }
    
    public static HttpHeaders getHeaders(String User_Agent,String Token,String deviceId,String signVersion,String originKey){     
        long signTime = LocalDateTime.now().toInstant(ZoneOffset.ofHours(8)).toEpochMilli();
        
        AuthorizationInfo  au = new AuthorizationInfo();
        au.setDeviceId(deviceId);
        au.setSignVersion(signVersion);
        au.setSignTimestamp(signTime);
        au.setSign(RequestHeaderUtil.sign(deviceId, originKey,signTime ));
        
        String au_json = JSONHelper.bean2json(au);
        //String au_json = "{'deviceId':'"+deviceId+"','signVersion':'"+signVersion+"','SignTimestamp':'"+signTime+"','sign':'"+RequestHeaderUtil.sign(deviceId, originKey,signTime )+"'}"
        		    		
        HttpHeaders headers = new HttpHeaders();
        headers.add("EBT-Authorization", au_json);
        headers.add("User-Agent", User_Agent);
        headers.add("Token", Token);
   
        headers.setAccept(Arrays.asList(MediaType.APPLICATION_JSON));
        return headers;
    }
     
}
