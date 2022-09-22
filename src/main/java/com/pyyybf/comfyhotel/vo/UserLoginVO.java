package com.pyyybf.comfyhotel.vo;

import io.swagger.annotations.ApiModel;
import lombok.Data;

/**
 * @program: comfy_hotel
 * @description: login information of user
 * @author: panyue
 * @date: 2022/9/21
 **/
@Data
@ApiModel(value = "user login information", description = "user login information")
public class UserLoginVO {

    private String email;
    private String password;

}
