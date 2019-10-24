package com.lti.gladiator.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.lti.gladiator.bean.Exam;
import com.lti.gladiator.exception.ExamException;


@Repository
//@Scope("singleton")  // By default spring objects are singleton.

public class ExamDaoImpl implements ExamDao{
	
	//EntityManagerFactory emf = Persistence.createEntityManagerFactory("JPA");
	@PersistenceContext
	EntityManager em; //= emf.createEntityManager();
	
	Exam e=new Exam();
	
//	@Override
//	public void deleteExam(int exam_id) throws ExamException{
//		Exam Exam=em.find(Exam.class,exam_id);
//		em.getTransaction().begin();  
//        em.remove(Exam); 
//        em.getTransaction().commit();  
//        emf.close();  
//        em.close(); 
//	}
	
//	@Override
//	public Exam findByExamId(int exam_id) throws ExamException{
//		Query qry = em.createNamedQuery("selectEname");
//		return qry.getSingleResult();
//		Exam Examfbn=em.find(Exam.class,exam_id);
//		System.out.println(exam_id);
//		return Examfbn;
//
//	}
	
	@Override
	public List<Exam> findAll() throws ExamException{
		Query qry = em.createNamedQuery("allExam");
		return qry.getResultList();
	}
	

	@Override
	public int insertNewExam(Exam exam) throws ExamException {
		 Query query = em.createQuery("select MAX(exam_id) from Exam");
		 Integer id = (Integer) query.getSingleResult();
		 if(id == null)
		 {
			 id=1;
		 }
		 else {
			 id+=1;
		 }
		 exam.setExam_id(id);
		em.persist(exam);
		return exam.getExam_id();
	}
	
    @Override
	public void deleteExamById(int exam_id) throws ExamException {
		Exam exam = em.find(Exam.class,exam_id);
		System.out.println(exam_id);
		if(exam != null)
		{
			em.remove(exam);
			System.out.println("Deleted SUccessfully!!");
		}
		}	
	public int insertNewExamByName(String exam_name) throws ExamException{
		 e.setExam_name(exam_name);
		 em.persist(e);
		 return e.getExam_id();
	}
	
	
	
}
