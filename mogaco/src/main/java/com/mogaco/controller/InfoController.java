package com.mogaco.controller;

import javax.servlet.http.HttpServletRequest;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("info/**")
public class InfoController {

	@RequestMapping(value="/infoMogaco.do", method = RequestMethod.GET)
	public String aboutMogaco(HttpServletRequest req, HttpServletRequest res){
		
    	System.out.println("info/infoMogaco");
    	
    	return "/info/infoMogaco";
    }


}
