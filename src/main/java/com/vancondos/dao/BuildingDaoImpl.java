package com.vancondos.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.vancondos.entity.BuildingEntity;

@Repository
public class BuildingDaoImpl implements BuildingDAO
{
	//Session factory injected by spring context
    private SessionFactory sessionFactory;
	
    //This method will be called when a building object is added
	@Override
	public void addBuilding(BuildingEntity building) {
		this.sessionFactory.getCurrentSession().save(building);
	}

	//This method return list of buildings in database
	@SuppressWarnings("unchecked")
	@Override
	public List<BuildingEntity> getAllBuildings() {
		return this.sessionFactory.getCurrentSession().createQuery("from BuildingEntity").list();
	}

	//Deletes a building by it's id
	@Override
	public void deleteBuilding(Integer buildingId) {
		BuildingEntity buildingEntity = (BuildingEntity) sessionFactory.getCurrentSession()
										.load(BuildingEntity.class, buildingId);
        if (null != buildingEntity) {
        	this.sessionFactory.getCurrentSession().delete(buildingEntity);
        }
	}

	//This setter will be used by Spring context to inject the sessionFactory instance
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
}
