package com.insiap.core.userinfo;

import java.util.HashMap;
import java.util.Map;

import org.jeecgframework.core.util.JSONHelper;

import com.insiap.core.util.WebServiceConstants;
import com.insiap.core.util.WebServiceUtil;

public class GetUserInfoFromWS {
	// 验证宜保通用户
	public static Map<String, Object> checkEBTUser(String UserName, String PassWord) {
		String url = WebServiceConstants.WS_URL_UAC;
		String xmlns = WebServiceConstants.WS_XMLNS_UAC;
		String method = WebServiceConstants.ENTRANCE_USER_UAC;

		String result = "";

		HashMap<String, String> params = new HashMap<String, String>();
		params.put("UserName", UserName);
		params.put("PassWord", PassWord);
		// Phone 手机端 Web 网页端 Pad平板端
		params.put("ReqestDevice", "Web");
		params.put("APKVersion", "1.0.0");

		String paramString = WebServiceUtil.getServiceParams(WebServiceConstants.METHOD_USER_LOGIN_UAC, params);
		HashMap<String, String> pamps = new HashMap<String, String>();
		pamps.put("strJson", paramString);
		// System.out.println(paramString);
		String SoapHeaderUser = WebServiceConstants.SoapHeaderUser;
		String SoapHeaderSign = WebServiceConstants.SoapHeaderSign;

		result = WebServiceUtil.SoapWebservice(url, xmlns, method, pamps, SoapHeaderUser, SoapHeaderSign);
		Map<String, Object> results = JSONHelper.json2Map(result);
		// System.out.println(result);
		return results;
	}

	// 获取名片信息下，指定节点
	public static Map<String, Object> getUserCardInfo(String UserID, String NodeName) {
		String SoapHeaderUser = WebServiceConstants.SoapHeaderUser;
		String SoapHeaderSign = WebServiceConstants.SoapHeaderSign;

		HashMap<String, String> params = new HashMap<String, String>();
		params.put("AgentID", UserID);

		String paramString = WebServiceUtil.getServiceParams(WebServiceConstants.METHOD_USER_CARDINFO_CAS, params);
		HashMap<String, String> pamps = new HashMap<String, String>();
		pamps.put("strJson", paramString);

		String result = "";
		String url = WebServiceConstants.WS_URL_CAS;
		String xmlns = WebServiceConstants.WS_XMLNS_CAS;
		String method = WebServiceConstants.ENTRANCE_USER_CAS;
		result = WebServiceUtil.SoapWebservice(url, xmlns, method, pamps, SoapHeaderUser, SoapHeaderSign);
		Map<String, Object> results = JSONHelper.json2Map(JSONHelper.json2Map(result).get("AgentCard").toString());
		return results;
	}
}
