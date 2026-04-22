package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.validation.BindingResult;
import jakarta.validation.Valid;

import com.example.model.User;
import java.util.Arrays;
import java.util.List;
import java.time.LocalDate;

@Controller
public class FormController {

    @ModelAttribute("countryList")
    public List<String> getCountryList() {
        return Arrays.asList("USA", "India", "UK", "Canada", "Australia");
    }

    @ModelAttribute("skillsList")
    public List<String> getSkillsList() {
        return Arrays.asList("Java", "Spring Boot", "React", "SQL", "Python", "C++");
    }

    @ModelAttribute("hobbiesList")
    public List<String> getHobbiesList() {
        return Arrays.asList("Reading", "Gaming", "Traveling", "Sports", "Music");
    }

    @ModelAttribute("genderList")
    public List<String> getGenderList() {
        return Arrays.asList("Male", "Female", "Other");
    }

	@GetMapping("/form")
	public String showForm(Model model) {
		User user = new User();
		user.setUserId("USR-12345");
		user.setGender("Male");
		user.setSubscribeNewsletter(true);
		user.setAge(25);
		user.setDateOfBirth(LocalDate.of(2000, 1, 1));
		user.setExperienceYears(2);
		model.addAttribute("user", user);
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
		return "result";
	}
}
