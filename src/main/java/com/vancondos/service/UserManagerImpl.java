package com.vancondos.service;

import com.vancondos.dao.UserDAO;
import com.vancondos.entity.UserEntity;
import com.vancondos.exception.BusinessException;
import com.vancondos.transfer.SignUpObject;
import org.springframework.transaction.annotation.Transactional;

public class UserManagerImpl implements UserManager{
    //User dao injected by Spring context
    private UserDAO userDAO;

    @Override
    @Transactional
    public void addOrUpdateUser(UserEntity userEntity) throws BusinessException {
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

    @Override
    @Transactional
    public UserEntity getUserFromLogIn(SignUpObject signUpObject) throws BusinessException{
        return userDAO.getUserFromLogIn(signUpObject);

    }

    public void setUserDAO(UserDAO userDAO) {
        this.userDAO = userDAO;
    }
}
