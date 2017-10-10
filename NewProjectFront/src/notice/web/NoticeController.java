package notice.web;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.oreilly.servlet.MultipartRequest;

import notice.service.FileUtils;
import notice.service.InquiryDTO;
import notice.service.Noti_ModelDto;
import notice.service.NoticeServiceImpl;
import notice.service.PagingUtil;
import notice.service.impl.NoticeDao;


@Controller
public class NoticeController {

	@Value("${PAGE_SIZE}")
	private String pageSize;
	
	@Value("${BLOCK_PAGE}")
	private String blockPage;
	
	@Resource(name="noticeService")
	public NoticeServiceImpl service;
	
	@RequestMapping("/Notice/Notice.do")
	public String notice(HttpServletRequest req,//페이징용 메소드에 전달
			@RequestParam Map map,//검색용 파라미터 받기
			@RequestParam(required=false,defaultValue="1") int nowPage,//페이징용 nowPage파라미터 받기용
			Model model) throws Exception{
		//페이징을 위한 로직 시작]
		//전체 레코드 수
		int totalRecordCount=service.getTotalCount(map);		
		//전체 페이지수]
		int totalPage = (int)Math.ceil((double)totalRecordCount/Integer.parseInt(pageSize));	
		//시작 및 끝 ROWNUM구하기]
		int start= (nowPage-1)*Integer.parseInt(pageSize)+1;
		int end = nowPage*Integer.parseInt(pageSize);		
		//페이징을 위한 로직 끝]	
		map.put("start", start);
		map.put("end", end);		
			
		//서비스 호출]
		List<Noti_ModelDto> list = service.selectNoti_ModelList(map);
		
		String pagingString=PagingUtil.pagingText(totalRecordCount, Integer.parseInt(pageSize),Integer.parseInt(blockPage), nowPage,req.getContextPath()+"/Notice/Notice.do?");
		
		model.addAttribute("list", list);
		model.addAttribute("pagingString", pagingString);
		
		return "/notice/Notice";
	}//////////////////////////////////////////////
	
		//상세보기
		@RequestMapping("/Notice/NoticeView.do")
		public String view(ModelMap model,@RequestParam Map map) throws Exception{
			
			Noti_ModelDto dto = service.selectOne(map);
			
			dto.setNot_content(dto.getNot_content().replace("\r\n", "<br/>"));
			model.addAttribute("dto",dto);
			
			return "/notice/NoticeView";
		}//////////////////////////////
		
	@RequestMapping("/Notice/Faq.do")
	public String faq() throws Exception{
		
		return "/notice/Faq";
	}
	@RequestMapping(value="/Notice/Inquiry.do",method=RequestMethod.GET)
	public String inquiry() throws Exception{
		System.out.println("dddd");
		return "/notice/Inquiry";
	}
	@RequestMapping(value="/Notice/Inquiry.do",method=RequestMethod.POST)
	public String inquirypost(HttpServletRequest req, Model model) throws Exception{
		System.out.println(req.getServletContext().getRealPath("/UploadInquiry"));
		//MultipartRequest mr=FileUtils.upload(req,req.getServletContext().getRealPath("/UploadInquiry"));
		InquiryDTO dto = new InquiryDTO();
		//NoticeDao dao = new NoticeDao();
		int sucorfail=0;
		MultipartRequest mr=FileUtils.upload(req,req.getServletContext().getRealPath("/UploadInquiry"));		
		if(mr!=null) {
		dto.setCategory(mr.getParameter("category"));
		dto.setTitle(mr.getParameter("title"));
		dto.setContent(mr.getParameter("contents"));
		dto.setImage(mr.getFilesystemName("userfile"));
		dto.setSmem_id(mr.getParameter("smem_id"));
		System.out.println("43");
		sucorfail=service.inquiryInsert(dto);
		model.addAttribute("SUC_FAIL",sucorfail);
		model.addAttribute("WHERE","INQUIRY");
		}
		return "/message/Message";
	}
	@RequestMapping("/Notice/Voc.do")
	public String voc() throws Exception{
		return "/notice/Voc";
	}
	
}
