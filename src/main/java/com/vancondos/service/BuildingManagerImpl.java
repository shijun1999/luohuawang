package com.vancondos.service;


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
    public void addBuilding(BuildingEntity building) {
        if (building != null && building.getFloorPlanEntities() != null) {
            for (FloorPlanEntity floorPlanEntity : building.getFloorPlanEntities()) {
                floorPlanEntity.setBuildingEntity(building);
            }
        }
        buildingDAO.addBuilding(building);
    }

    @Override
    @Transactional
    public void addimgNamesToBuilding(List<String> imgNames, BuildingEntity building) {
        if (building != null && imgNames != null && !imgNames.isEmpty()) {
            int i = 0;
            Set<InputImageEntity> inputImageEntitySet = new HashSet<InputImageEntity>();
            for (String imgName : imgNames) {
                InputImageEntity inputImageEntity = new InputImageEntity();
                inputImageEntity.setBuildingEntity(building);
                inputImageEntity.setName(imgName);
                inputImageEntity.setSort(i);
                i++;
            }
            building.setInputImageEntities(inputImageEntitySet);
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

    @Override
    @Transactional
    public BuildingEntity getBuildingById(Integer buildingId) {
        return buildingDAO.getBuildingById(buildingId);
    }
}
