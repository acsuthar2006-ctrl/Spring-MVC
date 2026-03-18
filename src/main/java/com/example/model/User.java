package com.example.model;

import java.util.List;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.Pattern;

public class User {

    private String userId;

    @NotBlank(message = "Name cannot be empty")
    private String name;

    @NotBlank(message = "Email cannot be empty")
    @Email(message = "Invalid email format")
    @Pattern(regexp = "[a-z0-9._%+-]+@gmail\\.com",
      flags = Pattern.Flag.CASE_INSENSITIVE,
      message = "Only Gmail addresses are allowed")
    private String email;

    @NotBlank(message = "Password cannot be empty")
    private String password;

    private String address;

    @NotEmpty(message = "Please select a gender")
    private String gender;

    @NotEmpty(message = "Please select at least one hobby")
    private List<String> hobbies;
    
    private boolean subscribeNewsletter;
    
    @NotBlank(message = "Please select a country")
    private String country;
    
    @NotEmpty(message = "Please select at least one skill")
    private List<String> skills;

    // Getters and Setters

    public String getUserId() { return userId; }
    public void setUserId(String userId) { this.userId = userId; }

    public String getName() { return name; }
    public void setName(String name) { this.name = name; }

    public String getEmail() { return email; }
    public void setEmail(String email) { this.email = email; }

    public String getPassword() { return password; }
    public void setPassword(String password) { this.password = password; }

    public String getAddress() { return address; }
    public void setAddress(String address) { this.address = address; }

    public String getGender() { return gender; }
    public void setGender(String gender) { this.gender = gender; }

    public List<String> getHobbies() { return hobbies; }
    public void setHobbies(List<String> hobbies) { this.hobbies = hobbies; }

    public boolean isSubscribeNewsletter() { return subscribeNewsletter; }
    public void setSubscribeNewsletter(boolean subscribeNewsletter) { this.subscribeNewsletter = subscribeNewsletter; }

    public String getCountry() { return country; }
    public void setCountry(String country) { this.country = country; }

    public List<String> getSkills() { return skills; }
    public void setSkills(List<String> skills) { this.skills = skills; }
}