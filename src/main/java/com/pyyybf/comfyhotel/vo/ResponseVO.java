package com.pyyybf.comfyhotel.vo;

import io.swagger.annotations.ApiModel;
import lombok.Getter;
import lombok.Setter;

/**
 * @program: comfy_hotel
 * @description: data frame of response
 * @author: panyue
 * @date: 2022/9/21
 **/
@Getter
@Setter
@ApiModel(value = "response return object", description = "response return object")
public class ResponseVO<T> {

    /**
     * if call succeeds
     */
    private Boolean success;

    /**
     * return message
     */
    private String message;

    /**
     * return content
     */
    private T content;

    public static <T> ResponseVO<T> buildSuccess(T content) {
        ResponseVO<T> response = new ResponseVO<T>();
        response.setSuccess(true);
        response.setContent(content);
        return response;
    }

    public static <T> ResponseVO<T> buildFailure(String message, T content) {
        ResponseVO<T> response = new ResponseVO<T>();
        response.setSuccess(false);
        response.setMessage(message);
        response.setContent(content);
        System.out.println(message);
        return response;
    }

}
