package com.mogaco.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.mogaco.repository.ServiceWrapper;
import com.mogaco.vo.QnaVO;

@Service
public class QnaService extends ServiceWrapper{
			
	@Transactional
	public List<QnaVO> qnaSelectList(Map map){
		List result = dao.selectList("qnaMapper.qnaSelectList", map);
		System.out.println("서비스 qnaSelectList result.size ::: " + result.size());
		return result;
	}
	
	@Transactional
	public Map<String, Object> qnaSelectView(Map map){
		Map<String, Object> result = dao.selectOne("qnaMapper.qnaSelectView", map); 
		System.out.println("서비스 qnaSelectView result.size ::: " + result.size());
		return result;
	}
	
	@Transactional
	public int qnaInsert(Map map){
		int result = dao.insert("qnaMapper.qnaInsert", map);
		return result;
	}
	
	@Transactional
	public int qnaUpdate(Map map){
		int result = dao.update("qnaMapper.qnaUpdate", map);
		return result;
	}
	
	@Transactional
	public int qnaDelete(Map map){
		int result = dao.delete("qnaMapper.qnaDelete", map);
		return result;
	}
}













