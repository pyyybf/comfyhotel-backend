package com.pyyybf.comfyhotel.vo;

import com.pyyybf.comfyhotel.exception.UserException;
import com.pyyybf.comfyhotel.po.User;
import io.swagger.annotations.ApiModel;
import lombok.Getter;
import lombok.Setter;
import org.springframework.beans.BeanUtils;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/**
 * @program: comfy_hotel
 * @description: user entity registered or returned when login
 * @author: panyue
 * @date: 2022/9/21
 **/
@Getter
@Setter
@ApiModel(value = "user login return information", description = "user login return information")
public class UserVO implements UserDetails {

    private Long userId;
    private String email;
    private String password;
    private String firstName;
    private String lastName;
    private String avatar;

    public static UserVO userPO2VO(User user) {
        UserVO userVO = new UserVO();
        if (user == null) {
            throw new UserException(3, "Internal check error.");
        }
        BeanUtils.copyProperties(user, userVO);
        return userVO;
    }

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        List<GrantedAuthority> auths = new ArrayList<>();
        auths.add(this::getUsername);
        return auths;
    }

    @Override
    public String getPassword() {
        return this.password;
    }

    @Override
    public String getUsername() {
        return this.email;
    }

    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return true;
    }

}
