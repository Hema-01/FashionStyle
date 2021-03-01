package com.ecomm.config;

import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.ecomm.model.Category;
import com.ecomm.model.Product;
import com.ecomm.model.UserDetail;
import com.ecomm.model.Supplier;

@Configuration
@EnableTransactionManagement
@ComponentScan("com.ecomm")
public class DBConfig {
	
	//create dataSource bean
	@Bean(name="dataSource")
	public DataSource getDataSource()
	{
		DriverManagerDataSource dataSource= new DriverManagerDataSource();
		dataSource.setDriverClassName("com.mysql.cj.jdbc.Driver");
		dataSource.setUrl("jdbc:mysql://localhost/springmaven");
		dataSource.setUsername("root");
		dataSource.setPassword("Hemhit@123");
		System.out.println("DataSource created");
		return dataSource;
		
	}

	//create a sessionfactory bean
	@Bean
	public SessionFactory getSessionFactoryBean()
	{
		Properties hibernateProp=new Properties();
		hibernateProp.put("hbm2ddl.auto", "update");
		hibernateProp.put("hibernate.dialect","org.hibernate.dialect.MySQL8Dialect");
		//System.out.println("=====Properties added======");
		
		
		LocalSessionFactoryBuilder factoryMgr=new LocalSessionFactoryBuilder(getDataSource());
		factoryMgr.addProperties(hibernateProp);
		//System.out.println("== factory Builder cretated========");
		
		
		factoryMgr.addAnnotatedClass(Category.class);
		factoryMgr.addAnnotatedClass(UserDetail.class);
		factoryMgr.addAnnotatedClass(Supplier.class);
		factoryMgr.addAnnotatedClass(Product.class);
		
		//SessionFactory sessionFactory=factoryMgr.buildSessionFactory();
		//System.out.println("=== SessionFactory Object Created====");
		
		return factoryMgr.buildSessionFactory();
		
	}
	//create a HibernateTransactionManager bean
		@Bean(name="txManager")
		public HibernateTransactionManager getHibernateTransactionManager(SessionFactory sessionFactory)
		{
			System.out.println("======== Hibernate Transaction Manager Bean Created===========");
			return new HibernateTransactionManager(sessionFactory);
		}
}
