package com.mogaco.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import com.mogaco.repository.ServiceWrapper;
import com.mogaco.vo.MemberVO;


@Service
public class MemberService extends ServiceWrapper{
	
	@Transactional
	public void memberJoin(Map map){
		dao.insert("memberMapper.memberInsert", map);
	}
	
	@Transactional
	public Map<String, Object> memberLogin(Map map){
		Map<String, Object> result = dao.selectOne("memberMapper.memberLogin", map); 
		if(result!=null){			
			System.out.println("서비스 memberView result.size ::: " + result.size());
		}
		return result;
	}
	
	@Transactional
	public Map<String, Object> memberView(Map map){
		Map<String, Object> result = dao.selectOne("memberMapper.memberView", map); 
		
		System.out.println("서비스 memberView result.size ::: " + result.size());
		return result;
	}

	@Transactional
	public int memberUpdate(Map map){
		int result = dao.update("memberMapper.memberUpdate", map);
		return result;
	}
	
	@Transactional
	public int memberDelete(Map map){
		int result = dao.delete("memberMapper.memberDelete", map);
		return result;
	}
	
	@Transactional
	public List<MemberVO> memberList(Map map){
		List result = dao.selectList("memberMapper.memberList", map);
		System.out.println("서비스 memberList result.size ::: " + result.size());
		return result;
	}
}
