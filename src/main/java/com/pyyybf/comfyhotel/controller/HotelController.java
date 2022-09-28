package com.pyyybf.comfyhotel.controller;

import com.pyyybf.comfyhotel.bl.HotelService;
import com.pyyybf.comfyhotel.vo.ResponseVO;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
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
@Api(tags = "HotelController", description = "Hotel Information Controller")
public class HotelController {

    @Autowired
    HotelService hotelService;

    @ApiOperation("get 2 hotels with most reservations in the last month")
    @GetMapping("/getTop2HotelByReservationNum")
    public ResponseVO getTop2HotelByReservationNum() {
        return ResponseVO.buildSuccess(hotelService.getTop2HotelByReservationNum());
    }

}
