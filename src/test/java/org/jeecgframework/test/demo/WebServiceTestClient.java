package org.jeecgframework.test.demo;

import java.util.HashMap;

import org.apache.cxf.jaxws.JaxWsProxyFactoryBean;
import org.jeecgframework.core.util.WebServiceUtil;
import org.jeecgframework.web.demo.ws.test.JeecgWServiceI;

import net.sf.json.JSONObject;

public class WebServiceTestClient {
	public static void main11(String[] args) {
		String url = "http://uacserver.e-bao.cn:8086/UACService.asmx"; 
		String xmlns = "http://www.songlink.uac.cn/"; 
		String method= "RequestSecretDeviceService";
				
		String result = "";

		HashMap<String, String> params = new HashMap<String, String>();
		params.put("UserName", "18363920690");
		params.put("PassWord", "12345678");
		// Phone 手机端 Web 网页端 Pad平板端
		params.put("ReqestDevice", "Web");
		params.put("APKVersion", "1.0.0");

		String paramString = WebServiceUtil.getServiceParams("Login", params);
		HashMap<String, String> pamps = new HashMap<String, String>();
		pamps.put("strJson", paramString);
		//System.out.println(paramString);
		String SoapHeaderUser = "CASClient";
		String SoapHeaderSign = "adbb683698744f8643d144091a71e040";
		
		result = WebServiceUtil.SoapWebservice(url, xmlns, method, pamps, SoapHeaderUser, SoapHeaderSign);
		//JSONObject jsonObject = JSONObject.fromObject(result);
		
		System.out.println(result.toString());		
	}
	
}