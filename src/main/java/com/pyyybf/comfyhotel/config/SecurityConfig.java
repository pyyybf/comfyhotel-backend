package com.pyyybf.comfyhotel.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

/**
 * @program: comfy_hotel
 * @description: Spring Security configuration
 * @author: panyue
 * @date: 2022/9/21
 **/
@Configuration
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @Override
    public void configure(WebSecurity web) throws Exception {
        // static resources do not need auth
        web.ignoring().antMatchers("/static/**");
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        // 拦截所有的请求
        http.authorizeRequests()
                // every one can sign in/up
                .antMatchers("/api/user/login", "/api/user/register").permitAll()
                // any request need auth
                .anyRequest().authenticated()
                .and()
                .csrf().disable();
    }

}