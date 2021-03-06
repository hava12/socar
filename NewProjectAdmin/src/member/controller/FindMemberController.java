package member.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.smartcardio.Card;

import bbs.service.PagingUtil;
import member.service.CardDto;
import member.service.MemDto;
import member.service.MembershipDto;
import member.service.impl.MemberDao;

public class FindMemberController extends HttpServlet {
	
	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//한글처리]
				req.setCharacterEncoding("UTF-8");
				//검색과 관련된 파라미터 받기]
				String 	searchColumn = req.getParameter("searchColumn");
				String 	searchWord = req.getParameter("searchWord");/*.toUpperCase()*/
				//검색후 페이징과 관련된 파라미터를 전달할 값을 저장할 변수]
				String addQuery ="";
						
				Map<String,Object> map = new HashMap<String,Object>();
				
				
				if(searchWord !=null){
					addQuery+="searchColumn="+searchColumn+"&searchWord="+searchWord+"&";
					map.put("searchColumn",searchColumn);
					map.put("searchWord",searchWord);
				}
		
		
		MemberDao dao = new MemberDao(req.getServletContext());
		
		//페이징을 위한 로직 시작
				//전체 레코드 수
						int totalRecordCount = 0;
						try {
							totalRecordCount = dao.getSOTotalRecordCount(map);
						} catch (Exception e1) {
							e1.printStackTrace();
						}
						//페이지 사이즈
						int pageSize  =Integer.parseInt(req.getServletContext().getInitParameter("PAGE_SIZE"));
						//블락페이지
						int blockPage =Integer.parseInt(req.getServletContext().getInitParameter("BLOCK_PAGE"));
						//전체 페이지수]
						int totalPage = (int)Math.ceil((double)totalRecordCount/pageSize);		
						//현재 페이지를 파라미터로 받기]
						int nowPage=req.getParameter("nowPage")==null ? 1 :	Integer.parseInt(req.getParameter("nowPage"));		
						//시작 및 끝 ROWNUM구하기]
						int start= (nowPage-1)*pageSize+1;
						int end = nowPage*pageSize;	
						map.put("start", start);
						map.put("end", end);
		
		List<MemDto> list = null;
		try {
			dao = new MemberDao(req.getServletContext());
			list = dao.selectMemList(map);
		} catch (Exception e) {e.printStackTrace();}
		
		//페이지용 문자열 생성]
		String pagingString=PagingUtil.pagingText(totalRecordCount, pageSize, blockPage, nowPage,req.getServletContext().getContextPath()+"/Member/FindId.do?");
		
		req.setAttribute("list", list);
		req.setAttribute("pagingString", pagingString);
		req.setAttribute("nowPage", nowPage);
		req.setAttribute("totalPage", totalPage);
		req.setAttribute("totalRecordCount", totalRecordCount);
		req.setAttribute("pageSize", pageSize);
		
		req.getRequestDispatcher("/admin/member/IdFind.jsp").forward(req, resp);	
	}///////////////////
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//한글처리]
		req.setCharacterEncoding("UTF-8");
		//검색과 관련된 파라미터 받기]
		String 	searchColumn = req.getParameter("searchColumn");
		String 	searchWord = req.getParameter("searchWord");/*.toUpperCase()*/
		//검색후 페이징과 관련된 파라미터를 전달할 값을 저장할 변수]
		String addQuery ="";
				
		Map<String,Object> map = new HashMap<String,Object>();
		
		if(searchWord !=null){
			addQuery+="searchColumn="+searchColumn+"&searchWord="+searchWord+"&";
			map.put("searchColumn",searchColumn);
			map.put("searchWord",searchWord);
		}
		
		MemberDao dao = new MemberDao(req.getServletContext());
		
				int totalRecordCount = 0;
				try {
					totalRecordCount = dao.getSOTotalRecordCount(map);
				} catch (Exception e1) {
					e1.printStackTrace();
				}
				//페이지 사이즈
				int pageSize  =Integer.parseInt(req.getServletContext().getInitParameter("PAGE_SIZE"));
				//블락페이지
				int blockPage =Integer.parseInt(req.getServletContext().getInitParameter("BLOCK_PAGE"));
				//전체 페이지수]
				int totalPage = (int)Math.ceil((double)totalRecordCount/pageSize);		
				//현재 페이지를 파라미터로 받기]
				int nowPage=req.getParameter("nowPage")==null ? 1 :	Integer.parseInt(req.getParameter("nowPage"));		
				//시작 및 끝 ROWNUM구하기]
				int start= (nowPage-1)*pageSize+1;
				int end = nowPage*pageSize;	
				map.put("start", start);
				map.put("end", end);
		List<CardDto> list = null;
		int point = 0;
		String op = "";
		dao = new MemberDao(req.getServletContext());
		try {list = dao.selectCardList(req.getParameter("smem_id"),map);
		dao = new MemberDao(req.getServletContext());
			point = dao.selectMemOne(req.getParameter("smem_id")).getMs_change();
		} catch (Exception e) {e.printStackTrace();
		e.getMessage();
		}
		op += "opener.document.getElementById(\"smem_id\").value ='"+req.getParameter("smem_id")+"';" 
			+ "opener.document.getElementById(\"smem\").value ='"+req.getParameter("smem_id")+"';";
			
		System.out.println(req.getParameter("f_case"));
			///////////////예약일 때
			if(req.getParameter("f_case").equals("reservation")) {
						op += "opener.document.getElementById(\"point_h\").value="+point+";"
							+ "opener.document.getElementById('card_code').innerHTML='";
						
						for(CardDto dto : list) {
							op += "<option value="+dto.getCard_code()+">"+dto.getCard_code()+"</option>";
						}
						
						op += "';";
			}
			
		req.setAttribute("MSG", op);
		//페이지용 문자열 생성]
		String pagingString=PagingUtil.pagingText(totalRecordCount, pageSize, blockPage, nowPage,req.getServletContext().getContextPath()+"/Member/FindId.do?");
		req.setAttribute("pagingString", pagingString);
		req.setAttribute("nowPage", nowPage);
		req.setAttribute("totalPage", totalPage);
		req.setAttribute("totalRecordCount", totalRecordCount);
		req.setAttribute("pageSize", pageSize);
		
		req.setAttribute("WHERE", "FIND_MEM");
		req.setAttribute("SUC_FAIL", 1);
		
		req.getRequestDispatcher("/admin/util/PopMessage.jsp").forward(req,resp);
	
	}///////////////////
	
}
