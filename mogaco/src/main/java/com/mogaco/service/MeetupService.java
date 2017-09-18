package com.mogaco.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.mogaco.repository.ServiceWrapper;

@Service
public class MeetupService extends ServiceWrapper{
			

	@Transactional
	public Map<String, Object> meetupView(Map map){
		//Map<String, Object> result = dao.selectOne("meetupMapper.meetupView", map); 
		//System.out.println("서비스 meetupView result.size ::: " + result.size());
		return null;
	}
	
}













