package com.pyyybf.comfyhotel.vo;

/**
 * @program: comfy_hotel
 * @description: data frame of response
 * @author: panyue
 * @date: 2022/9/21
 **/
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
        response.setContent(content);
        response.setSuccess(true);
        return response;
    }

    public static <T> ResponseVO<T> buildFailure(String message) {
        ResponseVO<T> response = new ResponseVO<T>();
        response.setSuccess(false);
        response.setMessage(message);
        System.out.println(message);
        return response;
    }

    public boolean getSuccess() {
        return success;
    }

    public void setSuccess(boolean success) {
        this.success = success;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Object getContent() {
        return content;
    }

    public void setContent(T content) {
        this.content = content;
    }

}
