package com.junshi.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.junshi.entity.Louhua;

@Repository
public class EmployeeDaoImpl implements LouhuaDAO
{
	//Session factory injected by spring context
    private SessionFactory sessionFactory;
	
    //This method will be called when a employee object is added
	@Override
	public void addLouhua(Louhua employee) {
		this.sessionFactory.getCurrentSession().save(employee);
	}

	//This method return list of employees in database
	@SuppressWarnings("unchecked")
	@Override
	public List<Louhua> getAllLouhuas() {
		return this.sessionFactory.getCurrentSession().createQuery("from EmployeeEntity").list();
	}

	//Deletes a employee by it's id
	@Override
	public void deleteEmployee(Integer employeeId) {
		Louhua employee = (Louhua) sessionFactory.getCurrentSession()
										.load(Louhua.class, employeeId);
        if (null != employee) {
        	this.sessionFactory.getCurrentSession().delete(employee);
        }
	}

	//This setter will be used by Spring context to inject the sessionFactory instance
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
}
