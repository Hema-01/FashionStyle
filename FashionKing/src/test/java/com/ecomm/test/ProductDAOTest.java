package com.ecomm.test;

import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.ecomm.dao.ProductDAO;
import com.ecomm.model.Product;

public class ProductDAOTest {
	static ProductDAO productDAO;

	@BeforeClass
	public static void initialize() {
		AnnotationConfigApplicationContext myContext = new AnnotationConfigApplicationContext();
		myContext.scan("com.ecomm");
		myContext.refresh();

		productDAO = (ProductDAO) myContext.getBean("productDAO");
	}
	@Ignore
	@Test
	public void addProductTest() {
		Product product = new Product();
		product.setProductId(4);
		product.setProductName("Appo Mobile");
		product.setProductDesc("Mobile with 4G support");
		product.setPrice(10);
		product.setStock(1250);

		assertTrue("Problem in inserting Product", productDAO.addProduct(product));
	}
	
	
//	@Test
//	public void updateCategory()
//	{
//		Category category= (Category)categoryDAO.getCategory(1);
//		category.setCategoryDesc("Hello im updating");
//		//assertNotNull("problem in null category",category);
//		System.out.println("CategoryId :- "+category.getCategoryId());
//		System.out.println("CategoryDesc: -"+category.getCategoryDesc());
//		assertTrue("Problrm in updating Category", categoryDAO.updateCategory(category));
//	}
//	@Ignore
//	@Test
//	public void retriveCategoriesTest()
//	{
//		List<Category> categoryList =(List<Category>)categoryDAO.retriveCategories();
//		assertTrue("problem in retriving",categoryList.size()>0);
//		for(Category category :categoryList)
//		{
//			System.out.println(category);
//		}
//		
//	}
	
	@Test
	public void deleteProduct() {
		Product product= new Product();
		product.setProductId(1);
		
		
		assertTrue("problem in deleting product",productDAO.deleteProduct(product));
	}
}
