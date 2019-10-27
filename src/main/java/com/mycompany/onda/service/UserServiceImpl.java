/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.onda.service;

import com.mycompany.onda.model.User;
import com.mycompany.onda.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author mac
 */
public class UserServiceImpl implements UserService{
    
    @Autowired
    private UserRepository userRepository;

    @Override
    public void save(User user) {
        
        userRepository.save(user);

    }

    @Override
    public User findByUsername(String username) {
        return userRepository.findByUsername(username);
    }
    
}
