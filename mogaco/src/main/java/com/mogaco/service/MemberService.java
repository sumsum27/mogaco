package com.mogaco.service;

import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import com.mogaco.repository.ServiceWrapper;


@Service
public class MemberService extends ServiceWrapper{
	
	@Transactional
	public void memberJoin(Map map){
		
		System.out.println(map);
		dao.insert("memberMapper.memberInsert", map);
		
	}

}
