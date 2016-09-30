package org.jeecgframework.test.demo;

import java.util.HashMap;
import java.util.Map;


import org.jeecgframework.core.util.JSONHelper;

import com.insiap.core.util.WebServiceConstants;
import com.insiap.core.util.WebServiceUtil;

public class WebServiceTestClient {
	public static void main(String[] args) {
		String url = WebServiceConstants.WS_URL_UAC; 
		String xmlns = WebServiceConstants.WS_XMLNS_UAC; 
		String method= WebServiceConstants.ENTRANCE_USER_UAC;
				
		String result = "";

		HashMap<String, String> params = new HashMap<String, String>();
		params.put("UserName", "18363920690");
		params.put("PassWord", "12345678");
		// Phone 手机端 Web 网页端 Pad平板端
		params.put("ReqestDevice", "Web");
		params.put("APKVersion", "1.0.0");

		String paramString = WebServiceUtil.getServiceParams(WebServiceConstants.METHOD_USER_LOGIN_UAC, params);
		HashMap<String, String> pamps = new HashMap<String, String>();
		pamps.put("strJson", paramString);
		//System.out.println(paramString);
		String SoapHeaderUser = WebServiceConstants.SoapHeaderUser;
		String SoapHeaderSign = WebServiceConstants.SoapHeaderSign;
		
		result = WebServiceUtil.SoapWebservice(url, xmlns, method, pamps, SoapHeaderUser, SoapHeaderSign);
		//JSONObject jsonObject = JSONObject.fromObject(result);
		System.out.println(result);
		Map<String,Object> results = JSONHelper.json2Map(result);
		System.out.println(results.get("Phone"));		
	}
	

	
	public static void main12(String[] args){
		String key = WebServiceUtil.downloadSoapHeaderKey("18363920690", "12345678");
		
		System.out.println(key);
		
		String SoapHeaderUser = WebServiceConstants.SoapHeaderUser;
		String SoapHeaderSign = WebServiceConstants.SoapHeaderSign;
		
		HashMap<String, String> params = new HashMap<String, String>();
		params.put("AgentID", "1537");

		String paramString = WebServiceUtil.getServiceParams(WebServiceConstants.METHOD_USER_CARDINFO_CAS, params);
		HashMap<String, String> pamps = new HashMap<String, String>();
		pamps.put("strJson", paramString);
		
		String result="";
		String url = WebServiceConstants.WS_URL_CAS; 
		String xmlns = WebServiceConstants.WS_XMLNS_CAS; 
		String method= WebServiceConstants.ENTRANCE_USER_CAS;
		result = WebServiceUtil.SoapWebservice(url, xmlns, method, pamps, SoapHeaderUser, SoapHeaderSign);
//		result = WebServiceRequestHelper.sendRequest(paramsMap,
//				wsdl, soapAction, method, xmlns);
		System.out.println(result);
	}
}