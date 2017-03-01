/**
 * 
 */
package com.saike.test.controller.test;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.saike.framework.sso.client.SSOClient;

/**
 * @author wangguohong
 *
 */

@Controller
@RequestMapping("login")
public class LoginController {
	
	@Autowired
	private SSOClient SSOClient;
	
	  @RequestMapping(value="/index")
	   public String  index(HttpServletRequest request){
		       System.err.println("");
		    return "login/index";
	   }

	  
	  @RequestMapping(value="/tologin")
	   public String  login(HttpServletRequest request){
		     long userId= SSOClient.getLoginStatus(request);
		     request.setAttribute("userId",userId);
		     return "login/tologin";
	   }
}
