package com.lti.gladiator.service;

import java.util.List;

import com.lti.gladiator.bean.Login;
import com.lti.gladiator.bean.Registration;
import com.lti.gladiator.exception.RegistrationException;


public interface RegistrationService {

    public List<Registration> findAllRegistration() throws RegistrationException;
    
    public String findUserByEmail(String email) throws RegistrationException;
	
	public Registration insertNewRegistration(Registration reg) throws RegistrationException;
	
	public void deleteRegistrationById(int reg_id) throws RegistrationException;
	
	public boolean validateUser(Login login);

}
