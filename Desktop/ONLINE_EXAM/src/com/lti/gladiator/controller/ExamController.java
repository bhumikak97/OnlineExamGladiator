package com.lti.gladiator.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.lti.gladiator.bean.Exam;
import com.lti.gladiator.bean.ExamDetails;
import com.lti.gladiator.exception.ExamDetailsException;
import com.lti.gladiator.exception.ExamException;
import com.lti.gladiator.service.ExamDetailsService;
import com.lti.gladiator.service.ExamService;


@Controller
public class ExamController {
	
	@Resource
	private ExamService service;
	
	
	
	@RequestMapping("/home.htm")
	public String getHomePage() {
		return "Home";
	}
	
	@RequestMapping("/insertExamPage.htm")
	public ModelAndView findAll(){
		List<Exam> examList = null;
		ModelAndView mAndV = null;
		try {
			examList = service.findAll();
			//System.out.println(examList);
			mAndV = new ModelAndView();
			// Pass-on this data to JSP
			mAndV.setViewName("view_test_details");
			mAndV.addObject("list", examList);
		} catch (ExamException e) {
			e.printStackTrace();
		}
		return mAndV;
	} 
	
	
	
//	@RequestMapping("/findExamById.htm")
//	public ModelAndView findByExamId(@RequestParam("id") int id) {
//		System.out.println(id);
//		ModelAndView mAndV = new ModelAndView();
//	
//		try {
//			Exam exam = service.findByExamId(id);
//		mAndV.setViewName("findExamByIdPage");
//		mAndV.addObject("findExamById", exam);
//			System.out.println(id);
//			
//			// Pass-on this data to JSP
//			mAndV.addObject("exam",exam);
//		} catch (ExamException e) {
//			e.printStackTrace();
//		}
//		return mAndV;
//	} 
	
//	@RequestMapping("/findExamByIdPage.htm")
//	public String getfindExamExamPage() {
//		return "findExamByIdPage";
//	}
	
//	@RequestMapping("/registration.htm")
//	public String registerexam(HttpServletRequest req) {
//		String strexamId = req.getParameter("examId");
//		Exam exam = new Exam();
//		exam.setexamId(Integer.parseInt(strexamId));
//		
//		try {
//			services.joinexamloyee(exam);
//		} catch (ExamException e) {
//			e.printStackTrace();
//		}
//		return "SuccInsert";
//	}
	
	@RequestMapping("/deleteExam.htm")
	public String deleteExamById(@RequestParam("id") int id)//(HttpServletRequest request)//(Model model) 
	{			
		System.out.println(id);
		
		try 
		{
			service.deleteExamById(id);
		} catch (ExamException e) 
		{
			e.printStackTrace();
		}		
		return "redirect:/insertExamPage.htm";		
	}
	
	
 
	
	
	
//	USER MODULE
	@RequestMapping("/user_report.htm")
	public String getUserReportPage() {
		return "user_report";
	}
	
	@RequestMapping("/report_card.htm")
	public String getReportCardPage() {
		return "report_card";
	}
	
	@RequestMapping("/instructions.htm")
	public String getInstructionsPage() {
		return "instructions";
	}
	
	@RequestMapping("/exam.htm")
	public String getExamListPage() {
		return "exam";
	}
	
	
//	ADMIN MODULE
	
	@RequestMapping("/show_stud.htm")
	public String getStudentDetailsPage() {
		return "show_stud";
	}
	
	@RequestMapping("/search_stud.htm")
	public String getFilterStudentPage() {
		return "search_stud";
	}
	
	
	
	
	
//	write code for url filter_show_stud.htm, addQuestionToDb.htm, removeQuestionFromDb.htm
	
	
}
