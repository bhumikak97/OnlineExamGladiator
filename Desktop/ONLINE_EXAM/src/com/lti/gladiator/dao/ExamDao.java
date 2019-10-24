package com.lti.gladiator.dao;

import java.util.List;

import com.lti.gladiator.bean.Exam;
import com.lti.gladiator.exception.ExamException;

public interface ExamDao {

	//CRUD OPERATION
	//public void addExam(Exam exam) throws ExamException;
	
//	public void updateContact(Contact contact) throws DaoException;
	
	//public void deleteExam(int exam_id) throws ExamException;
	
	//QUERIES
	
	//public Exam findByExamId(int exam_id) throws ExamException;
	
	public List<Exam> findAll() throws ExamException;
	
	public int insertNewExam(Exam exam) throws ExamException;
	
	public void deleteExamById(int exam_id) throws ExamException;
	

	
	//public int insertNewExamByName(String exam_name) throws ExamException;

}
