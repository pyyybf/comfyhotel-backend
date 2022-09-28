package com.pyyybf.comfyhotel.bl;

import com.pyyybf.comfyhotel.po.Hotel;

import java.util.List;

/**
 * @program: comfy_hotel
 * @description: hotel service interface
 * @author: panyue
 * @date: 2022/9/20
 **/
public interface HotelService {

    /**
     * get 2 hotels with most reservations in the last month
     *
     * @return: java.util.List<com.pyyybf.comfyhotel.po.HotelBrief>
     **/
    List<Hotel> getTop2HotelByReservationNum();

}
