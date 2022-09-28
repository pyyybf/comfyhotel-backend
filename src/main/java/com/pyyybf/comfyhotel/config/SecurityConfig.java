package com.pyyybf.comfyhotel.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.cors.CorsConfiguration;
import org.springframework.web.cors.UrlBasedCorsConfigurationSource;
import org.springframework.web.filter.CorsFilter;

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
        // permit swagger
        web.ignoring().antMatchers("/swagger-resources/**", "/webjars/**", "/v2/**", "/swagger-ui.html/**");
        // static resources
        web.ignoring().antMatchers("/static/**");
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.cors()
                .and()
                // block all requests
                .authorizeRequests()
                // every one can sign in/up
                .antMatchers("/api/user/login", "/api/user/register", "/api/user/logout").permitAll()
                // any other request need auth
                .anyRequest().authenticated()
                .and()
                .csrf().disable();
        http.addFilter(corsFilter());
    }

    @Bean
    public CorsFilter corsFilter() {
        UrlBasedCorsConfigurationSource source = new UrlBasedCorsConfigurationSource();
        CorsConfiguration config = new CorsConfiguration();
        config.setAllowCredentials(true);
        config.addAllowedOrigin("http://localhost:8080");  // dev
        // prod
        config.addAllowedOrigin("http://35.92.191.64:8080");
        config.addAllowedOrigin("http://ec2-35-92-191-64.us-west-2.compute.amazonaws.com");
        config.addAllowedHeader(CorsConfiguration.ALL);
        config.addAllowedMethod(CorsConfiguration.ALL);
        source.registerCorsConfiguration("/**", config);
        return new CorsFilter(source);
    }

}
