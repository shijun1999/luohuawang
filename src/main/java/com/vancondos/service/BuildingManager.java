package com.vancondos.service;

import java.util.List;
import java.util.Set;

import com.vancondos.entity.BuildingEntity;
import com.vancondos.entity.FloorPlanEntity;

public interface BuildingManager {

    public void addOrUpdateBuilding(BuildingEntity building, Set<FloorPlanEntity> floorPlanArray);

    public List<BuildingEntity> getAllBuildings();

    public BuildingEntity getBuildingById(Integer buildingId);

    public void deleteBuilding(Integer buildingId);
}
