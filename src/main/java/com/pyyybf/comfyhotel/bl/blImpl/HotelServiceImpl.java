package com.pyyybf.comfyhotel.bl.blImpl;

import com.pyyybf.comfyhotel.bl.HotelService;
import com.pyyybf.comfyhotel.dao.HotelRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @program: comfy_hotel
 * @description: implement of hotel service interface
 * @author: panyue
 * @date: 2022/9/20
 **/
@Service
public class HotelServiceImpl implements HotelService {

    @Autowired
    HotelRepository hotelRepository;


}
