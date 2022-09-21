package com.pyyybf.comfyhotel.bl.blImpl;

import com.pyyybf.comfyhotel.bl.UserService;
import com.pyyybf.comfyhotel.dao.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @program: comfy_hotel
 * @description: implement of user service
 * @author: panyue
 * @date: 2022/9/21
 **/
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    UserRepository userRepository;

}
