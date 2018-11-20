package com.teamsankya.shopping4fun.dao;

import java.util.List;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;

import com.teamsankya.shopping4fun.dto.ProductDto;



public class SearchProductDaoImpl implements SearchProductDao {

	@Autowired
	private SessionFactory sessionFactory;

	public SearchProductDaoImpl() {
	}
	
	public List<ProductDto> searchProduct(String pName) {
	String qry = "from ProductDto  where pName='"+pName+"'";
		Session session = sessionFactory.openSession();
		System.out.println(session);
		Query query = session.createQuery(qry);
		List<ProductDto> dto = query.list();
		return dto;
	}
}

