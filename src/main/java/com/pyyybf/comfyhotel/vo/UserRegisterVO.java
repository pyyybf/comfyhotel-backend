package com.pyyybf.comfyhotel.vo;

import io.swagger.annotations.ApiModel;
import lombok.Data;

/**
 * @program: comfy_hotel
 * @description: register information of user
 * @author: panyue
 * @date: 2022/9/22
 **/
@Data
@ApiModel(value = "user register information", description = "user register information")
public class UserRegisterVO {

    private Long userId;
    private String email;
    private String password;
    private String firstName;
    private String lastName;
    private String avatar;

}
