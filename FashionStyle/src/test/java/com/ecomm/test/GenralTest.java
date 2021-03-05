package com.ecomm.test;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

public class GenralTest {

		public static void main(String args[])
		{
			AnnotationConfigApplicationContext myContext=new AnnotationConfigApplicationContext();
			myContext.scan("com.ecomm");
			myContext.refresh();
		}
}
