package com.example.dojoprojectsportal.services;

import com.example.dojoprojectsportal.models.Project;
import com.example.dojoprojectsportal.repositories.ProjectRepository;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
@Service
public class ProjectService {
   

        private final ProjectRepository projectRepository;

        public ProjectService(ProjectRepository projectRepository) {
            this.projectRepository = projectRepository;
        }


        public void create(Project project) {
            projectRepository.save(project);
        }

        public List<Project> getAll() {
            return (List<Project>) projectRepository.findAll();
        }

        public Project getOne(Long id) {
            Optional<Project> project = projectRepository.findById(id);
            return project.orElse(null);
        }

        public void update(Project project) {
            projectRepository.save(project);
        }

        public void destroy(Project project) {
            projectRepository.delete(project);
        }
    }
