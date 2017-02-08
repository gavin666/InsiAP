package org.jeecgframework.test.demo;

import org.springframework.http.HttpEntity;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.web.client.RestTemplate;
import com.insiap.core.util.RequestHeaderUtil;
  
public class SpringRestClient {
  
//    public static final String REST_SERVICE_URI = "http://api.test.e-baotong.cn";
    public static final String REST_SERVICE_URI = "https://api.e-bao.cn";
    public static final String User_Agent="postman ryan.liu";
    public static final String Token = "fefaewfaef";   
               
    public static final String deviceId = "123";
    public static final String signVersion = "v1.1";
    public static final String originKey = "ios-zyj-v1.1";
    
    /*
     * Send a GET request to get a specific user whit header.
     */
    private static void getUserByAuth(){	 
         System.out.println("\nTesting getDemoUser API----------");
         RestTemplate restTemplate = new RestTemplate();
         HttpEntity<String> request = new HttpEntity<String>(RequestHeaderUtil.getHeaders(User_Agent,Token,deviceId,signVersion,originKey));
         ResponseEntity<String> response = restTemplate.exchange(REST_SERVICE_URI+"/demo/user", HttpMethod.GET, request, String.class);
         String  user = response.getBody();
         System.out.println(user);
    }
    
    /*
     * Send a Post request to get a specific user 
     */
    private static void getUserByPost(){	 
         System.out.println("\nTesting getDemoUser API----------");
         RestTemplate restTemplate = new RestTemplate();
         String body = "{'userName':'18363920690', 'password':'12345678'}";
         HttpEntity<Object> request = new HttpEntity<Object>(body,RequestHeaderUtil.getHeaders(User_Agent,Token,deviceId,signVersion,originKey));
         ResponseEntity<String> response = restTemplate.exchange(REST_SERVICE_URI+"/user/login", HttpMethod.POST, request, String.class);
         String  user = response.getBody();
         System.out.println(user);
    }

    public static void main(String args[]){     
    	//getUserByAuth();
    	getUserByPost();
    }
}
