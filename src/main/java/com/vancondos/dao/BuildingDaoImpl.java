package com.vancondos.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.vancondos.entity.LouhuaEntity;

@Repository
public class LouhuaDaoImpl implements LouhuaDAO
{
	//Session factory injected by spring context
    private SessionFactory sessionFactory;
	
    //This method will be called when a louhua object is added
	@Override
	public void addLouhua(LouhuaEntity louhua) {
		this.sessionFactory.getCurrentSession().save(louhua);
	}

	//This method return list of louhuas in database
	@SuppressWarnings("unchecked")
	@Override
	public List<LouhuaEntity> getAllLouhuas() {
		return this.sessionFactory.getCurrentSession().createQuery("from LouhuaEntity").list();
	}

	//Deletes a louhua by it's id
	@Override
	public void deleteLouhua(Integer louhuaId) {
		LouhuaEntity louhuaEntity = (LouhuaEntity) sessionFactory.getCurrentSession()
										.load(LouhuaEntity.class, louhuaId);
        if (null != louhuaEntity) {
        	this.sessionFactory.getCurrentSession().delete(louhuaEntity);
        }
	}

	//This setter will be used by Spring context to inject the sessionFactory instance
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
}
