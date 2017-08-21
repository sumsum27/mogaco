package com.mogaco.service;

import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;

import com.mogaco.repository.ServiceWrapper;
import com.mogaco.vo.MemberVO;

@Service
public class MemberService extends ServiceWrapper{
	
	@Transactional
	public void memberJoin(Map model){
		
		System.out.println(model);
		dao.insert("memberMapper.memberInsert", model);
		
	}

}
