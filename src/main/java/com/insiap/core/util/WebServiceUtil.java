package com.insiap.core.util;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.Map.Entry;

import org.jeecgframework.core.util.JSONHelper;
import org.json.JSONArray;
import org.json.JSONObject;

public class WebServiceUtil {
	/**
	 * 调用WebService
	 * 
	 * @param url服务地址
	 * @param xmlns命名空间
	 * @param method方法名
	 * @param pams参数集合
	 * @param SoapHeaderUser
	 * @param SoapHeaderSign
	 */
	public static String SoapWebservice(String url, String xmlns, String method, HashMap<String, String> pams,
			String SoapHeaderUser, String SoapHeaderSign) {
		String result = "";
		SoapObject soapobj = new SoapObject(xmlns, SoapHeaderUser, SoapHeaderSign);
		soapobj.setWsURL(url);//
		soapobj.setSoapAction(xmlns);
		soapobj.setMethod(method);
		soapobj.setParams(pams);
		try {
			result = soapobj.sendRequest();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	/**
	 * 组装参数信息为Json
	 * 
	 * @return
	 */
	public static String getServiceParams(String serviceName, HashMap<String, String> params) {
		JSONObject json = new JSONObject();
		JSONArray array = new JSONArray();
		try {
			json.put("ServiceName", serviceName);
			Set<Entry<String, String>> set = params.entrySet();
			Iterator<Entry<String, String>> it = set.iterator();
			while (it.hasNext()) {
				Entry<String, String> keyValue = it.next();
				array.put(new JSONObject().put("name", keyValue.getKey()).put("value", keyValue.getValue()));
				json.put("Parameters", array);
			}
			return json.toString();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	/***
	 * 获取EBT公钥。
	 * 
	 * @param time
	 * @return
	 * @throws EBTSoapHeaderException
	 * @throws UnknownHostException
	 * @throws ConnectTimeoutException
	 */
	public static String downloadSoapHeaderKey(String user, String password) {

		String public_key = "";

		SoapObject soapobj = new SoapObject(WebServiceConstants.WS_XMLNS_UAC, "", "");
		soapobj.setWsURL(WebServiceConstants.WS_URL_UAC);//
		soapobj.setSoapAction(WebServiceConstants.WS_XMLNS_UAC);

		soapobj.setMethod(WebServiceConstants.METHOD_USER_KEY_UAC);
		HashMap<String, String> pams = new HashMap<String, String>();

		pams.put("user", user);
		pams.put("password", password);
		soapobj.setParams(pams);
		try {
			String result = soapobj.sendRequest();
			// {"validate":1,"key":"bfef8dd0baecf5975718cf295a299e19"}
			
			Map<String, Object> key = JSONHelper.json2Map(result);
			//System.out.print(key.get("key"));
			if (key != null && "1".equals(key.get("validate")+"")) {
				public_key = (String) key.get("key");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return public_key;

	}

}
