package com.example.student.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.student.dao.CouresesRepo;
import com.example.student.model.Courses;

@Controller
public class CoursesController {
	
	@Autowired
	CouresesRepo repo;
	
	@RequestMapping("/courses")
	public ModelAndView courses() {
		List<Courses> courses = (List<Courses>) repo.findAll();
		ModelAndView mv = new ModelAndView("cmain.jsp","courser",courses);
		String s = "Details of the Available Courses are";
		mv.addObject("heading", s);
		return mv;
	}
	
	@RequestMapping("/addcourse")
	public String addcourse(){
		return "addcourse.jsp";
	}
	
	@RequestMapping("/cadd")
	public ModelAndView add(Courses course) {
		repo.save(course);
		Courses course1 = repo.findById(course.getCrid()).orElse(null);
		if(course1==null) {
			return new ModelAndView("empty1.jsp");
		}
		List<Courses> course2 = new ArrayList<Courses>();
		course2.add(course1);
		ModelAndView mv = new ModelAndView("cmain.jsp","courser",course2);
		String s = "The New Course added to the Database Successfully";
		mv.addObject("heading", s);
		return mv;
	}
	
	@RequestMapping("/coursedit")
	public ModelAndView coursedit(int crid) {
		Courses course = repo.findById(crid).orElse(null);
		ModelAndView mv = new ModelAndView("editcourse.jsp","courser",course);
		return mv;
	}
	
	@RequestMapping("/cedit")
	public ModelAndView edit(Courses course) {
		repo.save(course);
		Courses course1 = repo.findById(course.getCrid()).orElse(null);
		if(course1==null) {
			return new ModelAndView("empty1.jsp");
		}
		List<Courses> course2 = new ArrayList<Courses>();
		course2.add(course1);
		ModelAndView mv = new ModelAndView("cmain.jsp","courser",course2);
		String s = "The Course Updated Successfully";
		mv.addObject("heading", s);
		return mv;
	}
	
	@RequestMapping("/cfilter")
	public String filter() {
		return "filterer.jsp";
	}
	
	@RequestMapping("/cfiltered")
	public ModelAndView filtered(String cridsym, String crid, String coursename, String crtutorname,String fees,String feessym,String duration,String durationsym) {
		List<Courses> temp = new ArrayList<Courses>();
		List<Courses> courses = (List<Courses>) repo.findAll();
		if(crid!=(null)) {
			switch(cridsym) {
			case "=":
				for(Courses c:courses) {
					if(c.getCrid()==Integer.valueOf(crid)) {
						temp.add(c);
					}	
				}
				break;
			case "<":
				for(Courses c:courses) {
					if(c.getCrid()<Integer.valueOf(crid)) {
						temp.add(c);
					}	
				}
				break;
			case ">":
				for(Courses c:courses) {
					if(c.getCrid()>Integer.valueOf(crid)) {
						temp.add(c);
					}	
				}
				break;
			case "<=":
				for(Courses c:courses) {
					if(c.getCrid()<=Integer.valueOf(crid)) {
						temp.add(c);
					}	
				}
				break;
			case ">=":
				for(Courses c:courses) {
					if(c.getCrid()>=Integer.valueOf(crid)) {
						temp.add(c);
					}	
				}
				break;
			}
			courses=temp;
			temp=new ArrayList<Courses>();
		}
		if(coursename!=(null)) {
			for(Courses c:courses) {
				if(c.getCrname().equals(coursename)) {
					temp.add(c);
				}
			}
			courses=temp;
			temp=new ArrayList<Courses>();
		}
		if(crtutorname!=(null)) {
			for(Courses c:courses) {
				if(c.getCrtutor().equals(crtutorname)) {
					temp.add(c);
				}
			}
			courses=temp;
			temp=new ArrayList<Courses>();
		}
		if(fees!=(null)) {
			switch(feessym) {
			case "=":
				for(Courses c:courses) {
					if(c.getFees()==Integer.valueOf(fees)) {
						temp.add(c);
					}
				}
				break;
			case "<":
				for(Courses c:courses) {
					if(c.getFees()<Integer.valueOf(fees)) {
						temp.add(c);
					}
				}
				break;
			case ">":
				for(Courses c:courses) {
					if(c.getFees()>Integer.valueOf(fees)) {
						temp.add(c);
					}
				}
				break;
			case "<=":
				for(Courses c:courses) {
					if(c.getFees()<=Integer.valueOf(fees)) {
						temp.add(c);
					}
				}
				break;
			case ">=":
				for(Courses c:courses) {
					if(c.getFees()>=Integer.valueOf(fees)) {
						temp.add(c);
					}
				}
				break;
			}
			courses = temp;
			temp=new ArrayList<Courses>();
		}
		if(duration!=(null)) {
			switch(durationsym) {
			case "=":
				for(Courses c:courses) {
					if(c.getDuration()==Integer.valueOf(duration)) {
						temp.add(c);
					}
				}
				break;
			case "<":
				for(Courses c:courses) {
					if(c.getDuration()<Integer.valueOf(duration)) {
						temp.add(c);
					}
				}
				break;
			case ">":
				for(Courses c:courses) {
					if(c.getDuration()>Integer.valueOf(duration)) {
						temp.add(c);
					}
				}
				break;
			case "<=":
				for(Courses c:courses) {
					if(c.getDuration()<=Integer.valueOf(duration)) {
						temp.add(c);
					}
				}
				break;
			case ">=":
				for(Courses c:courses) {
					if(c.getDuration()>=Integer.valueOf(duration)) {
						temp.add(c);
					}
				}
				break;
			}
			courses=temp;
			temp=new ArrayList<Courses>();
		}
		ModelAndView mv = new ModelAndView("cmain.jsp","courser",courses);
		String s = "The Filtered Course are";
		mv.addObject("heading", s);
		return mv;
	}
}
