package com.vancondos.service;

import com.vancondos.dao.InputImageDAO;
import com.vancondos.entity.BuildingEntity;
import com.vancondos.entity.InputImageEntity;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class ImageManagerImpl implements ImageManager {
    private InputImageDAO inputImageDAO;

    @Override
    @Transactional
    public void addImgNamesToBuilding(List<String> imgNames, BuildingEntity building) {
        if (building != null && imgNames != null && !imgNames.isEmpty()) {
            int i = 0;
            Set<InputImageEntity> inputImageEntitySet = new HashSet<InputImageEntity>();
            for (String imgName : imgNames) {
                InputImageEntity inputImageEntity = new InputImageEntity();
                inputImageEntity.setBuildingEntity(building);
                inputImageEntity.setName(imgName);
                inputImageEntity.setSort(i);
                inputImageEntitySet.add(inputImageEntity);
                i++;
            }
            building.setInputImageEntities(inputImageEntitySet);
        }
    }

    @Override
    @Transactional
    public void deleteImage(Integer imageId) {
        inputImageDAO.deleteImageEntity(imageId);
    }

    public void setInputImageDAO(InputImageDAO inputImageDAO) {
        this.inputImageDAO = inputImageDAO;
    }
}
