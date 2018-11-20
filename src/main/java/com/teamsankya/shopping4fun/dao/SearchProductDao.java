package com.teamsankya.shopping4fun.dao;

import java.util.List;

import com.teamsankya.shopping4fun.dto.ProductDto;

public interface SearchProductDao {
	
	public List<ProductDto> searchProduct(String pName);

}
