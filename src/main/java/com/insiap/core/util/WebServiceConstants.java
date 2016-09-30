package com.insiap.core.util;

/**
 * WebService调用常量
 * 
 * @author Gavin.Gao
 *
 */
public class WebServiceConstants {		
	/**UAC WebServie URL**/
	public static final String WS_URL_UAC = "http://uacserver.e-bao.cn:8086/UACService.asmx"; 
	/**UAC WebServie XMLNS**/
	public static final String WS_XMLNS_UAC = "http://www.songlink.uac.cn/";
	/**UAC WebServie WSDL**/
	public static final String WS_WSDL_UAC = "http://uacserver.e-bao.cn:8086/UACService.asmx?wsdl";
	
	
	/**UAC RequestSecretDeviceService 用户信息  方法入口**/
	public static final String ENTRANCE_USER_UAC = "RequestSecretDeviceService";
	
	/**UAC RequestSecretDeviceService 获取公钥方法**/
	public static final String METHOD_USER_KEY_UAC = "GetUserKey";
	
	/**UAC RequestSecretDeviceService 登录方法**/
	public static final String METHOD_USER_LOGIN_UAC = "Login";
	
	/**CAS WebServie URL**/
	public static final String WS_URL_CAS = "http://ws.e-baotong.cn:8085/CASServer.asmx"; 
	/**CAS WebServie XMLNS**/
	public static final String WS_XMLNS_CAS = "http://songlink.org/";
	
	/**CAS RequestDeviceService 用户信息  方法入口**/
	public static final String ENTRANCE_USER_CAS = "RequestDeviceService";
	
	/**CAS RequestDeviceService 获取名片信息方法**/
	public static final String METHOD_USER_CARDINFO_CAS = "GetBusnsCardInfo";
	
	/**通用SoapHeaderUser**/
	public static final String SoapHeaderUser = "CASClient";
	/**通用SoapHeaderSign**/
	public static final String SoapHeaderSign = "adbb683698744f8643d144091a71e040";
}
