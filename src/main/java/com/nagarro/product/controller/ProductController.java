package com.nagarro.product.controller;

import java.util.List;

import javax.websocket.server.PathParam;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.nagarro.product.Products;
import com.nagarro.product.service.ProductService;

@RestController
public class ProductController {
	@Autowired
	private ProductService pd ;
	
	@RequestMapping(path="/productData" , method = RequestMethod.GET)
	public void setDataInDB() {
		pd.saveProductsData();
	}
	
	@GetMapping("/getProduct")
	private List<Products> getProducts(@RequestParam("size") String size, @RequestParam("colour") String colour, @RequestParam("gender") String gender) { 
		
		System.out.println("Size is : " +size);
		System.out.println("colour is : " +colour);
		System.out.println("gender is : " +gender);
		return pd.getProductData(size, colour, gender);  
	}  
}
