package com.example.dojoprojectsportal.repositories;

import com.example.dojoprojectsportal.models.Project;
import org.springframework.data.repository.CrudRepository;

public interface ProjectRepository extends CrudRepository<Project, Long> {
}
