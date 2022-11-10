package com.flight.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.flight.controller.dto.ReservationRequest;
import com.flight.entities.Flight;
import com.flight.entities.Passenger;
import com.flight.entities.Reservation;
import com.flight.repository.FlightRepository;
import com.flight.repository.PassengerRepository;
import com.flight.repository.ReservationRepository;

@Service
public class PassengerServiceImpl implements PassengerService {
	
	@Autowired
	private PassengerRepository passengerRepo;
	
	@Autowired
	private FlightRepository flightRepo;

	@Autowired
	private ReservationRepository reservationRepo;
	
	@Override
	public Reservation bookFlight(ReservationRequest request) {
		//dealing with passenger table from dto class
		String firstName = request.getFirstName();
		String lastName = request.getLastName();
		String middleName = request.getMiddleName();
		String email = request.getEmail();
		String phone = request.getPhone();
		
		Passenger passenger = new Passenger();
		passenger.setFirstName(firstName);
		passenger.setLastName(lastName);
		passenger.setMiddleName(middleName);
		passenger.setEmail(email);
		passenger.setPhone(phone);
		
		passengerRepo.save(passenger);
		
		//dealing with Reservation table from dto class
		long flightId = request.getFlightId();
		
		Optional<Flight> findById = flightRepo.findById(flightId);
		Flight flight = findById.get();
		
		Reservation reservation = new Reservation();
		reservation.setFlight(flight);
		reservation.setPassenger(passenger);
		reservation.setCheckedIn(false);
		reservation.setNumberOfBags(0);
		reservationRepo.save(reservation);
		return reservation;
	}

}
