package com.vancondos.dao;

import com.vancondos.entity.UserEntity;
import com.vancondos.exception.BusinessException;
import com.vancondos.transfer.SignUpObject;

public interface UserDAO {

    public void addOrUpdateUser(UserEntity userEntity) throws BusinessException;

    public void deleteUser(Integer userId);

    public UserEntity getUserById(Integer userId);

    public UserEntity getUserFromLogIn(SignUpObject signUpObject) throws BusinessException;
}