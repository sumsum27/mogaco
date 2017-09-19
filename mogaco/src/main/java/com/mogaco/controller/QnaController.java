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

import com.mogaco.service.QnaService;
import com.mogaco.vo.QnaVO;


@Controller
@RequestMapping("qna/**")
public class QnaController {

	@Autowired
	private QnaService service;
	

	// INSERT 
	@RequestMapping(value="/qnaInsert.do", method = RequestMethod.GET)
	public void qnaInsert(HttpServletRequest req, HttpServletRequest res){
    	System.out.println("qnaInsert 페이지 이동");	
    }
	
	@RequestMapping(value="/qnaInsert.do", method = RequestMethod.POST)
	public String qnaInsert(@RequestParam Map map ,Model model, HttpServletRequest req, HttpServletRequest res){
		System.out.println("qnaInsert POST등록 ::: " + map.toString());
		service.qnaInsert(map);
    	return "redirect:/qna/qnaList.do";
	}	
	
	// LIST
	@RequestMapping(value="/qnaList.do", method = RequestMethod.GET)
	public void qnaList(@RequestParam Map map ,Model model, HttpServletRequest req, HttpServletRequest res){
		System.out.println("qnaList 페이지 이동");
		List<QnaVO> list = new ArrayList<QnaVO>();
		list = service.qnaSelectList(map);
    	System.out.println("qnaList 결과 list.size ::: "+ list.size());
    	model.addAttribute("qnaList", list);
    } 
	
	// VIEW 
	@RequestMapping(value="/qnaView.do", method = RequestMethod.GET)
	public void qnaView(@RequestParam Map map ,Model model, HttpServletRequest req, HttpServletRequest res){
		System.out.println("qnaView 페이지이동, 글번호 ::: " + map.toString());
	
		Map<String, Object> result = service.qnaSelectView(map);
		model.addAttribute("qnaView", result);
		System.out.println("qnaView 결과 :::" + result.toString());
	}
	
	// UPDATE
	@RequestMapping(value="/qnaUpdate.do", method = RequestMethod.GET)
	public void qnaUpdate(@RequestParam Map map ,Model model, HttpServletRequest req, HttpServletRequest res){
		System.out.println("qnaUpdate 페이지이동, 기존정보뷰 ::: " + map.toString());
		Map<String, Object> result = service.qnaSelectView(map);
    	model.addAttribute("qnaView", result);
	}
	
	@RequestMapping(value="/qnaUpdate.do", method = RequestMethod.POST)
	public String qnaUpdate2(@RequestParam Map map ,Model model, HttpServletRequest req, HttpServletRequest res){
		//update
		System.out.println("qnaUpdate POST 수정 ::: " + map.toString());
		int result = service.qnaUpdate(map);
		if(result > 0 ){
			//select  
			Map<String, Object> result2 = service.qnaSelectView(map);
			model.addAttribute("qnaView", result2);
		}
		System.out.println("업데이트정보확인>"+map.get("num")) ;
		return "redirect:/qna/qnaView.do?num="+map.get("num");
	}
	
	// DELETE
	@RequestMapping(value="/qnaDelete.do", method = RequestMethod.GET)
	public String qnaDelete(@RequestParam Map map ,Model model, HttpServletRequest req, HttpServletRequest res){
		System.out.println("qnaDelete 처리, 글번호 ::: " + map.toString());
		int result = service.qnaDelete(map);
    	return "redirect:/qna/qnaList.do";
	}

	
	  
	

}
