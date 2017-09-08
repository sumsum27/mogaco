package com.mogaco.controller;

import java.lang.ProcessBuilder.Redirect;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.mogaco.service.NoticeService;
import com.mogaco.vo.NoticeVO;


@Controller
@RequestMapping("notice/**")
public class NoticeController {

	@Autowired
	private NoticeService service;
	
	@RequestMapping(value="/noticeList.do", method = RequestMethod.GET)
	public void noticeList(@RequestParam Map map ,Model model, HttpServletRequest req, HttpServletRequest res){
		
		
		List<NoticeVO> list = new ArrayList<NoticeVO>();
		list = service.noticeSelect(map);
		
    	System.out.println("noticeList컨트롤러");
    	System.out.println("listsize:::"+ list.size());
    	
    	model.addAttribute("noticeList", list);
    	
    }   
	
	@RequestMapping(value="/noticeInsert.do", method = RequestMethod.GET)
	public void noticeInsert(HttpServletRequest req, HttpServletRequest res){
    	System.out.println("noticeInsert 로 페이지이동");
    	
    }
	
	@RequestMapping(value="/noticeInsert.do", method = RequestMethod.POST)
	public String noticeInsert(@RequestParam Map map ,Model model, HttpServletRequest req, HttpServletRequest res){
		
		System.out.println("컨트롤러 ");
		System.out.println(map.toString());
		service.noticeInsert(map);
		
    	return "redirect:/notice/noticeList.do";
    	
	}	

}
