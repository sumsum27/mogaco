package com.mogaco.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.lang.ProcessBuilder.Redirect;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.mogaco.service.NoticeService;
import com.mogaco.vo.NoticeVO;


@Controller
@RequestMapping("notice/**")
public class NoticeController {

	@Autowired
	private NoticeService service;
	
	// ckTest
	@RequestMapping(value="/ckTest.do", method = RequestMethod.GET)
	public void ckTest(HttpServletRequest req, HttpServletRequest res){
    	System.out.println("ckTest 페이지 이동");	
    }
	
	// INSERT 
	@RequestMapping(value="/noticeInsert.do", method = RequestMethod.GET)
	public void noticeInsert(HttpServletRequest req, HttpServletRequest res){
    	System.out.println("noticeInsert 페이지 이동");	
    }
	
	@RequestMapping(value="/noticeInsert.do", method = RequestMethod.POST)
	public String noticeInsert(@RequestParam Map map ,Model model, HttpServletRequest req, HttpServletRequest res){
		System.out.println("noticeInsert POST등록 ::: " + map.toString());
		service.noticeInsert(map);
    	return "redirect:/notice/noticeList.do";
	}	
	
	/**
     * 이미지 업로드 ckeditor
     * @param request
     * @param response
     * @param upload
     */
    @RequestMapping(value = "/community/imageUpload", method = RequestMethod.POST)
    public void communityImageUpload(HttpServletRequest request, HttpServletResponse response, @RequestParam MultipartFile upload) {
 
    	System.out.println("CK에디터 controller");
 
        OutputStream out = null;
        PrintWriter printWriter = null;
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
 
        try{
 
            String fileName = upload.getOriginalFilename();
            byte[] bytes = upload.getBytes();
            
            String sPath = "c:" + File.separator + "NAS" // os마다 알아서 파일 세퍼레이터 나눠준다 
	            		+ File.separator;
            
            String uploadPath = sPath + fileName;//저장경로
 
            out = new FileOutputStream(new File(uploadPath));
            out.write(bytes);
            String callback = request.getParameter("CKEditorFuncNum");
 
            printWriter = response.getWriter();
            String fileUrl = sPath + fileName;//url경로
 
            printWriter.println("<script type='text/javascript'>window.parent.CKEDITOR.tools.callFunction("
                    + callback
                    + ",'"
                    + fileUrl
                    + "','이미지를 업로드 하였습니다.'"
                    + ")</script>");
            printWriter.flush();
 
        }catch(IOException e){
            e.printStackTrace();
        } finally {
            try {
                if (out != null) {
                    out.close();
                }
                if (printWriter != null) {
                    printWriter.close();
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
 
        return;
    }


	// LIST
	@RequestMapping(value="/noticeList.do", method = RequestMethod.GET)
	public void noticeList(@RequestParam Map map ,Model model, HttpServletRequest req, HttpServletRequest res){
		System.out.println("noticeList 페이지 이동");
		List<NoticeVO> list = new ArrayList<NoticeVO>();
		list = service.noticeSelectList(map);
    	System.out.println("noticeList 결과 list.size ::: "+ list.size());
    	model.addAttribute("noticeList", list);
    } 
	
	// VIEW 
	@RequestMapping(value="/noticeView.do", method = RequestMethod.GET)
	public void noticeView(@RequestParam Map map ,Model model, HttpServletRequest req, HttpServletRequest res){
		System.out.println("noticeView 페이지이동, 글번호 ::: " + map.toString());
		Map<String, Object> result = service.noticeSelectView(map);
		model.addAttribute("noticeView", result);
		System.out.println("noticeView 결과 :::" + result.toString());
	}
	
	// UPDATE
	@RequestMapping(value="/noticeUpdate.do", method = RequestMethod.GET)
	public void noticeUpdate(@RequestParam Map map ,Model model, HttpServletRequest req, HttpServletRequest res){
		System.out.println("noticeUpdate 페이지이동, 기존정보뷰 ::: " + map.toString());
		Map<String, Object> result = service.noticeSelectView(map);
    	model.addAttribute("noticeView", result);
	}
	
	@RequestMapping(value="/noticeUpdate.do", method = RequestMethod.POST)
	public String noticeUpdate2(@RequestParam Map map ,Model model, HttpServletRequest req, HttpServletRequest res){
		//update
		System.out.println("noticeUpdate POST 수정 ::: " + map.toString());
		int result = service.noticeUpdate(map);
		if(result > 0 ){
			//select  
			Map<String, Object> result2 = service.noticeSelectView(map);
			model.addAttribute("noticeView", result2);
		}
		System.out.println("업데이트정보확인>"+map.get("num")) ;
		return "redirect:/notice/noticeView.do?num="+map.get("num");
	}
	
	// DELETE
	@RequestMapping(value="/noticeDelete.do", method = RequestMethod.GET)
	public String noticeDelete(@RequestParam Map map ,Model model, HttpServletRequest req, HttpServletRequest res){
		System.out.println("noticeDelete 처리, 글번호 ::: " + map.toString());
		int result = service.noticeDelete(map);
    	return "redirect:/notice/noticeList.do";
	}

	
	  
	

}
