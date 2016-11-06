package com.vancondos.dao;

import java.util.List;

import com.vancondos.entity.FloorPlanEntity;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.classic.Session;
import org.springframework.stereotype.Repository;

import com.vancondos.entity.BuildingEntity;

@Repository
public class BuildingDaoImpl implements BuildingDAO {
    //Session factory injected by spring context
    private SessionFactory sessionFactory;

    //This method will be called when a building object is added
    @Override
    public void addOrUpdateBuilding(BuildingEntity building) {
        getSession().saveOrUpdate(building);
    }

    @Override
    public void addOrUpdateFloorPlanEntity(FloorPlanEntity floorPlanEntity){
        getSession().saveOrUpdate(floorPlanEntity);
    }

    //This method return list of buildings in database
    @Override
    public List<BuildingEntity> getAllBuildings() {
        return getSession().createQuery("from BuildingEntity").list();
    }

    //Deletes a building by it's id
    @Override
    public void deleteBuilding(Integer buildingId) {
        BuildingEntity buildingEntity = (BuildingEntity) getSession().load(BuildingEntity.class, buildingId);
        if (null != buildingEntity) {
            getSession().delete(buildingEntity);
        }
    }

    @Override
    public BuildingEntity getBuildingById(Integer buildingId) {

        String hql = "FROM BuildingEntity WHERE id = :building_id";
        Query query = getSession().createQuery(hql);
        query.setInteger("building_id", buildingId);
        List<BuildingEntity> results = query.list();
        if (results.isEmpty()) {
            throw new RuntimeException("Cannot find a building with Id " + buildingId.toString());
        } else if (results.size() > 1) {
            throw new RuntimeException("More than one building with Id " + buildingId.toString());
        }
        BuildingEntity buildingEntity = results.get(0);

        return buildingEntity;
    }

    //This setter will be used by Spring context to inject the sessionFactory instance
    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    private Session getSession() {
        return this.sessionFactory.getCurrentSession();
    }
}
