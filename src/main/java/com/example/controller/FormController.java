package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.model.User;

@Controller
public class FormController {

	@GetMapping("/form")
	public String showForm(Model model) {
		model.addAttribute("user", new User());
		model.addAttribute("title", "User Registration Form");
		return "form";
	}

	@PostMapping("/submitForm")
	public String processForm(@ModelAttribute User user, Model model) {
		model.addAttribute("title", "Registration Success");
		model.addAttribute("message", "Thank you for registering, " + user.getName() + "!");
		// The 'user' object is automatically added to the model by @ModelAttribute
		return "result";
	}
}
