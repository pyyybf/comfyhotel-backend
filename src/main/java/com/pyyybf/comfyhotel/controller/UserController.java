package com.pyyybf.comfyhotel.controller;

import com.pyyybf.comfyhotel.bl.UserService;
import io.swagger.annotations.Api;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @program: comfy_hotel
 * @description: controller of user
 * @author: panyue
 * @date: 2022/9/21
 **/
@RestController
@RequestMapping("/api/user")
@Api(tags = "UserController", description = "User Account Controller")
public class UserController {

    @Autowired
    UserService userService;

}
