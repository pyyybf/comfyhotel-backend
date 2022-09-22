package com.pyyybf.comfyhotel.bl.blImpl;

import com.pyyybf.comfyhotel.bl.UserService;
import com.pyyybf.comfyhotel.dao.UserRepository;
import com.pyyybf.comfyhotel.exception.UserException;
import com.pyyybf.comfyhotel.po.User;
import com.pyyybf.comfyhotel.vo.UserLoginVO;
import com.pyyybf.comfyhotel.vo.UserRegisterVO;
import com.pyyybf.comfyhotel.vo.UserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
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
    PasswordEncoder passwordEncoder;

    @Autowired
    UserRepository userRepository;

    @Override
    public UserVO login(UserLoginVO userLoginVO) {
        User user = userRepository.findByEmail(userLoginVO.getEmail());
        if (user == null) {
            throw new UserException(1, "Your email doesn't exist.");
        }
        if (!passwordEncoder.matches(userLoginVO.getPassword(), user.getPassword())) {
            throw new UserException(2, "Your password is incorrect.");
        }
        return UserVO.userPO2VO(user);
    }

    @Override
    public Long register(UserRegisterVO userRegisterVO) {
        User user = User.userVO2PO(userRegisterVO);
        user.setPassword(passwordEncoder.encode(user.getPassword()));  // encode password
        user.setCredit(100);  // initial credit score
        try {
            userRepository.save(user);
        } catch (Exception e) {
            e.printStackTrace();
            throw new UserException(4, "An account already exists with this email.");
        }
        return user.getUserId();
    }

}
