package com.example.model;

import java.util.List;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.Pattern;

public class User {

    @NotBlank(message = "Name cannot be empty")
    private String name;

    @NotBlank(message = "Email cannot be empty")
    @Email(message = "Invalid email format")
    @Pattern(regexp = "[a-z0-9._%+-]+@gmail\\.com",
      flags = Pattern.Flag.CASE_INSENSITIVE,
      message = "Only Gmail addresses are allowed")
    private String email;

    @NotEmpty(message = "Please select a gender")
    private String gender;        // radio button

    @NotEmpty(message = "Please select at least one hobby")
    private List<String> hobbies; // checkbox

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public List<String> getHobbies() {
        return hobbies;
    }

    public void setHobbies(List<String> hobbies) {
        this.hobbies = hobbies;
    }
}