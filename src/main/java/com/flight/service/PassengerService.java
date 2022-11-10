package com.flight.service;

import com.flight.controller.dto.ReservationRequest;
import com.flight.entities.Reservation;

public interface PassengerService {

	Reservation bookFlight(ReservationRequest request);

}
