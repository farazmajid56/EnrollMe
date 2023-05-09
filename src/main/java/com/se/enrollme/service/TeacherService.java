package com.se.enrollme.service;

import java.util.List;

import com.se.enrollme.model.User;
import com.se.enrollme.repository.UserRepository;
import com.se.enrollme.dto.AddTeacherDto;
import com.se.enrollme.model.Teacher;
import com.se.enrollme.repository.StaffRepository;
import com.se.enrollme.repository.TeacherRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.se.enrollme.model.Staff;

@Service
public class TeacherService {

    @Autowired
    private TeacherRepository teacherRepository;

    @Autowired
    private StaffRepository staffRepository;

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private UserServiceImpl userService;

    public Teacher findById(Long id) {
       return teacherRepository.findById(id).orElse(null);
    }

    public void saveTeacher(AddTeacherDto teacherDto) {

        Teacher teacher = new Teacher();
        Staff staff = new Staff();
        Staff newStaff = staffRepository.save(staff);
        teacher.setId(newStaff.getId());
        teacher.setName(teacherDto.getName());
        teacher.setDepartment(teacherDto.getDepartment());
        teacherRepository.save(teacher);

    }

    public List<Teacher> findAllTeachers() {
        return teacherRepository.findAll();
    }

    public void deleteTeacher(Long id) {
        User teacher = userRepository.findByEmployeeId(id);
        if(teacher!=null) {
            userService.deleteUser(teacher.getId());
        }
        teacherRepository.deleteById(id);
        staffRepository.deleteById(id);
    }

}
