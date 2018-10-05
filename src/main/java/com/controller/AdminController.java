package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.DAO.CategoryDAO;
import com.niit.DAO.ProductDAO;
import com.niit.DAO.SupplierDAO;
import com.niit.domain.Category;
import com.niit.domain.Product;
import com.niit.domain.Supplier;


@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	SupplierDAO supplierDAO;
	@Autowired
	CategoryDAO categoryDAO;
	@Autowired
	ProductDAO productDAO;
	
	@RequestMapping(value= {"/category"} ,method=RequestMethod.GET)
	public String category(Model m) {
		//m.addAttribute("cat", new Category());
		//m.addAttribute("supplier", new Supplier());

		return "admin";
		
	}
	
	@ModelAttribute
	public void prepareData(Model m) {
		
		m.addAttribute("cat", new Category());

		m.addAttribute("supplier", new Supplier());
		
		m.addAttribute("product", new Product());
		
		m.addAttribute("clist", categoryDAO.categorylist());
		
		m.addAttribute("slist", supplierDAO.supplierlist());
	}
	
	
	@RequestMapping(value="/category",method=RequestMethod.POST)
	public ModelAndView saveRegister(@ModelAttribute("cat") Category c) {
		ModelAndView mav=new ModelAndView();
	
		categoryDAO.save(c);
		mav.addObject("msg", "Successfully Registered");
		mav.setViewName("model");
		
		return mav;
	}
	
	
	@RequestMapping(value= {"/supplier"} ,method=RequestMethod.GET)
	public String supplier(Model m) {
		//m.addAttribute("cat", new Category());

		//m.addAttribute("supplier", new Supplier());
		return "admin";
		
	}
	
	
	@RequestMapping(value="/supplier",method=RequestMethod.POST)
	public ModelAndView saveRegister(@ModelAttribute("supplier") Supplier s) {
		ModelAndView mav=new ModelAndView();
		
		supplierDAO.save(s);
		mav.addObject("msg", "Successfully Registered");
		mav.setViewName("model2");
		
		return mav;
	}
	
	
	@RequestMapping(value= {"/product"} ,method=RequestMethod.GET)
	public String product(Model m) {
		//m.addAttribute("cat", new Category());

		//m.addAttribute("supplier", new Supplier());
		
		//m.addAttribute("product", new Product());
		
		return "admin";
		
	}
	
	
	@RequestMapping(value="/product",method=RequestMethod.POST)
	public ModelAndView saveProduct(@RequestParam String productname,@RequestParam String company,@RequestParam int price,@RequestParam int category) {
		ModelAndView mav=new ModelAndView();
		Product product=new Product();
		product.setProductname(productname);
		/*product.setCategory(categoryDao.findbyId(Integer.parseInt(request.getParameter("category"))));
		product.setSupplier(supplierDao.findbyId(Integer.parseInt(request.getParameter("pSupplier"))));
		product.setDescription(request.getParameter("pDescription"));
		product.setPrice(Float.parseFloat(request.getParameter("pPrice")));
		product.setStock(Integer.parseInt(request.getParameter("pQuantity")));*/
		productDAO.save(product);
		mav.addObject("msg", "Successfully Registered");
		mav.setViewName("model3");
		
		return mav;
	}
	
	
	@RequestMapping(value= {"/categorylist"} ,method=RequestMethod.GET)
	public String catlist(Model m)
	{
		m.addAttribute("categorylist",categoryDAO.categorylist());
		
		return "categorylist";
		
	}
	
	@RequestMapping("/deleteCategory/{cid}")
	public String delete(@PathVariable("cid") int cid) {
		// contactDAO.delete(contactId);
		categoryDAO.delete(cid);
		return "redirect:/admin/categorylist";
	}
	
	
	@RequestMapping(value= {"/supplierlist"}, method=RequestMethod.GET)
	public String supplierlist(Model m)
	{
		m.addAttribute("supplierlist", supplierDAO.supplierlist());
		return "supplierlist";
	}
	
	
	@RequestMapping("/deleteSupplier/{sid}")
	public String deletesup(@PathVariable("sid") int sid)
	{
		supplierDAO.delete(sid);
		return "redirect:/admin/supplierlist";
	}
	
}
