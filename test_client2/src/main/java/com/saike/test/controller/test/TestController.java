package com.saike.test.controller.test;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("test")
public class TestController {
	 
	@RequestMapping(value="/index")
	   public String  index(){
			 System.err.println("---------------------------------->>");
		    return "test/index";
	   }
	
	@RequestMapping(value="showUser")
	   public String  showuser(){
			 System.err.println("--------------user-------------------->>");
		    return "test/showUser";
	   }
}
