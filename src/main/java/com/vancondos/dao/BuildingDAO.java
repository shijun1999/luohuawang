package com.vancondos.dao;

import java.util.List;
import com.vancondos.entity.BuildingEntity;

public interface BuildingDAO
{
    public void addBuilding(BuildingEntity buildingEntity);

    public List<BuildingEntity> getAllBuildings();

    public void deleteBuilding(Integer buildingId);
}