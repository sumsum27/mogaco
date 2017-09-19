package com.mogaco.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mogaco.service.MemberService;
import com.mogaco.vo.MemberVO;

@Controller
@RequestMapping("member/**")
public class MemberController {
	
	@Autowired
	private MemberService service;
	
	// 회원가입
	@RequestMapping(value="/memberJoin", method = RequestMethod.GET)
	public void memberJoin(HttpServletRequest req, HttpServletRequest res){
    	System.out.println("회원가입 이동");
    }

	@RequestMapping(value="/memberJoin", method = RequestMethod.POST)
	public String memberJoin(@RequestParam Map map ,Model model, HttpServletRequest req, HttpServletRequest res){
		System.out.println("회원가입 등록 ::: " + map.toString());
		service.memberJoin(map);
    	return "redirect:/";
    }
	
	// 로그인
	@RequestMapping(value="/memberLogin", method = RequestMethod.GET)
	public void memberLogin(HttpServletRequest req, HttpServletRequest res){
    	System.out.println("로그인 이동");
    }
	
	@SuppressWarnings("unused")
	@RequestMapping(value="/memberLogin", method = RequestMethod.POST)
	public String memberLogin(@RequestParam Map map ,RedirectAttributes red, HttpServletRequest req, HttpServletRequest res, HttpSession session){
    	System.out.println("로그인 처리 ::: " + map.toString());
    	
    	Map<String, Object> results = service.memberLogin(map);
       	
    	if(results != null){
    		red.addFlashAttribute("message","로그인 성공");
    		session.setAttribute("member", results);
    	}else {
    		red.addFlashAttribute("message","로그인 실패 results NULL");
    	}
    	
    	return "redirect:/";
    }
	
	// 로그아웃
	@RequestMapping("/memberLogout")
	public String memberLogout(HttpSession session){
		session.invalidate();
		return "redirect:/";
	}

	// VIEW 
	@RequestMapping(value="/memberView.do", method = RequestMethod.GET)
	public void memberView(@RequestParam Map map ,Model model, HttpServletRequest req, HttpServletRequest res){
		System.out.println("memberView 페이지이동, 아이디 ::: " + map.toString());
		
		Map<String, Object> result = service.memberView(map);
		model.addAttribute("memberView", result);
		System.out.println("memberView 결과 :::" + result.toString());
	}
	
	// UPDATE
	@RequestMapping(value="/memberUpdate.do", method = RequestMethod.GET)
	public void memberUpdate(@RequestParam Map map ,Model model, HttpServletRequest req, HttpServletRequest res){
		System.out.println("memberUpdate 페이지이동, 기존정보뷰 ::: " + map.toString());
		Map<String, Object> result = service.memberView(map);
    	model.addAttribute("memberView", result);
	}
	
	@RequestMapping(value="/memberUpdate.do", method = RequestMethod.POST)
	public String memberUpdate2(@RequestParam Map map ,Model model, HttpServletRequest req, HttpServletRequest res){
		//update
		System.out.println("memberUpdate POST 수정 ::: " + map.toString());
		int result = service.memberUpdate(map);
		if(result > 0 ){
			//select  
			Map<String, Object> result2 = service.memberView(map);
			model.addAttribute("memberView", result2);
		}
		System.out.println("업데이트정보확인>"+map.get("id")) ;
		return "redirect:/member/memberView.do?id="+map.get("id");
	}
	
	// DELETE
	@RequestMapping(value="/memberDelete.do", method = RequestMethod.GET)
	public String memberDelete(@RequestParam Map map ,Model model, HttpServletRequest req, HttpServletRequest res, HttpSession session){
		session.invalidate();
		System.out.println("memberDelete 처리, 글번호 ::: " + map.toString());
		int result = service.memberDelete(map);
		
    	return "redirect:/";
	}
	
	// LIST
	@RequestMapping(value="/memberList.do", method = RequestMethod.GET)
	public void memberList(@RequestParam Map map ,Model model, HttpServletRequest req, HttpServletRequest res){
		System.out.println("memberList 페이지 이동");
		List<MemberVO> list = new ArrayList<MemberVO>();
		list = service.memberList(map);
    	System.out.println("memberList 결과 list.size ::: "+ list.size());   
    	model.addAttribute("memberList", list);
    } 
	
	
}
