package com.pyyybf.comfyhotel.bl;

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
     * @return: com.pyyybf.comfyhotel.vo.UserVO
     **/
    UserVO login(UserLoginVO userLoginVO);

    /**
     * register function, add new user
     *
     * @param userVO
     * @return: java.lang.Long
     **/
    Long register(UserVO userVO);
}
