package org.jeecgframework.web.demo.ws.test;

import org.apache.cxf.jaxws.JaxWsProxyFactoryBean;

/**
 * 
 * @ClassName: JeecgWServiceClient
 * @Description: cxf客户端测试类
 * 
 */
public class JeecgWServiceClient {

	public static void main11(String[] args) {
		JaxWsProxyFactoryBean bean = new JaxWsProxyFactoryBean();
		bean.setServiceClass(JeecgWServiceI.class);
		bean.setAddress("http://localhost:8080/insiap/cxf/JeecgWService");
		JeecgWServiceI client = (JeecgWServiceI) bean.create();
		System.out.println(client.sayHello());
	}
	
	public static void main(String[] args) {
		JaxWsProxyFactoryBean bean = new JaxWsProxyFactoryBean();
		bean.setServiceClass(JeecgWServiceI.class);
		bean.setAddress("http://localhost:8080/insiap/cxf/JeecgWDemoService");
		JeecgWServiceI client = (JeecgWServiceI) bean.create();
		System.out.println(client.sayHello());
	}
}
