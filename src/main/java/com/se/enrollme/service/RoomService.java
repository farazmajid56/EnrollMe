package com.se.enrollme.service;

import java.util.List;

import com.se.enrollme.dto.AddRoomDto;
import com.se.enrollme.repository.RoomRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.se.enrollme.model.Room;

@Service
public class RoomService {

    @Autowired
    private RoomRepository roomRepository;

    public Room findByName(String name) {
       return roomRepository.findByName(name);
    }
    public Room findById(Long id) {return roomRepository.findById(id).orElse(null);}

    public void saveRoom(AddRoomDto roomDto) {
        String name = roomDto.getName();
        if(!name.isEmpty()) {
            Room room = new Room();
            room.setName(roomDto.getName());
            room.setCapacity(roomDto.getCapacity());
            roomRepository.save(room);
        }

    }

    public List<Room> findAllRooms() {
        return roomRepository.findAll();
    }

    public void deleteRoom(Long id) {
        roomRepository.deleteById(id);
    }

}
