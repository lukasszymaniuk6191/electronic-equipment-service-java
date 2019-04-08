package com.electronic.equipment.service;

import com.electronic.equipment.dto.UserDto;
import com.electronic.equipment.entity.User;

public interface UserService {

    User getUserByUsername(String username);

    void saveUser(UserDto userDto);

}
