package com.electronic.equipment.controller;

import com.electronic.equipment.dto.UserDto;
import com.electronic.equipment.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@CrossOrigin(origins = "http://localhost:4200", maxAge = 3600)
@RestController
@RequestMapping({"/api"})
public class UserController {

    private UserService userService;

    @Autowired
    public UserController(UserService userService) {
        this.userService = userService;
    }

    @RequestMapping(value = "/user", method = RequestMethod.POST)
    public void saveUser(@RequestBody UserDto userDto) {
        this.userService.saveUser(userDto);
    }

}
