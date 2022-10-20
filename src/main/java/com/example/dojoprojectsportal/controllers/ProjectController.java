package com.example.dojoprojectsportal.controllers;




import com.example.dojoprojectsportal.models.Project;
import com.example.dojoprojectsportal.models.User;
import com.example.dojoprojectsportal.services.ProjectService;
import com.example.dojoprojectsportal.services.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;


import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.util.List;

@Controller
public class ProjectController {

    private final ProjectService projectService;
    private final UserService userService;

    public ProjectController(ProjectService ProjectService, UserService userService) {
        this.projectService = ProjectService;
        this.userService = userService;
    }

    //! CREATE
    @GetMapping("/projects/new")
    public String newProject(@ModelAttribute("project") Project project, Model model, HttpSession session){
        Long id = (Long) session.getAttribute("userId");
        User user = userService.findById(id);
        model.addAttribute("user", user);
        return "projects/Projects.jsp";
    }

    @PostMapping("/projects")
    public String createProject(@Valid @ModelAttribute("project")Project project, BindingResult result){
        if(result.hasErrors()){
            return "projects/Projects.jsp";
        } else {
            projectService.create(project);
            return "redirect:/projects";
        }
    }

    //! READ ALL
    @GetMapping("/projects")
    public String allProjects(Model model){
        List<Project> projects = projectService.getAll();
        model.addAttribute("projects", projects);
        return "projects/index.jsp";

    }

    //!READ ONE

    @GetMapping("/projects/{id}")
    public String show(HttpSession session, Model model, @PathVariable("id")Long id){
        Project project = projectService.getOne(id);
        model.addAttribute("project", project);

        Long userId = (Long) session.getAttribute("userId");
        User user = userService.findById(userId);
        model.addAttribute("user", user);
        return "projects/show.jsp";
    }

    //! EDIT

    @GetMapping("/projects/edit/{id}")
    public String editProject(@PathVariable("id")Long id, Model model){
        Project project = projectService.getOne(id);
        model.addAttribute("project", project);
        return "projects/edit.jsp";
    }

    @PutMapping("/projects/{id}")
    public String updateProject(@Valid @ModelAttribute("project")Project project, BindingResult result){
        if(result.hasErrors()){
            return "projects/edit.jsp";
        } else {
            projectService.update(project);
            return "redirect:/projects";
        }
    }

    @DeleteMapping("/projects/destroy/{id}")
    public String destroy(@PathVariable("id")Long id){
        projectService.destroy(projectService.getOne(id));
        return "redirect:/projects";
    }


}
