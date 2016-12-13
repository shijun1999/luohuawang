package com.vancondos.service;

import com.vancondos.entity.UserEntity;
import com.vancondos.exception.BusinessException;
import com.vancondos.transfer.SignUpObject;

public interface UserManager {

    public void addOrUpdateUser(UserEntity userEntity) throws BusinessException;

    public UserEntity updateUserWithObjectReturn(UserEntity userEntity);

    public void deleteUser(Integer userId);

    public UserEntity getUserById(Integer userId);

    public UserEntity getUserFromLogIn(SignUpObject signUpObject) throws BusinessException;
}
