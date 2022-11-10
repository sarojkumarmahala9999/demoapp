package com.flight.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.flight.entities.User;
import com.flight.repository.UserRepository;
import com.flight.service.UserService;

@Controller
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private UserRepository userRepo;
	
	//http://localhost:8080/flight/showReg
	@RequestMapping("/showReg")
	public String showReg() {
		return "login/showReg";
	}
	
	@RequestMapping("/showRegPage")
	public String showRegPage() {
		return "login/showReg";
	}
	
	@RequestMapping("/showLogin")
	public String showLogin() {
		return "login/login";
	}
	
	@RequestMapping("/backToHomePage")
	public String backToMenuPage() {
		return "login/showReg";
	}
	
	@PostMapping("/saveNewReg")
	public String saveNewReg(@ModelAttribute("user") User user) {
		userService.saveNewReg(user);
		return "login/login";
	}
	
	@RequestMapping("/showRegPageFromLogin")
	public String showRegPageFromLogin() {
		return "login/showReg";
	}
	
	@RequestMapping("/verifyLogin")
	public String verifyLogin(@RequestParam("email") String email,@RequestParam("password") String password, ModelMap model) {
		User user = userRepo.findByEmail(email);
		if(user!=null) {
			if (user.getEmail().equals(email) && user.getPassword().equals(password)) {
				return "findFlights";
			} else {
				model.addAttribute("msg", "Invalid Username/Password");
				return "login/login";
			}
		}else {
			model.addAttribute("msg", "Invalid Username/Password");
			return "login/login";
		}
	}
}
