package com.lti.gladiator.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.lti.gladiator.bean.Exam;
import com.lti.gladiator.dao.ExamDao;
import com.lti.gladiator.exception.ExamException;


@Service("examServices")
//@Scope("singleton")
@Transactional(propagation=Propagation.REQUIRED)
public class ExamServiceImpl implements ExamService,ExamDao {

	@Autowired
	private ExamDao dao;
	
	@Override
	public List<Exam> findAll() throws ExamException {
		return dao.findAll();
	}

//	@Override
//	public Exam findByExamId(int exam_id) throws ExamException {
//		return dao.findByExamId(exam_id);
//	}

//	@Override
//	public Exam joinExam(Exam exam) throws ExamException {
//		// Statement to insert a record in the table.
//		// Statement to update a record of the table.
//		// Statement to delete a record from the table.
//		return dao.insertNewexamloyee(exam);
//	}
	
	public int insertNewExam(Exam exam) throws ExamException{
		return dao.insertNewExam(exam);
	}
	
	public void deleteExamById(int exam_id) throws ExamException{
		dao.deleteExamById(exam_id);
	}
	

//	public int insertNewExamByName(String exam_name) throws ExamException{
//		return dao.insertNewExamByName(exam_name);
//	}


}
