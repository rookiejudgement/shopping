package com.teamsankya.shopping4fun.controller;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.teamsankya.shopping4fun.dao.SearchProductDaoImpl;
import com.teamsankya.shopping4fun.dto.ProductDto;


@Controller
public class SearchProductController {
	
	@Autowired
	private SearchProductDaoImpl daoImpl;
	
	public SearchProductController() {
	}
	final Logger LOGGER = Logger.getLogger(SearchProductController.class);
	
	@RequestMapping(method=RequestMethod.GET,path="getproduct")
	public ModelAndView searchProduct(@RequestParam("product")String pName) {
		LOGGER.info("product name: " +pName);
            List<ProductDto>    bean=  daoImpl.searchProduct(pName);
            if(bean!=null) {
            String pname=null;
            for (ProductDto productDto : bean) {
			pname=productDto.getpName();
			System.out.println(pname);
			}
		   return new ModelAndView("productlist", "msg",bean);
	}else {
		return new ModelAndView("failure","msg","no result found");
	}
	}
}
