package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.validation.BindingResult;
import jakarta.validation.Valid;

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
	public String processForm(@Valid @ModelAttribute User user, BindingResult bindingResult, Model model) {
		if (bindingResult.hasErrors()) {
			model.addAttribute("title", "User Registration Form");
			return "form";
		}

		model.addAttribute("title", "Registration Success");
		model.addAttribute("message", "Thank you for registering, " + user.getName() + "!");
		// The 'user' object is automatically added to the model by @ModelAttribute
		return "result";
	}
}
