package com.pyyybf.comfyhotel.bl.blImpl;

import com.pyyybf.comfyhotel.bl.HotelService;
import com.pyyybf.comfyhotel.dao.HotelRepository;
import com.pyyybf.comfyhotel.dao.RoomRepository;
import com.pyyybf.comfyhotel.exception.HotelException;
import com.pyyybf.comfyhotel.po.Hotel;
import org.apache.commons.lang3.time.DateFormatUtils;
import org.apache.commons.lang3.time.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * @program: comfy_hotel
 * @description: implement of hotel service interface
 * @author: panyue
 * @date: 2022/9/20
 **/
@Service
public class HotelServiceImpl implements HotelService {

    private static final String DATE_FORMAT = "yyyy-MM-dd";
    private static final String TIME_FORMAT = "yyyy-MM-dd HH:mm:ss";

    private static final String MSG_HOTEL_QUERY_FAIL = "Hotel query failed.";

    @Autowired
    HotelRepository hotelRepository;

    @Autowired
    RoomRepository roomRepository;

    @Override
    public List<Hotel> getTop2HotelByReservationNum() {
        try {
            Date today = new Date();
            String endDate = DateFormatUtils.format(today, DATE_FORMAT);
            String startDate = DateFormatUtils.format(DateUtils.addMonths(today, -1), DATE_FORMAT);
            List<Hotel> hotelList = hotelRepository.getTop2HotelByReservationNum(startDate, endDate);
            for (Hotel hotel : hotelList) {
                hotel.setPrice(roomRepository.getMinPriceByHotelId(hotel.getHotelId()));
            }
            return hotelList;
        } catch (Exception e) {
            e.printStackTrace();
            throw new HotelException(1, MSG_HOTEL_QUERY_FAIL);
        }
    }
}
