package com.pyyybf.comfyhotel.dao;

import com.pyyybf.comfyhotel.po.User;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * @program: comfy_hotel
 * @description: jpa repository of user
 * @author: panyue
 * @date: 2022/9/21
 **/
public interface UserRepository extends JpaRepository<User, Long> {

    /**
     * find user by email
     *
     * @param email
     * @return: com.pyyybf.comfyhotel.po.User
     **/
    User findByEmail(String email);

}
