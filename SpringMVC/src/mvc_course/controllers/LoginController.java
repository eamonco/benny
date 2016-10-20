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
			if((login.getUsername == 1 ) && (login.getPassword == 1)){
				id = 1;
				
			}else if((login.getUsername == 2 ) && (login.getPassword == 2)){
				
					id = 2;
				}
			else{
				id = 3;
				
			}
			
			switch(id){
			
			case 1:
				
				return "hr";
				break;
			
			case 2:
				
				return "finance";
				break;
			
				
			default:
				
				return "loginerror";
					
			}
			
		}
	}
