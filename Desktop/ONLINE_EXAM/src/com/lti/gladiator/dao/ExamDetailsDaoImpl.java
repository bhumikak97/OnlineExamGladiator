package com.lti.gladiator.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.lti.gladiator.bean.ExamDetails;
import com.lti.gladiator.exception.ExamDetailsException;


@Repository

public class ExamDetailsDaoImpl implements ExamDetailsDao {

	@PersistenceContext
	EntityManager em;
	
	@Override
	public List<ExamDetails> findAllExamDetails() throws ExamDetailsException{
		Query qry = em.createNamedQuery("allExamDetails");
		return qry.getResultList();
	}
	
	@Override
	public boolean insertNewExamDetails(ExamDetails ed) throws ExamDetailsException{
		
		 
		 //ed.set(id);
		//Query query = em.createQuery("select MAX(q_id) from ExamDetails");
		/*
		 * Integer id = (Integer) query.getSingleResult(); if(id == null) { id=1; } else
		 * { id+=1; }
		 */
			//ed.setQ_id(id);
		System.out.println(ed);
		em.persist(ed);
		
		return true;
	}
	
	
	
	@Override
	public void removeQues(int quesId) throws ExamDetailsException{
		ExamDetails ed=em.find(ExamDetails.class,quesId);
        em.remove(ed); 
	}

	@Override
	public void addQues(int examId, ExamDetails ed) throws ExamDetailsException {
		// TODO Auto-generated method stub
		
	}

}
