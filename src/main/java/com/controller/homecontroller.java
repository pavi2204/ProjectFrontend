package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class homecontroller
{
    @RequestMapping(value= {"/","/home"})
    public String demo()
    {
		return "Demo";
		
    }
    
    @RequestMapping(value= {"/helpdesk"})
    public String showhelpdesk()
    {
    	return "helpdesk";
    }
    
    @RequestMapping(value={"/admin"})
    public String showadmin()
    {
    	return "admin";
    }
    @RequestMapping(value={"/login"})
    public String showlogin()
    {
    	return "login";
    }
    
    /*@RequestMapping("/signup")
    public String signup()
    {
    	return "signup";
    }
    
    @RequestMapping("/login")
    public String login()
    {
    	return "login";
    }*/
}