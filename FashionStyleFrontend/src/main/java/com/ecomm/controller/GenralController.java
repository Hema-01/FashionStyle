package com.ecomm.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ecomm.model.Category;

@Controller

public class GenralController {
	@RequestMapping("/")
	public String showHomePage() {
		System.out.println("i am in My controller - Home Page");
		return "index";

	}

	@RequestMapping("/login")
	public String showLoginPage() {
		System.out.println("i am in My controller - Login Page");
		return "Login";

	}

	@RequestMapping("/register")
	public String showRegisterPage() {
		System.out.println("i am in My controller - Register Page");
		return "Register";

	}
	@RequestMapping("/redmi9")
	public String showRedmi9(Model m) {
		System.out.println("Redmi-9 page");
		//m.addAttribute("redmi9List",redmi9List);
		return "redmi9";

	}
}
