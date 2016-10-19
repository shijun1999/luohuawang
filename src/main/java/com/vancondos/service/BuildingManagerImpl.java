package com.vancondos.service;


import java.util.List;

import com.vancondos.entity.FloorPlanEntity;
import org.springframework.transaction.annotation.Transactional;

import com.vancondos.dao.BuildingDAO;
import com.vancondos.entity.BuildingEntity;

public class BuildingManagerImpl implements BuildingManager {
    //building dao injected by Spring context
    private BuildingDAO buildingDAO;

    //This method will be called when a building object is added
    @Override
    @Transactional
    public void addBuilding(BuildingEntity building) {
        if (building!=null && building.getFloorPlanEntities()!=null){
            for (FloorPlanEntity floorPlanEntity :building.getFloorPlanEntities()){
                floorPlanEntity.setBuildingEntity(building);
            }
        }
        buildingDAO.addBuilding(building);
    }

    //This method return list of buildings in database
    @Override
    @Transactional
    public List<BuildingEntity> getAllBuildings() {
        return buildingDAO.getAllBuildings();
    }
    //Deletes a building by it's id
    @Override
    @Transactional
    public void deleteBuilding(Integer buildingId) {
        buildingDAO.deleteBuilding(buildingId);
    }

    //This setter will be used by Spring context to inject the dao's instance
    public void setBuildingDAO(BuildingDAO buildingDAO) {
        this.buildingDAO = buildingDAO;
    }
}
