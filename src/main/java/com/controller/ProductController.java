package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.DAO.ProductDAO;

@Controller
public class ProductController 
{
    @Autowired
	ProductDAO productDAO;
	
  /*  @RequestMapping(value="/classy")
    public ModelAndView plist()
    {
    	ModelAndView mav=new ModelAndView();
    	mav.addObject("plist", productDAO.productlist());
    	mav.setViewName("classy");
    	return mav;
    }*/
}
