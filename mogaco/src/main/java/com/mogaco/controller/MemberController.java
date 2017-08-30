package com.mogaco.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.mogaco.service.MemberService;
import com.mogaco.vo.MemberVO;

@Controller
@RequestMapping("member/**")
public class MemberController {
	
	@Autowired
	private MemberService service;
	
	@RequestMapping(value="/memberJoin", method = RequestMethod.GET)
	public void memberJoin(HttpServletRequest req, HttpServletRequest res){
    	System.out.println("회원가입 이동");
    }

	@RequestMapping(value="/memberJoin", method = RequestMethod.POST)
	public String memberJoin(@RequestParam Map map ,Model model, HttpServletRequest req, HttpServletRequest res){
		System.out.println("등록");
		System.out.println(map.toString());
		service.memberJoin(map);
    	return "/";
    	
    }
}
