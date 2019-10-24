package com.lti.gladiator.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import com.lti.gladiator.bean.Login;
import com.lti.gladiator.bean.Registration;
import com.lti.gladiator.exception.RegistrationException;

@Repository
//@Scope("singleton") 
public class RegistrationDaoImpl implements RegistrationDao{

	@PersistenceContext
	EntityManager em;
	
	@Override
	public List<Registration> findAllRegistration() throws RegistrationException{
		Query qry = em.createNamedQuery("allReg");
		return qry.getResultList();
	}
	
	@Override
	public String findUserByEmail(String email) throws RegistrationException{
		Query query = em.createQuery("SELECT R.reg_name FROM Registration R WHERE email_id=:e");
		query.setParameter("e", email);
		return (String) query.getSingleResult();
	}
	
	@Override
	public Registration insertNewRegistration(Registration reg) throws RegistrationException{
		System.out.println("Dao");
		em.persist(reg);
		return reg;
	}
	
	@Override
	public void deleteRegistrationById(int reg_id) throws RegistrationException{
		Registration reg= em.find(Registration.class,reg_id);
		System.out.println(reg_id);
		if(reg!= null)
		{
			em.remove(reg);
			System.out.println("Deleted Successfully!!");
		}
		}	
	
	@Override
	public boolean validateUser(Login login) {
		String email=login.getEmail();
		String pass=login.getPassword();
		System.out.println(email+pass);
		System.out.println("dao");
		Query query = em.createQuery("FROM Registration WHERE EMAIL_ID=:e AND PASSWORD=:p");
		query.setParameter("e", email);
		query.setParameter("p", pass);
		Registration reg=(Registration)query.getSingleResult();
		System.out.println(reg);
		if(reg!=null)
		{
			System.out.println("valid");
			return true;
		}
		else 
			return false;
}

	
}
