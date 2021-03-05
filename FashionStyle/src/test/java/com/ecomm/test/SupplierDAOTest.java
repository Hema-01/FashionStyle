package com.ecomm.test;

import static org.junit.Assert.assertTrue;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;


import com.ecomm.dao.SupplierDAO;
import com.ecomm.model.Supplier;

public class SupplierDAOTest {
	static SupplierDAO supplierDAO;
	
	
	@BeforeClass
	public static void initialize() {
		AnnotationConfigApplicationContext myContext = new AnnotationConfigApplicationContext();
		myContext.scan("com.ecomm");
		myContext.refresh();

		supplierDAO = (SupplierDAO) myContext.getBean("supplierDAO");
	}

	@Test
	public void addSupplierTest() {
		Supplier  supplier= new Supplier();
		supplier.setSupplierId(2);
		supplier.setSupplierName("TEST");

		assertTrue("Problem in inserting Supplier", supplierDAO.addSupplier(supplier));
	}
	
	/*@Test
	public void deleteSupplierTest()
	{
		Supplier supplier=new Supplier();
		supplier.setSupplierId(2);
		
		assertTrue("Problem in deleting Supplier", supplierDAO.deleteSupplier(supplier));
		
	}*/
}
