package com.mogaco.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.mogaco.repository.ServiceWrapper;
import com.mogaco.vo.NoticeVO;

@Service
public class NoticeService extends ServiceWrapper{
			
	@Transactional
	public List<NoticeVO> noticeSelectList(Map map){
		List result = dao.selectList("noticeMapper.noticeSelectList", map);
		System.out.println("서비스 noticeSelectList result.size ::: " + result.size());
		return result;
	}
	
	@Transactional
	public Map<String, Object> noticeSelectView(Map map){
		Map<String, Object> result = dao.selectOne("noticeMapper.noticeSelectView", map); 
		System.out.println("서비스 noticeSelectView result.size ::: " + result.size());
		return result;
	}
	
	@Transactional
	public int noticeInsert(Map map){
		int result = dao.insert("noticeMapper.noticeInsert", map);
		return result;
	}
	
	@Transactional
	public int noticeUpdate(Map map){
		int result = dao.update("noticeMapper.noticeUpdate", map);
		return result;
	}
	
	@Transactional
	public int noticeDelete(Map map){
		int result = dao.delete("noticeMapper.noticeDelete", map);
		return result;
	}
}













