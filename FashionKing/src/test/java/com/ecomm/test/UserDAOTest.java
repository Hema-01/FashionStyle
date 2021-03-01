package com.ecomm.test;

import static org.junit.Assert.*;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.ecomm.dao.UserDAO;
import com.ecomm.model.UserDetail;

public class UserDAOTest {

	static UserDAO userDAO;

	@BeforeClass
	public static void initialize() {
		AnnotationConfigApplicationContext myContext = new AnnotationConfigApplicationContext();
		myContext.scan("com.ecomm");
		myContext.refresh();

		userDAO = (UserDAO)myContext.getBean("userDAO");
	}

	@Test
	public void registerUserTest()
	{
	 UserDetail user =  new UserDetail();
	 user.setUsername("Hemalata");
	 user.setPassword("$2a$10$m.vbaYT1ye7xdOSdKjA6q.F9Ellurd3/AoVtr.ROMaUkaiYLLIPCG");
	 user.setCustomerName("Hemalata ");
	 user.setEnabled(true);
	 user.setEmailId("hemalatachau01@gmail.com");
	 user.setAddress("new Delhi");
	 user.setMobileNo("7887806743");
	 user.setRole("ROLE_USER");
	 
	 assertTrue("problem in inserting UserDetails : ",userDAO.registerUser(user));
	}
	
	
}
