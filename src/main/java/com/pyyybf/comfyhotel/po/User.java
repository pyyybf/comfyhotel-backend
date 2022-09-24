package com.pyyybf.comfyhotel.po;

import com.pyyybf.comfyhotel.exception.UserException;
import com.pyyybf.comfyhotel.vo.UserRegisterVO;
import lombok.Data;
import org.springframework.beans.BeanUtils;

import javax.persistence.*;

/**
 * @program: comfy_hotel
 * @description: entity corresponding to table user
 * @author: panyue
 * @date: 2022/9/20
 **/
@Data
@Entity
@Table(name = "user")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "user_id")
    private Long userId;

    @Column(name = "email")
    private String email;

    @Column(name = "username")
    private String username;

    @Column(name = "first_name")
    private String firstName;

    @Column(name = "last_name")
    private String lastName;

    @Column(name = "password")
    private String password;

    @Column(name = "phone")
    private String phone;

    @Column(name = "phone_country_code")
    private String phoneCountryCode;

    @Column(name = "avatar")
    private String avatar;

    @Column(name = "address")
    private String address;

    @Column(name = "city")
    private String city;

    @Column(name = "state")
    private String state;

    @Column(name = "zip_code")
    private String zipCode;

    @Column(name = "credit")
    private Integer credit;

    @Column(name = "hotel_id")
    private Long hotelId;

    @Column(name = "role")
    private String role;

    public static User userVO2PO(UserRegisterVO userRegisterVO) {
        User user = new User();
        if (userRegisterVO == null) {
            throw new UserException(3, "Internal check error.");
        }
        BeanUtils.copyProperties(userRegisterVO, user);
        return user;
    }

}
