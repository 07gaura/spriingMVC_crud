package com.crudapp.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import com.crudapp.dao.studentdao;
import com.crudapp.model.Student;

@Controller
public class springcontroller {
	
	@Autowired
	private studentdao std;
	
	@RequestMapping("/home")
	public String home(Model m) {
		//System.out.println("teting");
		List<Student> students = std.getStudents();
		m.addAttribute("students", students);
		return "index";
	}
	
	@RequestMapping("/addstudent")
	public String addstudent() {
		return "addstudent";
	}
	
	@RequestMapping(value = "/handle-product", method=RequestMethod.POST)
	public RedirectView addstudentform(@ModelAttribute Student stud, HttpServletRequest request) {
		//System.out.println("teting");
		System.out.println(stud);
		std.createStudent(stud);
		RedirectView redirectview= new RedirectView();
		redirectview.setUrl(request.getContextPath()+"/home");
		return redirectview;
	}
	
	@RequestMapping("/delete/{productId}")
	public RedirectView deleteProduct(@PathVariable("productId") int productid, HttpServletRequest request) {
		this.std.deleteStudent(productid);
		RedirectView redirectview= new RedirectView();
		redirectview.setUrl(request.getContextPath()+"/home");
		return redirectview;
	}
	
	@RequestMapping("/update/{productid}")
	public String updateForm(@PathVariable("productid") int pid, Model model)
	{
		Student student = this.std.getProductById(pid);
		model.addAttribute("student", student);
		return "update-form";
	}
}
