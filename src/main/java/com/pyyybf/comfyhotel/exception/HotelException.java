package com.pyyybf.comfyhotel.exception;

import lombok.Getter;
import lombok.Setter;

/**
 * @program: comfy_hotel
 * @description: exception of module hotel
 * @author: panyue
 * @date: 2022/9/27
 **/
@Getter
@Setter
public class HotelException extends RuntimeException {

    private Integer code;
    private String message;

    public HotelException(Integer code, String message) {
        this.code = code;
        this.message = message;
    }
}
