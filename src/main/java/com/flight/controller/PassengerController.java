package com.flight.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.flight.controller.dto.ReservationRequest;
import com.flight.entities.Reservation;
import com.flight.service.PassengerService;

@Controller
public class PassengerController {

	@Autowired
	private PassengerService passengerServ;
	
	@RequestMapping("/bookPassenger")
	public String bookOnePassenger(ReservationRequest request, ModelMap model) {
		if(request!=null) {
		Reservation reservation = passengerServ.bookFlight(request);
		model.addAttribute("reservation", reservation);
		return "confirmReservation";
		}else {
			return "showReservation";
		}
	}
}
