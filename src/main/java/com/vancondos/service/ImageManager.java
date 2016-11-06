package com.vancondos.service;

import com.vancondos.entity.BuildingEntity;

import java.util.List;

public interface ImageManager {

    public void addImgNamesToBuilding(List<String> imgNames, BuildingEntity building);

    public void deleteImage(Integer imageId);
}
