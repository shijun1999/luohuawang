package com.junshi.dao;

import java.util.List;
import com.junshi.entity.LouhuaEntity;

public interface LouhuaDAO
{
    public void addLouhua(LouhuaEntity louhuaEntity);

    public List<LouhuaEntity> getAllLouhuas();

    public void deleteLouhua(Integer louhuaId);
}