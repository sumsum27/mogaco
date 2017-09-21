package com.mogaco.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.mogaco.repository.ServiceWrapper;
import com.mogaco.vo.ReviewVO;

@Service
public class ReviewService extends ServiceWrapper{
			
	@Transactional
	public List<ReviewVO> reviewSelectList(Map map){
		List result = dao.selectList("reviewMapper.reviewSelectList", map);
		System.out.println("서비스 reviewSelectList result.size ::: " + result.size());
		return result;
	}
	
	@Transactional
	public Map<String, Object> reviewSelectView(Map map){
		Map<String, Object> result = dao.selectOne("reviewMapper.reviewSelectView", map); 
		System.out.println("서비스 reviewSelectView result.size ::: " + result.size());
		return result;
	}
	
	@Transactional
	public int reviewInsertText(Map map){
		int result = dao.insert("reviewMapper.reviewInsertText", map);
		return result;
	}
	
	@Transactional
	public int reviewInsertImage(Map map){
		int result = dao.insert("reviewMapper.reviewInsertImage", map);
		return result;
	}
	
	@Transactional
	public int reviewUpdate(Map map){
		int result = dao.update("reviewMapper.reviewUpdate", map);
		return result;
	}
	
	@Transactional
	public int reviewDelete(Map map){
		int result = dao.delete("reviewMapper.reviewDelete", map);
		return result;
	}
}













