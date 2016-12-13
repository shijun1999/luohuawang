package com.vancondos.dao;

import com.vancondos.entity.UserEntity;
import com.vancondos.exception.BusinessException;
import com.vancondos.transfer.SignUpObject;
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
    public void addOrUpdateUser(UserEntity userEntity) throws BusinessException{
        if (userEntity.getId()==null && getUserByEmail(userEntity.getEmail())!=null){
            throw new BusinessException("The email has been used,try a different email address" );
        }
        getSession().saveOrUpdate(userEntity);
    }

    public UserEntity updateUserWithObjectReturn(UserEntity userEntity){
        getSession().update(userEntity);
        return getUserById(userEntity.getId());
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

    private UserEntity getUserByEmail(String email){
        String hql = "FROM UserEntity WHERE email = :email";
        Query query = getSession().createQuery(hql);
        query.setString("email", email);
        List<UserEntity> results = query.list();
        return results.isEmpty()?null:results.get(0);
    }

    public UserEntity getUserFromLogIn(SignUpObject signUpObject) throws BusinessException{
        UserEntity userEntity = getUserByEmail(signUpObject.getEmail());
        if (userEntity == null) {
            throw new BusinessException("Wrong Email address:" + signUpObject.getEmail());
        } else if (!userEntity.getPassword().equals(signUpObject.getPassword())){
            throw new BusinessException("Wrong password, try again" );
        }

        return userEntity;
    }

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    private Session getSession() {
        return this.sessionFactory.getCurrentSession();
    }
}