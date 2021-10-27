package com.example.student.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.student.dao.AdminRepo;
import com.example.student.model.Admin;

@Controller
public class MainController {

	@Autowired
	AdminRepo repo;
	
	@RequestMapping("/")
	public String home() {
		return "home.jsp";
	}
	
	@RequestMapping("/adminlogin")
	public String alogin() {
		return "alogin.jsp";
	}
	
	@RequestMapping("/alog")
	public ModelAndView alog(String aemail,String apw) {
		List<Admin> admins = repo.findByAemail(aemail);
		for(Admin a:admins) {
			if((a.getApw()).equals(apw)) {
				return new ModelAndView("ahome.jsp","courser",a);
			}
		}
		return new ModelAndView("notfound.jsp");
	}
	
	@RequestMapping("/addadmin")
	public String addadmin() {
		return "addadmin.jsp";
	}
	
	@RequestMapping("/adda")
	public String adda(Admin admin) {
		repo.save(admin);
		return "home.jsp";
	}
}
