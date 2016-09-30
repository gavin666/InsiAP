package com.insiap.core.util;

import java.io.IOException;
import java.net.UnknownHostException;
import java.util.Iterator;
import java.util.Map;

import org.apache.http.HttpException;
import org.apache.http.HttpResponse;
import org.apache.http.HttpStatus;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.conn.ConnectTimeoutException;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;
import org.apache.http.util.EntityUtils;


/**
 * 拼接soapheader发送请求WS信息。
 *
 */
public class SoapObject {

	private String wsURL = "";
	private String soapAction = "";

	private String xmlns = "";

	private String Method = "";

	private Map<String, String> params;

	private StringBuilder soapHeader;

	private String account;

	private String publicKey;
	
	private  DefaultHttpClient httpClient ;

	public SoapObject(String xmlns, String account, String key) {
		this.xmlns = xmlns;
	
		this.account = account;
		this.publicKey = key;
		soapHeader = new StringBuilder();

	}
	

	/**
	 * 拼写soap协议
	 */
	public void getSoap() {

		soapHeader = new StringBuilder();

		soapHeader.append("<soap12:Envelope ");
		soapHeader
				.append(" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" ");
		soapHeader.append(" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" ");
		soapHeader
				.append(" xmlns:soap12=\"http://www.w3.org/2003/05/soap-envelope\" >\n");

		soapHeader.append(getSoapHeader());
		soapHeader.append(getSoapBody());
		soapHeader.append("</soap12:Envelope>\n");

		//System.out.println( "soapBody :" + soapHeader.toString());
	}

	/**
	 * 拼写soapheader
	 * 
	 * @return
	 */
	public String getSoapHeader() {

		StringBuilder soapHeaderStr = new StringBuilder();

		soapHeaderStr.append("  <soap12:Header>\n");

		soapHeaderStr.append("     <EBTSoapHeader  xmlns=\"").append(xmlns)
				.append("\">\n");
		soapHeaderStr.append("    <User>").append(account)
				.append("</User>\n");
		soapHeaderStr.append("    <Sign>").append(publicKey)
				.append("</Sign>\n");
		soapHeaderStr.append("    </EBTSoapHeader >\n");
		soapHeaderStr.append("  </soap12:Header>\n");

		return soapHeaderStr.toString();

	}

	/**
	 * 拼写soapbody
	 * 
	 * @return
	 */
	public String getSoapBody() {
		StringBuilder soapBodyStr = new StringBuilder();
		soapBodyStr.append("  <soap12:Body>\n");

		soapBodyStr.append("     <").append(Method).append(" xmlns=\"")
				.append(xmlns).append("\">\n");

		Iterator<?> iter = params.entrySet().iterator();
		while (iter.hasNext()) {
			@SuppressWarnings("rawtypes")
			Map.Entry entry = (Map.Entry) iter.next();
			String key = (String) entry.getKey();
			String val = (String) entry.getValue();
			soapBodyStr.append("     <").append(key).append(">").append(val)
					.append("</").append(key).append(">\n");
		}

		soapBodyStr.append("  </").append(Method).append(">\n");
		soapBodyStr.append("  </soap12:Body>\n");

		return soapBodyStr.toString();

	}

	public String sendRequest() throws HttpException,ConnectTimeoutException ,IOException,UnknownHostException,Exception{
		getSoap();
		String responseString = "";
		 httpClient = new DefaultHttpClient();
		// request 參數 40:
		HttpParams params = httpClient.getParams();
		HttpConnectionParams.setConnectionTimeout(params, 5000);
		//HttpConnectionParams.setSoTimeout(params, 10000);

		// set parameter 44:
		HttpProtocolParams.setUseExpectContinue(httpClient.getParams(), true);
		// POST the envelope 47:
		HttpPost httppost = new HttpPost(this.wsURL);
		// add headers 49:
		httppost.setHeader("soapaction", this.soapAction);
		// httppost.setHeader("Content-Type",
		// "application/x-www-form-urlencoded");
		httppost.setHeader("Content-Type", "application/soap+xml; charset=utf-8");

		// the entity holds the request 54:
		// HttpEntity entity = new StringEntity(envelope); 55:
//		HttpEntity entity = new ByteArrayEntity(this.soapHeader.toString()
//				.getBytes("UTF-8"));

		StringEntity entiy = new StringEntity(soapHeader.toString(), "UTF-8");
		httppost.setEntity(entiy);

		
		// EntityUtils.toString(response.getEntity(), "UTF_8")
		HttpResponse response = httpClient.execute(httppost);
		
//		if(BuildConfig.DEBUG){
//			Log.d("SoapObject", " Status code"+response.getStatusLine().getStatusCode());
//		}
		
		if (response.getStatusLine().getStatusCode() == HttpStatus.SC_OK) {
		   responseString = EntityUtils.toString(response.getEntity(), "UTF-8");
		

		}else{
			throw new HttpException("服务器响应失败");
		}
		httpClient.getConnectionManager().shutdown();
		
		return responseString;

	}

	public void setWsURL(String wsURL) {
		this.wsURL = wsURL;

	}

	public void setSoapAction(String soapAction) {
		this.soapAction = soapAction;
	}

	public String getXmlns() {
		return xmlns;
	}

	public void setXmlns(String xmlns) {
		this.xmlns = xmlns;
	}

	public String getMethod() {
		return Method;
	}

	public void setMethod(String method) {
		Method = method;
	}

	public Map<String, String> getParams() {
		return params;
	}

	public void setParams(Map<String, String> params) {
		this.params = params;
	}

	public String getWsURL() {
		return wsURL;
	}

	public String getSoapAction() {
		return soapAction;
	}
	
	public void shutdown(){
		httpClient.getConnectionManager().shutdown();
	}

}
