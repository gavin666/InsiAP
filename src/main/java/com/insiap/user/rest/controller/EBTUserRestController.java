package com.insiap.user.rest.controller;

import org.jeecgframework.core.util.ResourceUtil;
import org.jeecgframework.web.system.pojo.base.TSUser;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(value = "/ebtuser")
public class EBTUserRestController {

	/**
	 * 访问地址：http://localhost:8080/insiap/rest/ebtuser/agent
	 * 
	 * @return
	 */
	@RequestMapping(value = "/agent",method = RequestMethod.GET)
	@ResponseBody
	public TSUser agent() {
		TSUser user = ResourceUtil.getSessionUserName();
		return user;
	}
}
