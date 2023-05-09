package com.se.enrollme.service;

import com.se.enrollme.dto.UserDto;
import com.se.enrollme.model.User;

import java.util.List;

public interface UserService {
    void saveUser(UserDto userDto);

    User findUserByEmail(String email);

    List<User> findAllUsers();

    void deleteUser(Long id);
}