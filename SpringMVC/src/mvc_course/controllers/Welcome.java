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
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Welcome {
	
	@RequestMapping(value="index.mvc")
	public String landingPage(Model m){
		m.addAttribute("msg", "Hello from the controller");
		return "hello";
	}
	
	@Autowired
	private DataSource dataSource;
	
	@RequestMapping(value="CityList.mvc")
	public String cityList(Model m){
		try{
			Connection c = dataSource.getConnection();
			Statement s = c.createStatement();
			String sql = "Select Name, District, Population " + "FROM City where CountryCode = 'GBR'";
			ResultSet rs = s.executeQuery(sql);
			List<String[]> rows = new ArrayList<String[]>();
			
			while(rs.next()){
				String[] row = {
						rs.getString(1),
						rs.getString(2),
						rs.getString(3)  };
				rows.add(row);
				}
			m.addAttribute("rows", rows);
			} catch (Exception e){
				System.out.println(e.getMessage());
		}
		return "CityList";
	}
}
