package com.vancondos.service;

import com.vancondos.dao.UserDAO;
import com.vancondos.entity.UserEntity;
import org.springframework.transaction.annotation.Transactional;

public class UserManagerImpl implements UserManager{
    //User dao injected by Spring context
    private UserDAO userDAO;

    @Override
    @Transactional
    public void addOrUpdateUser(UserEntity userEntity){
        userDAO.addOrUpdateUser(userEntity);
    }

    @Override
    @Transactional
    public UserEntity getUserById(Integer userId){
        return userDAO.getUserById(userId);
    }


    @Override
    @Transactional
    public void deleteUser(Integer userId){
        userDAO.deleteUser(userId);
    }

    public void setUserDAO(UserDAO userDAO) {
        this.userDAO = userDAO;
    }
}
