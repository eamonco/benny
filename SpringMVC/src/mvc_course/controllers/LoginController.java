package mvc_course.controllers;

import java.util.List;
import java.util.ArrayList;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import mvc_course.models.Login;
import mvc_course.models.Student;


@Controller
public class LoginController {

		
		@RequestMapping(value="login.mvc")
		public String landingPage(){
			return "login";
		}
		
		@Autowired
		private DataSource dataSource;
		
		@RequestMapping(value="loginForm.mvc")
		public String logincheck(@ModelAttribute("login") Login login ){
			int id;
			String loginType;
			if((login.getUsername().equals("1") && (login.getPassword().equals("1")))){
				id = 1;
				
			}else if((login.getUsername().equals("2") && (login.getPassword().equals("2")))){
				
					id = 2;
				}
			else{
				id = 3;
				
			}
			
			switch(id){
			
			case 1:
				
				loginType = "hr.mvc";
				break;
			
			case 2:
				
				loginType = "finance.mvc";
				break;
			
				
			default:
				
				loginType = "loginerror.mvc";
					
			}
			return "redirect:" + loginType;
			
		}
	}
