package com.mogaco.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("common/**")
public class CommonController {

	
    @RequestMapping("/index1.do")
    public String index(@RequestParam Map map ,Model model, HttpServletRequest req, HttpServletRequest res){
    	System.out.println("인덱스이동");
    	return "index1";
    }

    
    
}
