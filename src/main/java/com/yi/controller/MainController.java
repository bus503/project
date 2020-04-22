package com.yi.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yi.domain.MainVO;
import com.yi.service.MainService;

@Controller
public class MainController {
	
	@Autowired
	MainService service;
	
	
	@RequestMapping(value="/main/insert",method = RequestMethod.GET)
	public String insertGet(MainVO vo) throws Exception{
		return "/main/insert";
		//깃용 재커밋
	}
	
	@RequestMapping(value="/main/insert",method = RequestMethod.POST)
	public String insertPost(MainVO vo) throws Exception{
//		MainVO vo = new MainVO();
//		String StartStr = startdate;
//		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
//		Date startDate = sdf.parse(StartStr);
//		Date endDate = sdf.parse(enddate);
//		vo.setPname(pname);
//		vo.setPcontent(pcontent);
//		vo.setStartdate(startDate);
//		vo.setEnddate(endDate);
//		vo.setProgress(progress);
		service.insert(vo);
		return "redirect:/main/list";
	}
	
	@RequestMapping(value="/main/list",method=RequestMethod.GET)
	public String list(Model model) throws Exception {
		List<MainVO> list = service.list();
		model.addAttribute("list", list);
		return "/main/list";
	}
	
	@RequestMapping(value="/main/detail", method=RequestMethod.GET)
	public String detail(int pno, Model model) throws Exception{
		MainVO vo = service.selectByNo(pno);
		model.addAttribute("main", vo);  
		return "/main/detail";
	}
	
	@RequestMapping(value="/main/delete", method=RequestMethod.GET)
	public String delete(int pno, Model model) throws Exception{
		service.delete(pno);
		model.addAttribute("main", pno);
		return "redirect:/main/list";
	}
	
	@RequestMapping(value="/main/update", method=RequestMethod.GET)
		public String updateGet(int pno, Model model) throws Exception{
		model.addAttribute("main", service.selectByNo(pno));
		return "/main/update";
	}
	
	@RequestMapping(value="/main/update", method=RequestMethod.POST)
	public String updatePost(MainVO vo) throws Exception{
	service.update(vo);
	return "redirect:/main/list";
	}
	


}
