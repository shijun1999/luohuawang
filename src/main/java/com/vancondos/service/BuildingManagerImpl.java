package com.vancondos.service;


import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import com.vancondos.entity.FloorPlanEntity;
import com.vancondos.entity.InputImageEntity;
import org.springframework.transaction.annotation.Transactional;

import com.vancondos.dao.BuildingDAO;
import com.vancondos.entity.BuildingEntity;

public class BuildingManagerImpl implements BuildingManager {
    //building dao injected by Spring context
    private BuildingDAO buildingDAO;

    //This method will be called when a building object is added
    @Override
    @Transactional
    public void addOrUpdateBuilding(BuildingEntity building, Set<FloorPlanEntity> floorPlanArray) {

        buildingDAO.addOrUpdateBuilding(building);

        if (floorPlanArray!= null && !floorPlanArray.isEmpty()) {
            for (FloorPlanEntity floorPlanEntity : floorPlanArray) {
                floorPlanEntity.setBuildingEntity(building);
                buildingDAO.addOrUpdateFloorPlanEntity(floorPlanEntity);
            }
        }
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

    @Override
    @Transactional
    public BuildingEntity getBuildingById(Integer buildingId) {
        return buildingDAO.getBuildingById(buildingId);
    }
}
