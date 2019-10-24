package com.lti.gladiator.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

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

@Controller
public class ExamDetailsController {

	@Resource
	private ExamDetailsService service;
	
	@RequestMapping("/test.htm")
	public ModelAndView findAllExamDetails(){
		List<ExamDetails> quesList = null;
		ModelAndView mAndV = null;
		try {
			quesList = service.findAllExamDetails();
			//System.out.println(examList);
			mAndV = new ModelAndView();
			// Pass-on this data to JSP
			mAndV.setViewName("test");
			mAndV.addObject("list", quesList);
		} catch (ExamDetailsException e) {
			e.printStackTrace();
		}
		return mAndV;
}
	
	@RequestMapping(value="/test_completed.htm", method = RequestMethod.POST)
	public String getTestCompletedPage() {
		return "test_completed";
	}
	
	@RequestMapping("/add.htm")
	public ModelAndView set(@RequestParam("id") int id) {
		ModelAndView mAndV = null;
		mAndV = new ModelAndView();
		// Pass-on this data to JSP
		mAndV.setViewName("addQuestion");
		mAndV.addObject("i",id);
	return mAndV;
	}
	
	
	@RequestMapping("/addQuestion.htm")
	public String getAddQuestionPage(HttpServletRequest request) {
			ExamDetails ed=new ExamDetails();
//			try 
//			{
//				service.addQues(id,ed);
//			} catch (ExamDetailsException e) 
//			{
//				e.printStackTrace();
//			}		
			//return "redirect:/insertExamPage.htm";		
		return "add_question";
	}
	
	@RequestMapping("/remove.htm")
	public String set() {
		return "remove_question";
	}
	
	@RequestMapping("/remove_question.htm")
	public String getRemoveQuestionPage(@RequestParam("q_id") int quesId) {
		try {
			service.removeQues(quesId);
		} catch (ExamDetailsException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "redirect:/findQues.htm";
	}

	@RequestMapping("/findQues.htm")
	public ModelAndView findAll(){
		List<ExamDetails> examList = null;
		ModelAndView mAndV = null;
			try {
				examList = service.findAllExamDetails();
			} catch (ExamDetailsException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			//System.out.println(examList);
			mAndV = new ModelAndView();
			// Pass-on this data to JSP
			mAndV.setViewName("remove_question");
			mAndV.addObject("list", examList);
		return mAndV;
	} 
}
