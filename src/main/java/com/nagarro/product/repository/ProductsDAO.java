package com.nagarro.product.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import com.nagarro.product.Products;

@Repository
public interface ProductsDAO extends JpaRepository<Products, String> {

	@Modifying
	@Query("SELECT p from Products p where p.size = :size and p.colour = :colour and p.gender = :gender") 
  
	List<Products> findBySizeAndColourAndGender(@Param("size") String size, @Param("colour") String colour, @Param("gender") String gender);

//	 @Query("SELECT p from Products ORDER BY p.price ASC")
//	 List<Products> findAllOrderByRatingAsc();
//	 
//	 @Query("SELECT p from Products ORDER BY p.rating DESC")
//	 List<Products> findAllOrderByPriceDesc();
}
