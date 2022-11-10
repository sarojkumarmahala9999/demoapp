package com.flight.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.flight.entities.Reservation;

public interface ReservationRepository extends JpaRepository<Reservation, Long> {

}
