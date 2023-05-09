package com.se.enrollme.service;

import com.se.enrollme.repository.StaffRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.se.enrollme.model.Staff;


@Service
public class StaffService {

    @Autowired
    private StaffRepository staffRepository;

    public Staff findById(Long id) {
        return staffRepository.findById(id).orElse(null);
    }


}
