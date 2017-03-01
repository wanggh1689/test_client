/**
 * 
 */
package com.saike.test.controller.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
 
@Controller
@RequestMapping("user")
public class UserController {

	@RequestMapping(value="/tologin")
	   public String  tologin(){
			 System.err.println("--------------tologin-------------------->>");
		    return "user/login";
	   }
}
