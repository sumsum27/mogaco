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
	public int noticeUpdate(Map map){
		
		System.out.println("noticeUpdate");
		System.out.println(map.toString());
		
		int result = dao.update("noticeMapper.noticeUpdate", map);
		return result;
		
	}
	
	@Transactional
	public void noticeInsert(Map map){
		
		System.out.println("noticeInsert 서비스 글 등록 ");
		System.out.println(map.toString());
		
		dao.insert("noticeMapper.noticeInsert", map);
	}

	@Transactional
	public List<NoticeVO> noticeSelectList(Map map){
		
		System.out.println("noticeSelectList");
		
		List result = dao.selectList("noticeMapper.noticeSelectList", map);
		System.out.println("돌아왔니??");
		System.out.println("dao result: " + result.size());
		
		return result;
	}
	
	@Transactional
	public Map<String, Object> noticeSelectView(Map map){
		
		System.out.println("noticeSelectView");
		
		Map<String, Object> result = dao.selectOne("noticeMapper.noticeSelectView", map); 
		
		System.out.println("dao result: " + result.size());
		
		return result;
	}
}













