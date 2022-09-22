package com.pyyybf.comfyhotel.controller;

import com.pyyybf.comfyhotel.bl.UserService;
import com.pyyybf.comfyhotel.vo.ResponseVO;
import com.pyyybf.comfyhotel.vo.UserLoginVO;
import io.swagger.annotations.Api;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
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

    @PostMapping("/login")
    public ResponseVO login(@RequestBody UserLoginVO userLoginVO) {
        return ResponseVO.buildSuccess(userService.login(userLoginVO));
    }

}
