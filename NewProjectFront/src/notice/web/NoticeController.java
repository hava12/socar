package notice.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NoticeController {

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
	@RequestMapping("/Notice/Notice.do")
	public String notice() throws Exception{
		return "/notice/Notice";
	}
}
