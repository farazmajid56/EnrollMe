package com.se.enrollme.service;

import java.util.Arrays;
import java.util.List;

import com.se.enrollme.dto.UserDto;
import com.se.enrollme.model.User;
import com.se.enrollme.repository.RoleRepository;
import com.se.enrollme.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.se.enrollme.model.Registration;
import com.se.enrollme.model.Role;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserRepository userRepository;
    @Autowired
    private RoleRepository roleRepository;
    @Autowired
    private PasswordEncoder passwordEncoder;

    @Autowired
    private RegistrationService registrationService;

    @Override
    public void saveUser(UserDto userDto) {
        
        User user = new User();
        user.setName(userDto.getName());
        user.setEmail(userDto.getEmail());
        user.setPassword(passwordEncoder.encode(userDto.getPassword()));
        user.setBatch(userDto.getBatch());
        user.setDegree(userDto.getDegree());
        user.setCGPA(userDto.getCGPA());
        user.setDOB(userDto.getDOB());
        user.setPostalAddress(userDto.getPostalAddress());
        user.setEmployeeId(userDto.getEmployeeId());
        user.setDesignation(userDto.getDesignation());
        user.setRollNumber(userDto.getRollNumber());

        Role role = roleRepository.findByName(userDto.getRole());
        if(role == null){
            role = checkRoleExist(userDto.getRole());
        }
        user.setRoles(Arrays.asList(role));
        userRepository.save(user);
    }

    @Override
    public User findUserByEmail(String email) {
        return userRepository.findByEmail(email);
    }

    @Override
    public List<User> findAllUsers() {
        List<User> users = userRepository.findAll();
        return users;
    }

    @Override
    public void deleteUser(Long id) {
       User user = userRepository.findById(id).orElseThrow();
       if(user.getRollNumber()!=null) {
           List<Registration> registrations = user.getRegistration();
           for (Registration reg:registrations) {
                registrationService.deleteRegistration(reg.getId());
           }
       }
       user.setRoles(null);
       userRepository.deleteById(id);
    }


    private Role checkRoleExist(String roleName){
        Role role = new Role();
        role.setName(roleName);
        return roleRepository.save(role);
    }

    public User findByRollNo(String rollNo) {
       return userRepository.findByRollNumber(rollNo);
    }

    public User findByEmployeeId(Long id) {
        return userRepository.findByEmployeeId(id);
    }

    private UserDto mapToUserDto(User user){
        UserDto userDto = new UserDto();
        String[] str = user.getName().split(" ");
        userDto.setName(str[0]);
        userDto.setEmail(user.getEmail());
        return userDto;
    }


}