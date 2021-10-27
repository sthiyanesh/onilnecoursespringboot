package com.example.student.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.student.dao.CouresesRepo;
import com.example.student.dao.EnrollRepo;
import com.example.student.dao.StudRepo;
import com.example.student.model.Courses;
import com.example.student.model.Enroll;
import com.example.student.model.Stud;

@Controller
public class StudController {
	
	@Autowired
	StudRepo repo;
	
	@Autowired
	EnrollRepo repo1;
	
	@Autowired
	CouresesRepo repo2;
	
	@RequestMapping("/slogin")
	public String log() {
		return "slogin.jsp";
	}
	
	@RequestMapping("/slog")
	public ModelAndView slog(String semail,String spw) {
		List<Stud> students = (List<Stud>) repo.findBySemail(semail);
		for(Stud student : students) {
		if(student.getSpw().equals(spw)) {
			List<Enroll> enrolled = (List<Enroll>) repo1.findBySid(student.getSid()); 
			ModelAndView mv = new ModelAndView("shome.jsp","courser",enrolled);
			mv.addObject("name", student.getSname());
			mv.addObject("sid",student.getSid());
			return mv;
		}
		}
		return new ModelAndView("slogin.jsp");
	}
	
	@RequestMapping("/sregister")
	public String sregister() {
		return "sregister.jsp";
	}
	@RequestMapping("/sreg")
	public String sreg(String sname,String semail,String spw,String respw) {
		int sid = 0;
		List<Stud> students = (List<Stud>) repo.findBySemail(semail);
		System.out.println(students);
		if(!students.isEmpty()) {
			return "sregister.jsp";
		}
		List<Stud> s = (List<Stud>) repo.findAll();
		for(Stud student : s) {
			if(sid<student.getSid()) {
				sid = student.getSid();
			}
		}
		sid++;
		Stud student = new Stud();
		student.setSid(sid);
		student.setSname(sname);
		student.setSemail(semail);
		student.setSpw(spw);
		repo.save(student);
		return "home.jsp";
	}
	
	@RequestMapping("/senroll")
	public ModelAndView senroll(int sid) {
		List<Courses> courses = (List<Courses>) repo2.findAll();
		List<Courses> course1 = new ArrayList<Courses>();
		List<Enroll> enrol = (List<Enroll>) repo1.findBySid(sid);
		for(Courses course:courses) {
			int flag = 0;
			for(Enroll enroll:enrol) {
				if(enroll.getCrid()==course.getCrid()) {
					flag=1;
					break;
				}
			}
			if(flag==0) {
				course1.add(course);
			}
		}
		ModelAndView mv = new ModelAndView("senroll.jsp","courser",course1);
		mv.addObject("sid",sid);
		return mv;
	}
	
	@RequestMapping("/senrolled")
	public ModelAndView senrolled(int sid,int crid) {
		int eid = 0;
		List<Enroll> en = (List<Enroll>) repo1.findAll();
		for(Enroll enr:en) {
			if(enr.getEid()>eid) {
				eid = enr.getEid();
			}
		}
		eid++;
		Stud student = repo.findById(sid).orElse(null);
		Courses course = repo2.findById(crid).orElse(null);
		Enroll enrol = new Enroll();
		enrol.setEid(eid);
		enrol.setCrid(crid);
		enrol.setCrname(course.getCrname());
		enrol.setCrtutor(course.getCrtutor());
		enrol.setDuration(course.getDuration());
		enrol.setFees(course.getFees());
		enrol.setSid(sid);
		enrol.setSname(student.getSname());
		repo1.save(enrol);
		List<Enroll> enrolled = (List<Enroll>) repo1.findBySid(student.getSid()); 
		ModelAndView mv = new ModelAndView("shome.jsp","courser",enrolled);
		mv.addObject("name", student.getSname());
		mv.addObject("sid",student.getSid());
		return mv;
		
	}
	
	@RequestMapping("/students")
	public ModelAndView students() {
		List<Stud> students = (List<Stud>) repo.findAll();
		ModelAndView mv = new ModelAndView("smain.jsp","courser",students);
		String s = "Details of the Learning Students are";
		mv.addObject("heading", s);
		return mv;
	}
	
	@RequestMapping("/studentsedit")
	public ModelAndView studentsedit(int sid,String a) {
		Stud student = repo.findById(sid).orElse(null);
		ModelAndView mv = new ModelAndView("editstudent.jsp","courser",student);
		mv.addObject("a", a);
		return mv;
	}
	
	@RequestMapping("/sedit")
	public ModelAndView edit(String sid,String sname,String semail,String spw,String a) {
		Stud student = new Stud();
		student.setSid(Integer.parseInt(sid));
		student.setSname(sname);
		student.setSpw(spw);
		student.setSemail(semail);
		repo.save(student);
		Stud student1 = repo.findById(student.getSid()).orElse(null);
		if(student1==null) {
			return new ModelAndView("empty1.jsp");
		}
		List<Stud> student2 = new ArrayList<Stud>();
		student2.add(student1);
		if(a.equals("a")) {
			ModelAndView mv = new ModelAndView("smain.jsp","courser",student2);
			String s = "The Student Detail Updated Successfully";
			mv.addObject("heading", s);
			return mv;
		}
		List<Enroll> enrolled = (List<Enroll>) repo1.findBySid(student.getSid()); 
		ModelAndView mv = new ModelAndView("shome.jsp","courser",enrolled);
		mv.addObject("name", student.getSname());
		mv.addObject("sid",student.getSid());
		return mv;
	}
	
	@RequestMapping("/sfilter")
	public String filter() {
		return "sfilterer.jsp";
	}
	
	@RequestMapping("/sfiltered")
	public ModelAndView filtered(String sidsym, String sid, String sname, String semail) {
		List<Stud> temp = new ArrayList<Stud>();
		List<Stud> students = (List<Stud>) repo.findAll();
		if(sid!=(null)) {
			switch(sidsym) {
			case "=":
				for(Stud c:students) {
					if(c.getSid()==Integer.valueOf(sid)) {
						temp.add(c);
					}	
				}
				break;
			case "<":
				for(Stud c:students) {
					if(c.getSid()<Integer.valueOf(sid)) {
						temp.add(c);
					}	
				}
				break;
			case ">":
				for(Stud c:students) {
					if(c.getSid()>Integer.valueOf(sid)) {
						temp.add(c);
					}	
				}
				break;
			case "<=":
				for(Stud c:students) {
					if(c.getSid()<=Integer.valueOf(sid)) {
						temp.add(c);
					}	
				}
				break;
			case ">=":
				for(Stud c:students) {
					if(c.getSid()>=Integer.valueOf(sid)) {
						temp.add(c);
					}	
				}
				break;
			}
			students=temp;
			temp=new ArrayList<Stud>();
		}
		if(sname!=(null)) {
			for(Stud c:students) {
				if(c.getSname().equals(sname)) {
					temp.add(c);
				}
			}
			students=temp;
			temp=new ArrayList<Stud>();
		}
		if(semail!=(null)) {
			for(Stud c:students) {
				if(c.getSemail().equals(semail)) {
					temp.add(c);
				}
			}
			students=temp;
			temp=new ArrayList<Stud>();
		}
		ModelAndView mv = new ModelAndView("smain.jsp","courser",students);
		String s = "The Filtered Course are";
		mv.addObject("heading", s);
		return mv;
	}
}
