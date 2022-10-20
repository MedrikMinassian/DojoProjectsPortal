package com.example.dojoprojectsportal.repositories;

import com.example.dojoprojectsportal.models.User;
import org.springframework.data.repository.CrudRepository;

import java.util.Optional;

public interface UserRepository extends CrudRepository<User, Long> {
    Optional<User> findByEmail(String email);
}
