package com.crudapp.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.crudapp.model.Student;

@Component
public class studentdao {
	
	@Autowired
	private HibernateTemplate hibernate;
	
	//create
	@Transactional
	public void createStudent(Student students) {
		this.hibernate.saveOrUpdate(students);
	}
	
	//get all students data
	public List<Student> getStudents(){
		List<Student> lists = this.hibernate.loadAll(Student.class);
		return lists;
	}
	
	//delete the single product
	@Transactional
	public void deleteStudent(int pid) {
		Student s = this.hibernate.load(Student.class, pid);
		this.hibernate.delete(s);
	}
	
	public Student getProductById(int id) {
		return this.hibernate.get(Student.class, id);
	}
}
