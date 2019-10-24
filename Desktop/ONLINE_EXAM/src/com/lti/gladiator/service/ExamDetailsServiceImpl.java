package com.lti.gladiator.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.lti.gladiator.bean.ExamDetails;
import com.lti.gladiator.dao.ExamDetailsDao;
import com.lti.gladiator.exception.ExamDetailsException;


@Service
@Transactional(propagation=Propagation.REQUIRES_NEW)
public class ExamDetailsServiceImpl implements ExamDetailsService {

	@Resource
	private ExamDetailsDao dao;
	
	public List<ExamDetails> findAllExamDetails() throws ExamDetailsException{
		return dao.findAllExamDetails();
	}
	
	public boolean insertNewExamDetails(ExamDetails ed) throws ExamDetailsException{

			
		return dao.insertNewExamDetails(ed);
	}
	
	
	public void addQues(int examId,ExamDetails ed) throws ExamDetailsException{
		 dao.addQues(examId,ed);
	}
	
	public void removeQues(int quesId) throws ExamDetailsException{
		 dao.removeQues(quesId);
	}
	

}
