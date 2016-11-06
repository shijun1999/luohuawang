package com.vancondos.dao;

import java.util.List;
import com.vancondos.entity.BuildingEntity;
import com.vancondos.entity.FloorPlanEntity;

public interface BuildingDAO
{
    public void addOrUpdateBuilding(BuildingEntity buildingEntity);

    public void addOrUpdateFloorPlanEntity(FloorPlanEntity floorPlanEntity);

    public List<BuildingEntity> getAllBuildings();

    public void deleteBuilding(Integer buildingId);

    public BuildingEntity getBuildingById(Integer buildingId);
}