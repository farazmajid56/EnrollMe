package com.se.enrollme.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.se.enrollme.model.Room;


public interface RoomRepository extends JpaRepository<Room, Long> {
    Room findByName(String name);
}
