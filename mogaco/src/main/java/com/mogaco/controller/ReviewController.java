package com.mogaco.controller;


import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.mogaco.service.ReviewService;
import com.mogaco.vo.ReviewVO;


@Controller
@RequestMapping("review/**")
public class ReviewController {

	@Autowired
	private ReviewService service;
	 
	
	// INSERT 글 
	@RequestMapping(value="/reviewInsertText.do", method = RequestMethod.POST)
	public String reviewInsertText(@RequestParam Map map ,Model model, HttpServletRequest req, HttpServletRequest res){
		System.out.println("reviewInsertText POST등록 ::: " + map.toString());
		service.reviewInsertText(map);
    	return "redirect:/review/reviewList.do";
	}	
	
    @RequestMapping(value = "/reviewInsertImage.do", method = RequestMethod.POST)
    public String reviewInsertImage(MultipartHttpServletRequest request, HttpServletResponse response, @RequestParam Map map) {
    	System.out.println("reivewInsertImageController");
	    List<MultipartFile> files = request.getFiles("files");
	    
	    String totalLoc = "";
	    
	    for(int i=0; i < files.size(); i++) {
	    	
		    MultipartFile mpf = files.get(i);    
		    System.out.println(mpf.getOriginalFilename() + " uploaded!");
		    String sPath = "";
		    try {
			    
			    sPath = "C:" + File.separator + "Users" + File.separator + "USER" + File.separator + "git" + File.separator 
			      + "mogaco" + File.separator + "mogaco" + File.separator + "src" + File.separator + "main" + File.separator 
			      + "webapp" + File.separator + "gallery" + File.separator +  map.get("date") + File.separator;
	
			    if(totalLoc != ""){
			    	totalLoc = totalLoc + ","+ sPath + mpf.getOriginalFilename();			    	
			    }else{
			    	totalLoc = totalLoc + sPath + mpf.getOriginalFilename();
			    }
			    
	            //1. 지정된 위치가 존재하는지 확인하고 없으면 경로를 생성한다.
			    File chkDir = new File(sPath);
			    if(!chkDir.isDirectory()) {
				    chkDir.mkdirs();
			    }
	            
			    //2. 지정된 위치에 파일을 복사한다.
			    FileCopyUtils.copy(mpf.getBytes(), new FileOutputStream(sPath + mpf.getOriginalFilename()));
			    
            } catch (IOException e) {
	            e.printStackTrace();
	        }
        }
	    
	    map.put("picture", totalLoc);
	    service.reviewInsertImage(map);
	    
	    Map<String, Object> result = new HashMap<String, Object>();
	    result.put("result", "success");
	    
	    return "redirect:/review/reviewList.do";
    }
	
	
	
	// LIST
	@RequestMapping(value="/reviewList.do", method = RequestMethod.GET)
	public void reviewList(@RequestParam Map map ,Model model, HttpServletRequest req, HttpServletRequest res) throws FileNotFoundException{
		System.out.println("reviewList 페이지 이동");
		
		List<ReviewVO> list = new ArrayList<ReviewVO>();
		list = service.reviewSelectList(map);
		String fullName = "";
		List<String> result = new ArrayList<String>();
		
		FileInputStream inStream = null;
		for(int i=0; i < list.size(); i++) {
		
			fullName = list.get(i).getPicture();
			
			String[] fullNameCut = fullName.split(",");
			
			for(int j = 0; j < fullNameCut.length; j++){
				System.out.println("fullNameCut Test ::: " + fullNameCut[j]);
//				result.add(fullNameCut[j]);
				File downloadFile = new File(fullNameCut[j]);
		        inStream = new FileInputStream(downloadFile);
			}
		
		}
        model.addAttribute("reviewList", inStream);
        
    } 
	
	// DELETE
	@RequestMapping(value="/reviewDelete.do", method = RequestMethod.GET)
	public String reviewDelete(@RequestParam Map map ,Model model, HttpServletRequest req, HttpServletRequest res){
		System.out.println("reviewDelete 처리, 글번호 ::: " + map.toString());
		
		int result = service.reviewDelete(map);
    	return "redirect:/review/reviewList.do";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	// 갤러리 이미지 업데이트는 보류 
	@RequestMapping(value="/reviewUpdate.do", method = RequestMethod.POST)
	public String reviewUpdate2(@RequestParam Map map ,Model model, HttpServletRequest req, HttpServletRequest res){
		//update
		System.out.println("reviewUpdate POST 수정 ::: " + map.toString());
		
		int result = service.reviewUpdate(map);
		if(result > 0 ){
			//select  
			Map<String, Object> result2 = service.reviewSelectView(map);
			model.addAttribute("reviewView", result2);
		}
		System.out.println("업데이트정보확인>"+map.get("num")) ;
		return "redirect:/review/reviewView.do?num="+map.get("num");
	}
	
	// UPDATE
	@RequestMapping(value="/reviewUpdate.do", method = RequestMethod.GET)
	public void reviewUpdate(@RequestParam Map map ,Model model, HttpServletRequest req, HttpServletRequest res){
		System.out.println("reviewUpdate 페이지이동, 기존정보뷰 ::: " + map.toString());
		
		Map<String, Object> result = service.reviewSelectView(map);
    	model.addAttribute("reviewView", result);
	}
	
	
	// INSERT 페이지 이동 
		@RequestMapping(value="/reviewInsert.do", method = RequestMethod.GET)
		public void reviewInsert(HttpServletRequest req, HttpServletRequest res){
	    	System.out.println("reviewInsert 페이지 이동");	
	    }
	
	// VIEW 
	@RequestMapping(value="/reviewView.do", method = RequestMethod.GET)
	public void reviewView(@RequestParam Map map ,Model model, HttpServletRequest req, HttpServletRequest res){
		System.out.println("reviewView 페이지이동, 글번호 ::: " + map.toString());
	
		Map<String, Object> result = service.reviewSelectView(map);
		model.addAttribute("reviewView", result);
		System.out.println("reviewView 결과 :::" + result.toString());
	}
	
	

	  
	

}
