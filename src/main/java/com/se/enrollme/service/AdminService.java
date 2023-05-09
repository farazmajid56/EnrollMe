package com.se.enrollme.service;

import com.se.enrollme.dto.AddAdminDto;
import com.se.enrollme.model.Admin;
import com.se.enrollme.model.Staff;
import com.se.enrollme.model.User;
import com.se.enrollme.repository.AdminRepository;
import com.se.enrollme.repository.StaffRepository;
import com.se.enrollme.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AdminService {

    @Autowired
    private AdminRepository adminRepository;

    @Autowired
    private StaffRepository staffRepository;

    @Autowired
    private UserRepository userRepository;

    public List<Admin> fetchAll() {
        return adminRepository.findAll();
    }

    public Admin findById(Long id) {
        return adminRepository.findById(id).orElse(null);
    }

    public boolean saveAdmin(AddAdminDto addAdminDto) {
        Admin admin = new Admin();
        Staff staff = new Staff();
        Staff newStaff = staffRepository.save(staff);
        admin.setId(newStaff.getId());
        admin.setName(addAdminDto.getName());
        adminRepository.save(admin);
        return true;
    }

    public void deleteAdmin(Long id) {
        adminRepository.deleteById(id);
        staffRepository.deleteById(id);
        User teacher = userRepository.findByEmployeeId(id);
        userRepository.deleteById(teacher.getId());
    }
}
