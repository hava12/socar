package notice.web;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import notice.service.Noti_ModelDto;
import notice.service.NoticeServiceImpl;

@Controller
public class NoticeController {

	@Resource(name="noticeService")
	public NoticeServiceImpl service;
	
	@RequestMapping("/Notice/Notice.do")
	public String notice(Model model) throws Exception{
		
		List<Noti_ModelDto> list = service.selectNoti_ModelList();
		
		model.addAttribute("list", list);
		
		return "/notice/Notice";
	}
	
	@RequestMapping("/Notice/Faq.do")
	public String faq() throws Exception{
		
		return "/notice/Faq";
	}
	@RequestMapping("/Notice/Inquiry.do")
	public String inquiry() throws Exception{
		return "/notice/Inquiry";
	}
	@RequestMapping("/Notice/Voc.do")
	public String voc() throws Exception{
		return "/notice/Voc";
	}
	
}
