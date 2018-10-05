package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.DAO.CustomerDAO;
import com.niit.domain.Customer;

@Controller
public class Usercontroller 
{
    @Autowired
	CustomerDAO customerDAO;
    
    @RequestMapping(value= {"/signup"},method=RequestMethod.GET)
    public String signup(Model m)
    {
    	m.addAttribute("register", new Customer());
    	return "signup";
    }
    
    @RequestMapping(value= {"/signup"},method=RequestMethod.POST)
    public ModelAndView saveRegister(@ModelAttribute("register") Customer c)
    {
       ModelAndView mav=new ModelAndView();
       customerDAO.save(c);
       mav.addObject("msg","Hello There!");
       mav.setViewName("classy");
       return mav;
    }
}
