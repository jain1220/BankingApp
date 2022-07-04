package com.BankingApp.Controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
import java.util.SplittableRandom;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;



@Controller

public class HomeController {
	
	@Autowired JdbcTemplate jdbcTamplate;
	
	@GetMapping("/registration")
	@ResponseBody
	public String registration(HttpServletRequest req) throws SQLException{
		
	    String userName=req.getParameter("username");
		String fatherName=req.getParameter("fathername");
		String age= req.getParameter("age");
		String gender=req.getParameter("gender");
		String citizen=req.getParameter("citizen");
		String dob=req.getParameter("dob");
		String city=req.getParameter("city");
		String email=req.getParameter("email");
		String acType=req.getParameter("actype");
		
		
		Connection con=jdbcTamplate.getDataSource().getConnection();	
    	String query2 = "insert into registration(userName,fatherName,age,gender,citizen,dob,city,email,acType) values(?,?,?,?,?,?,?,?,?)";
	    PreparedStatement stmt1 = con.prepareStatement(query2);
	  	
	    stmt1.setString(1,userName);
	    stmt1.setString(2,fatherName);
	    stmt1.setString(3,age);
	    stmt1.setString(4,gender);
	    stmt1.setString(5,citizen);
	    stmt1.setString(6,dob);
	    stmt1.setString(7,city);
	    stmt1.setString(8,email);
	    stmt1.setString(9,acType);
        stmt1.executeUpdate();
		return "your form is submited";
	}
	
	

	@PostMapping("/signup")
	
	public String signup(HttpServletRequest req) throws SQLException
	{
		System.out.print("signup mathod invoked");
		
		String name= req.getParameter("name");
		String email= req.getParameter("email");
		String number= req.getParameter("number");
		String password= req.getParameter("password");
		
		Connection con= jdbcTamplate.getDataSource().getConnection();
		Statement	stm=con.createStatement();
		String query="select * from signup where email='"+email+"'";
		ResultSet rs= stm.executeQuery(query); 
		
		if(rs.next())
		{
		
			req.setAttribute("allReadyLogin", "you are all ready login");
			return "sign-up";
		}
		else
		{
		String otp= "";
		otp = generateOtp(6);
		System.out.println("your otp is " + otp);
		  String query2 = "insert into signup(name,email,number,password,otp) values(?,?,?,?,?)";
	  	  PreparedStatement stmt1 = con.prepareStatement(query2);
	  	  stmt1.setString(1,name);
	  	  stmt1.setString(2, email);
	  	  stmt1.setString(3, number);
	  	  stmt1.setString(4, password);
	  	  stmt1.setString(5, otp);
	 
	  	  int row = stmt1.executeUpdate();
	  	  
	  	if (row >=1) {
	  		 sendMail(email, "otp is  "+otp, "otp for varification");
	  		 
	  		req.setAttribute("email", email);
	  	  }
		}
			
		
		return"signupsuccess";
		
		
	}
	
	public void sendMail(String emailTo, String body, String subject) {
		// TODO Auto-generated method stub
		Properties p= new Properties();
		p.put("mail.smtp.host", "smtp.gmail.com");
		p.put("mail.smtp.port", "465");
		p.put("mail.smtp.ssl.enable", "true");
		p.put("mail.smtp.auth", "true");
		
		MailAuthenticator m= new MailAuthenticator("jainhimanshu895@gmail.com", "tahmdrqrwqwiwyfb");
		
		Session session= Session.getInstance(p, m);
		session.setDebug(true);
		
		MimeMessage msg= new MimeMessage(session);
		
		try {
			msg.setFrom("jainhimanshu895@gmail.com");
			msg.addRecipient(Message.RecipientType.TO, new InternetAddress(emailTo));
			msg.setSubject(subject);
			msg.setText(body);
			 Transport.send(msg);
			
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}


	public String generateOtp(int size) {
		StringBuilder sb = new StringBuilder();
  		SplittableRandom sp = new SplittableRandom();
  		 for (int i =0 ; i<size; i++) {
  			 int rn = sp.nextInt(0,9);
  			 sb.append(rn);
  		 }
  		return sb.toString();
	}
	
@PostMapping("/otpVerification")
  	
  	public String otpVerification(HttpServletRequest req)throws SQLException,ClassNotFoundException
  	{
  	
  		String otp =req.getParameter("otp");
  		String email=req.getParameter("email");
  		
  		
  		Connection con=jdbcTamplate.getDataSource().getConnection();	
  		Statement	stm=con.createStatement();
  		String query="select * from signup where email='"+email+"'";
  	    ResultSet rs= stm.executeQuery(query);
  	    
  	    if(rs.next())
  	    {
  	        if(rs.getString("otp").equals(otp))
  	        {
  	        	Statement	stm1=con.createStatement();
  	    	    String query1="update signup set is_varify=1 where email='"+email+"'";
  	    	    stm1.executeUpdate(query1);
  	    	    req.setAttribute("userData", rs.getString("name"));
  	    	    return"login";
  	    	     
  	         }
  	        else
  	    	   req.setAttribute("text", "your passwor is not valid");
  	    }
  		
  		
  		return "signupsuccess";
  	}


@PostMapping("/login")
public String login(HttpServletRequest req) throws SQLException
{
	System.out.print("login method invoked");
	String email= req.getParameter("email");
	String password= req.getParameter("password");
	
	Connection con=jdbcTamplate.getDataSource().getConnection();
	Statement stm=con.createStatement();
	String query="select * from signup where email='"+email+"'";
	ResultSet rs= stm.executeQuery(query); 
	
	if(rs.next())
	{
		 if(rs.getInt("is_varify") == 0) {
	 		  req.setAttribute("text", "You are not verified");
	 			return "login";
		 }
		
	   if(rs.getString("password").equals(password))
	   {
		   
   	       Connection con1=jdbcTamplate.getDataSource().getConnection();	
	       Statement smt =con1.createStatement();
		   String query1="select * from  registration";
	       ResultSet rs1= smt.executeQuery(query1);
	  
	   
		    ArrayList<Map<String, String>> l = new ArrayList<Map<String,String>>(); 
		  
		    while(rs1.next())
		   {
			   Map<String ,String> m=new HashMap<String ,String>();
			   m.put(("name"), rs1.getString("userName"));
			   m.put(("email"), rs1.getString("email"));
			   l.add(m);
		   }
		  
		    
		    req.setAttribute("userInfo", l);
		   
		return "Admin";
	   }
	}
	req.setAttribute("test", "wrong email or password");
	return"login";
}

@PostMapping("/conformation")
public String conformation(HttpServletRequest req){
	String conformation=req.getParameter("conformation");
	String userName=req.getParameter("userName");
	String email=req.getParameter("email");
	System.out.println(userName);
	System.out.println(email);
	System.out.println(conformation);
	
	if(conformation.equals("approved")){
		
		
		String accountNumber= generateOtp(16);
		   sendMail(email, userName+" your registration is approved"+" your account no is '"+accountNumber+"'","Email Alert from Apka Apna Bank");
	}
	else{
		
		 sendMail(email, userName+" your registration is rejected"," Email Alert from Apka Apna Bank");
		
	}
	
	
	
	return"login";
}
	
	

}
