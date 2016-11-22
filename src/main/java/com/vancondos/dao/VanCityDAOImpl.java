package com.vancondos.dao;

import com.vancondos.entity.VanCityEntity;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.classic.Session;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class VanCityDAOImpl implements VanCityDAO {
    //Session factory injected by spring context
    private SessionFactory sessionFactory;

    @Override
    public void addOrUpdateBuilding(VanCityEntity vanCityEntity){
        getSession().saveOrUpdate(vanCityEntity);
    }

    @Override
    public List<VanCityEntity> getAllVanCitys() {
        List<VanCityEntity> list = getSession().createQuery("from VanCityEntity vce order by vce.order").list();
        return list;
    }

    @Override
    public void deleteVanCity(Integer vanCityId) {
        VanCityEntity vanCityEntity = getVanCityById(vanCityId);
        if (null != vanCityEntity) {
            getSession().delete(vanCityEntity);
        }
    }

    @Override
    public VanCityEntity getVanCityById(Integer vanCityId) {

        String hql = "FROM VanCityEntity WHERE id = :vanCity_id";
        Query query = getSession().createQuery(hql);
        query.setInteger("vanCity_id", vanCityId);
        List<VanCityEntity> results = query.list();
        if (results.isEmpty()) {
            throw new RuntimeException("Cannot find a vanCity with Id " + vanCityId.toString());
        } else if (results.size() > 1) {
            throw new RuntimeException("More than one vanCity with Id " + vanCityId.toString());
        }

        return results.get(0);

    }

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    private Session getSession() {
        return this.sessionFactory.getCurrentSession();
    }
}