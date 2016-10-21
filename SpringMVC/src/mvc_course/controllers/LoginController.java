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
			if((login.getUsername().equals("hr") && (login.getPassword().equals("hr")))){
				id = 1;
				
			}else if((login.getUsername().equals("finance") && (login.getPassword().equals("finance")))){
				
					id = 2;
				}else if((login.getUsername().equals("salesmanager") && (login.getPassword().equals("salesmanager")))){
				
				id = 3;
			}else if((login.getUsername().equals("talentmanager") && (login.getPassword().equals("talentmanager")))){
				
				id = 4;
				
			}else if((login.getUsername().equals("david") && (login.getPassword().equals("david")))){
				
				id = 5;
				
			}else{
				id=6;
			}
			
			switch(id){
			
			case 1:
				
				loginType = "hr.mvc";
				break;
			
			case 2:
				
				loginType = "finance.mvc";
				break;
				
case 3:
				
				loginType = "salesMan.mvc";
				break;
				
case 4:
	
	loginType = "talentmanager.mvc";
	break;
	
case 5:
	
	loginType = "easter.mvc";
	break;
	
			
			
				
			default:
				
				loginType = "error.mvc";
					
			}
			return "redirect:" + loginType;
			
		}
		
		@RequestMapping(value="hr.mvc")
		public String hrPage(){
			return "hr";
		}
			@RequestMapping(value="error.mvc")
			public String errorPage(){
				return "loginError";
			}
			@RequestMapping(value="easter.mvc")
			public String davidPage(){
				return "David";
			}
		
	}
