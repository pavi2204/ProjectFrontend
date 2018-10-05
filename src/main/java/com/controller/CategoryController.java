package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.DAO.CategoryDAO;

@Controller
public class CategoryController {

	@Autowired
	CategoryDAO categoryDAO;
	
	@RequestMapping("/classy")
public ModelAndView clist() {
	ModelAndView mav=new ModelAndView();
	mav.addObject("clist", categoryDAO.categorylist());
	mav.setViewName("classy");
	return mav;
}

}

