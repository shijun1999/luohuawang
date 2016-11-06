package com.vancondos.dao;

import com.vancondos.entity.BuildingEntity;
import com.vancondos.entity.InputImageEntity;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.classic.Session;

import java.util.List;


public class InputImageDAOImpl implements InputImageDAO{
    //Session factory injected by spring context
    private SessionFactory sessionFactory;

    @Override
    public void deleteImageEntity(Integer imageId) {
        String hql = "Delete FROM InputImageEntity WHERE id = :image_id";
        Query query = getSession().createQuery(hql);
        query.setInteger("image_id", imageId);
        int rowDelete = query.executeUpdate();
        if (rowDelete == 0) {
            throw new RuntimeException("Cannot find a building with Id " + imageId.toString());
        } else if (rowDelete > 1) {
            throw new RuntimeException("More than one building with Id " + imageId.toString());
        }
    }


    //This setter will be used by Spring context to inject the sessionFactory instance
    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    private Session getSession() {
        return this.sessionFactory.getCurrentSession();
    }
}
