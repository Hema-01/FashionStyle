package com.ecomm.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.ecomm.model.Product;

@Transactional
@Repository("productDAO")
public class ProductDAOImpl implements ProductDAO {

	@Autowired
	SessionFactory sessionFactory;
	@Autowired
	ProductDAO productDAO;

	@Override
	public boolean addProduct(Product product) {
		try {
			Session session = sessionFactory.getCurrentSession();
			System.out.println("Session Created");
			System.out.println("Product Id:-" + product.getProductId());
			session.save(product);
			System.out.println("Product Added");
			return true;
		} catch (Exception e) {
			System.out.println("Exception Arised :- " + e);
			return false;

		}

	}

	@Override
	public boolean updateProduct(Product product) {
		try {

			System.out.println("Product Updated");
			sessionFactory.getCurrentSession().update(product);

			return true;
		} catch (Exception e) {
			return false;
		}
	}

	@Override
	public Product getProduct(int productId) {
		Session session = sessionFactory.openSession();
		Product product = (Product) session.get(Product.class, productId);
		session.close();
		return product;
	}

	@Override
	public List<Product> retriveProducts() {
		Session session = sessionFactory.openSession();
		List<Product> productList = (List<Product>) session.createQuery("from Product").list();
		session.close();
		return productList;

	}

	@Override
	public boolean deleteProduct(Product product) {
		try {
			sessionFactory.getCurrentSession().delete(product);
			System.out.println("Product deleted from table");
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	@Override
	public Product getProductById(String productId) {
		// TODO Auto-generated method stub
		return productDAO.getProductById(productId);
	}

}
