package com.vancondos.service;

import java.util.List;

import com.vancondos.entity.BuildingEntity;

public interface BuildingManager {

    public void addBuilding(BuildingEntity building);

    public List<BuildingEntity> getAllBuildings();


    public BuildingEntity getBuildingById(Integer buildingId);

    public void deleteBuilding(Integer buildingId);

    public void addimgNamesToBuilding(List<String> imgNames, BuildingEntity building);
}
