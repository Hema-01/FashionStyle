package com.ecomm.test;

import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.ecomm.dao.CategoryDAO;
import com.ecomm.model.Category;

public class CategoryDAOTest {
	static CategoryDAO categoryDAO;

	@BeforeClass
	public static void initialize() {
		AnnotationConfigApplicationContext myContext = new AnnotationConfigApplicationContext();
		myContext.scan("com.ecomm");
		myContext.refresh();

		categoryDAO = (CategoryDAO) myContext.getBean("categoryDAO");
	}
	@Ignore
	@Test
	public void addCategoryTest() {
		Category category = new Category();
		category.setCategoryId(1003);
		category.setCategoryName("Mobile-NOkia");
		category.setCategoryDesc("Nokia Mobile Description");

		assertTrue("Problem in inserting Category", categoryDAO.addCategory(category));
	}
	
	
	@Test
	public void updateCategory()
	{
		Category category= (Category)categoryDAO.getCategory(1);
		category.setCategoryDesc(" im updating");
		//assertNotNull("problem in null category",category);
		System.out.println("CategoryId :- "+category.getCategoryId());
		System.out.println("CategoryDesc: -"+category.getCategoryDesc());
		assertTrue("Problrm in updating Category", categoryDAO.updateCategory(category));
	}
	@Ignore
	@Test
	public void retriveCategoriesTest()
	{
		List<Category> categoryList =(List<Category>)categoryDAO.retriveCategories();
		assertTrue("problem in retriving",categoryList.size()>0);
		for(Category category :categoryList)
		{
			System.out.println(category);
		}
		
	}
	@Ignore
	@Test
	public void deleteCategory() {
		Category category= new Category();
		category.setCategoryId(1005);
		
		assertTrue("problem in delting",categoryDAO.deleteCategory(category));
	}
}
