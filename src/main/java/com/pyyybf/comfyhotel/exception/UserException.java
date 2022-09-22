package com.pyyybf.comfyhotel.exception;

import lombok.Getter;
import lombok.Setter;

/**
 * @program: comfy_hotel
 * @description: exception of module user
 * @author: panyue
 * @date: 2022/9/21
 **/
@Getter
@Setter
public class UserException extends RuntimeException {

    private Integer code;
    private String message;

    public UserException(Integer code, String message) {
        this.code = code;
        this.message = message;
    }
}
