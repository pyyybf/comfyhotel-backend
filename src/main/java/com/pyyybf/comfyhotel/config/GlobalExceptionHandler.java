package com.pyyybf.comfyhotel.config;

import com.pyyybf.comfyhotel.exception.UserException;
import com.pyyybf.comfyhotel.vo.ResponseVO;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @program: comfy_hotel
 * @description: handle the exception in controller
 * @author: panyue
 * @date: 2022/9/21
 **/
@ResponseBody
@ControllerAdvice
public class GlobalExceptionHandler {

    /**
     * 10001 Your email doesn't exist.
     * 10002 Your password is incorrect.
     * 10003 Internal check error.
     * 10004 An account already exists with this information.
     *
     * @param userException
     * @return: com.pyyybf.comfyhotel.vo.ResponseVO
     **/
    @ExceptionHandler
    public ResponseVO handleUserException(UserException userException) {
        return ResponseVO.buildFailure(userException.getMessage(), 10000 + userException.getCode());
    }

}
