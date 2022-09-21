package com.pyyybf.comfyhotel.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import springfox.documentation.builders.ApiInfoBuilder;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.service.Contact;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

/**
 * @program: comfy_hotel
 * @description: configuration of swagger-ui
 * @author: panyue
 * @date: 2022/9/21
 **/
@Configuration
@EnableSwagger2
public class SwaggerConfig {

    @Bean
    public Docket createResApi() {
        return new Docket(DocumentationType.SWAGGER_2)
                .apiInfo(apiInfo())
                .select()
                .apis(RequestHandlerSelectors.basePackage("com.pyyybf.comfyhotel.controller"))
                .paths(PathSelectors.any())
                .build();

    }

    private ApiInfo apiInfo() {
        return new ApiInfoBuilder()
                .title("ComfyHotel API Documentation")
                .contact(new Contact("panyue", "https://github.com/pyyybf", "pyyybf@gmail.com"))
                .description("ComfyHotel is a hotel reservation&management system. This is the back-end api documentation of it.")
                .version("1.0.0")
                .build();
    }

}
