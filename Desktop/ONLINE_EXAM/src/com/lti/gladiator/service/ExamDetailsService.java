package com.lti.gladiator.service;

import java.util.List;

import com.lti.gladiator.bean.ExamDetails;
import com.lti.gladiator.exception.ExamDetailsException;

public interface ExamDetailsService {


	public List<ExamDetails> findAllExamDetails() throws ExamDetailsException;
	
	public boolean insertNewExamDetails(ExamDetails ed) throws ExamDetailsException;
		
	public void addQues(int examId,ExamDetails ed) throws ExamDetailsException;
	
	public void removeQues(int quesId) throws ExamDetailsException;
}
