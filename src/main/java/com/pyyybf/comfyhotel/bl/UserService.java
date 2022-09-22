package com.pyyybf.comfyhotel.bl;

import com.pyyybf.comfyhotel.exception.UserException;
import com.pyyybf.comfyhotel.vo.UserLoginVO;
import com.pyyybf.comfyhotel.vo.UserVO;

/**
 * @program: comfy_hotel
 * @description: service interface of user
 * @author: panyue
 * @date: 2022/9/21
 **/
public interface UserService {

    /**
     * login function, check the email and password
     *
     * @param userLoginVO
     * @return
     * @throws UserException
     */
    UserVO login(UserLoginVO userLoginVO);
}
