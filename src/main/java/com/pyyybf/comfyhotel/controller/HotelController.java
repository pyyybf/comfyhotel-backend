package com.pyyybf.comfyhotel.controller;

import com.pyyybf.comfyhotel.bl.HotelService;
import io.swagger.annotations.Api;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @program: comfy_hotel
 * @description: controller of hotel
 * @author: panyue
 * @date: 2022/9/21
 **/
@RestController
@RequestMapping("/api/hotel")
@Api(tags = "HotelController", description = "Hotel Controller")
public class HotelController {

    @Autowired
    HotelService hotelService;

}
