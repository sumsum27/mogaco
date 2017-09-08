package com.mogaco.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.mogaco.repository.ServiceWrapper;
import com.mogaco.vo.NoticeVO;

@Service
public class NoticeService extends ServiceWrapper{
	
	public Object noticeSelect;

	@Transactional
	public void noticeInsert(Map map){
		
		System.out.println("noticeInsert 서비스 글 등록 ");
		System.out.println(map.toString());
		
		dao.insert("noticeMapper.noticeInsert", map);
	}

	@Transactional
	public List<NoticeVO> noticeSelect(Map map){
		
		System.out.println("noticeSelect");
		
		List result = dao.selectList("noticeMapper.noticeSelect", map);
		System.out.println("돌아왔니??");
		System.out.println("dao result: " + result.size());
		
		return result;
	}
}
