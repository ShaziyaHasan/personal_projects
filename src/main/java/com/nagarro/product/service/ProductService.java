package com.nagarro.product.service;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nagarro.product.Products;
import com.nagarro.product.repository.ProductsDAO;

@Service
public class ProductService extends Thread {

	@Autowired
	private ProductsDAO pdao;
	
	String line="";
	public void saveProductsData() {
		try { 
			BufferedReader br = new BufferedReader(new FileReader("src/main/resources/product.csv"));
		while((line=br.readLine())!=null) {
			String[] data = line.split("\\|");
			Products p = new Products();
			p.setId(data[0]);
			p.setName(data[1]);
			p.setColour(data[2]);
			p.setGender(data[3]);
			p.setSize(data[4]);
			p.setPrice(Double.parseDouble(data[5]));
			p.setRating(Double.parseDouble(data[6]));
			p.setAvailability(data[7]);
			pdao.save(p);
			
		}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public List<Products> getProductData(String size, String colour, String gender) {
		List<Products> products = pdao.findBySizeAndColourAndGender(size, colour, gender);
		System.out.println("products Size is " + products.size());
		return products;			
		
	}
}
