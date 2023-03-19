package coms.HappyNewHeels.controller;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import coms.HappyNewHeels.model.User;
import coms.HappyNewHeels.service.UserService;
import coms.HappyNewHeels.validatator.EmailValidator;

@Controller
public class LoginController {
	@Autowired
	private UserService userService;
	String errMessage;
	
	
			@PostMapping("/login")
		    public String loginAction(ModelMap map, javax.servlet.http.HttpServletRequest request, 
		    		 @RequestParam(value="emailId", required=true) String emailId,
		    		 @RequestParam(value="password", required=true) String password) 
		    {
			  
			  if(EmailValidator.isValid(emailId)) {
				  
				 
				  User userDB = userService.getUser(emailId,password);
				  
				  if(userDB!=null) {
					  System.out.println("############# " + userDB.getFirstName());
					  
					  String userRole;
					  
					  if( userDB.getDiscriminatorValue().equals("Admin")) {
							userRole = "Admin";
							map.addAttribute(userRole);
							HttpSession session = request.getSession();
							
							session.setAttribute("userEmailId", emailId);
							session.setAttribute("userName", userDB.getFirstName());
							return "redirect:/admin";
					  }
						else
						{
							userRole ="Customer";
						
							map.addAttribute(userRole);
							HttpSession session = request.getSession();
							
							session.setAttribute("userEmailId", emailId);
							session.setAttribute("userName", userDB.getFirstName());
						return "redirect:/homePage";
						}
				  }else {
					  errMessage = "Invalid Credentials";
					  map.addAttribute("errorMessage", errMessage);
					  
					  return "redirect:/login";
					  
					}
				  
			  }else {
				  errMessage ="Invalid email id";
				  map.addAttribute("errorMessage", errMessage);
				  
				  System.out.println("################### "+ errMessage);
				  
				  return "redirect:/login";
					
			  }
		  
			
		    }
			
			@GetMapping("/logout")
			public String logout(javax.servlet.http.HttpServletRequest request) {
				
				HttpSession session = request.getSession();
				if(session !=null) {
					session.invalidate();
					return "redirect:/homePage";
				}
				return "redirect:/homePage";
				
			}
			
			
			
			  @GetMapping("/login/changePassword/{emailID}")
			  public String changePassword(@PathVariable String emailID,javax.servlet.http.HttpServletRequest request ) {
			  
			   request.setAttribute("emailIdVal", emailID);
			  
			  return "changePassword";
			  
			  }
			 
			 
			
				
			 @GetMapping("/login/changePassword") 
			 public ModelAndView changePassword() {
				  ModelAndView modelAndView = new ModelAndView("changePassword");
				  //modelAndView.addObject("message", "test data");
				  modelAndView.addObject("emailIdVal", "dev@123"); return modelAndView;
			}
				 
			
			@PostMapping("/login/changePassword")
			public String saveChangePassword(@ModelAttribute("user") User user , HttpServletRequest request) {
				
				 User user1 = userService.getUser(user.getEmailId()); 
				 
				 System.out.println("##"+  user.getEmailId() );
				 user1.setPassword(user.getPassword());
				userService.updateUser(user1);
				request.setAttribute("changePasswordMsg", "Password changed");
				
				return "homePage";
			}
			
			
			@GetMapping("/register")
			public String registerGet() {
				return "register";
			}
			
			

			@PostMapping("/register/save")
			public String registerPost(@ModelAttribute("user") User user , HttpServletRequest request) throws ServletException {
					
				userService.saveUser(user);
				return "homePage";
				
			}
			

}
