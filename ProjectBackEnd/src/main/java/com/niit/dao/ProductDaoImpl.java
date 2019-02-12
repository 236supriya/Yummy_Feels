package com.niit.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.models.Category;
import com.niit.models.Product;
@Repository  
@Transactional 
public class ProductDaoImpl implements ProductDao 
{
	@Autowired
private SessionFactory sessionFactory;
	public ProductDaoImpl()
	{
		System.out.println("ProductDaoImpl bean is created..");
	}
	
	public Product getProduct(int id) 
	{
		Session session=sessionFactory.getCurrentSession();
		Product product=(Product)session.get(Product.class, id);
		return product;
	}
	public void deleteProduct(int id) 
	{
		Session session=sessionFactory.getCurrentSession();
		Product product =new Product();
		product.setId(id);
		session.delete(product);
		
	}
	
	public List<Product> getAllProducts() 
	{
		Session session=sessionFactory.getCurrentSession();
		Query query=session.createQuery("from Product");
		List<Product> products =query.list();
		return products;
	}

	public void saveOrUpdate(Product product) 
	{
		Session session=sessionFactory.getCurrentSession();
		session.saveOrUpdate(product);
		
	}

	public List<Category> getAllCategories() 
	{
		Session session=sessionFactory.getCurrentSession();
		Query query=session.createQuery("from Category");
		List<Category> categories=query.list();
		return categories;
	}
    
	
	public void addCategory(Category category) 
	{
		Session session=sessionFactory.getCurrentSession();		
		session.save(category);
		
	}
	
	

}
