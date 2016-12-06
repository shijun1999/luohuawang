package com.vancondos.dao;

import com.vancondos.entity.UserEntity;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.classic.Session;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class UserDAOImpl implements UserDAO {
    //Session factory injected by spring context
    private SessionFactory sessionFactory;

    @Override
    public void addOrUpdateUser(UserEntity userEntity){
        getSession().saveOrUpdate(userEntity);
    }

    @Override
    public void deleteUser(Integer userId) {
        UserEntity userEntity = getUserById(userId);
        if (null != userEntity) {
            getSession().delete(userEntity);
        }
    }

    @Override
    public UserEntity getUserById(Integer userId) {

        String hql = "FROM UserEntity WHERE id = :user_id";
        Query query = getSession().createQuery(hql);
        query.setInteger("user_id", userId);
        List<UserEntity> results = query.list();
        if (results.isEmpty()) {
            throw new RuntimeException("Cannot find a user with Id " + userId.toString());
        } else if (results.size() > 1) {
            throw new RuntimeException("More than one user with Id " + userId.toString());
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