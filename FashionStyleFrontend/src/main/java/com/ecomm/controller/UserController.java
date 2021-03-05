package com.ecomm.controller;

import java.util.Collection;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ecomm.dao.ProductDAO;
import com.ecomm.dao.UserDAO;
import com.ecomm.model.Product;
import com.ecomm.model.UserDetail;

@Controller
public class UserController {
	@Autowired
	UserDAO userDAO;
	
	@Autowired
	ProductDAO productDAO;
	
	
		
	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;

	
	@RequestMapping(value = "/login_success")
	public String successLoggedIn(HttpSession session) {
		String page = "";

		System.out.println("Login Success");
		SecurityContext sContext = SecurityContextHolder.getContext();
		Authentication authentication = sContext.getAuthentication();

		String username = authentication.getName();
		session.setAttribute("username", username);
		
		List<Product> productList=productDAO.retriveProducts();
		session.setAttribute("productList", productList);
	
		Collection<GrantedAuthority> roles = (Collection<GrantedAuthority>) authentication.getAuthorities();
		for (GrantedAuthority role : roles) 
		{
			session.setAttribute("role", role.getAuthority());
			if (role.getAuthority().equals("ROLE_ADMIN"))
				page = "AdminHome";
			else
				page = "UserHome";
		}

		return page;
	}
 
	
	
	@RequestMapping(value = "/logout_success")
	public String loggedout() {
		String page = "Logout";

		return page;

	}
	
	@RequestMapping(value="/registeruser", method=RequestMethod.POST)
	public String registerUser(@RequestParam("username")String username, @RequestParam("password")String password, @RequestParam("customerName")String customerName, @RequestParam("emailId")String emailId,@RequestParam("mobileNo")String mobileNo,@RequestParam("address")String address, Model m) {
		
		UserDetail user= new UserDetail();
		user.setUsername(username);
		
		user.setPassword(password);
		user.setCustomerName(customerName);
		user.setEnabled(true);
		user.setEmailId(emailId);
		user.setMobileNo(mobileNo);
		user.setAddress(address);
		user.setRole("ROLE_USER");
		
		String encodedPassword = bCryptPasswordEncoder.encode(user.getPassword());
		
		user.setPassword(encodedPassword);
		

		
		if(userDAO.registerUser(user))
		{
			System.out.println("Registration Succesful");
			return "Login";
			
		}
		else
		{
			System.out.println("Error occured");
			return "Register";
		}
		
	}
	

	
}
