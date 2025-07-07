package com.example.Student.Controller;

import java.util.List;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.example.Student.Model.StudentModel;
import com.example.Student.Repository.StudentRepository;

@Controller
public class StudentController {

    @Autowired
    private StudentRepository repo;

    // ✅ LOGIN PAGE - GET
    @GetMapping("/login")
    public String loginPage() {
        return "login";
    }

    // ✅ LOGIN PAGE - POST
    @PostMapping("/login")
    public String doLogin(HttpServletRequest request) {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        if ("md".equals(username) && "umer".equals(password)) {
            return "index";
        } else if ("user".equals(username) && "user@123".equals(password)) {
            return "index";
        } else {
            request.setAttribute("error", "Invalid username or password");
            return "login";
        }
    }

    // ✅ FORM PAGE
    @GetMapping("/home")
    public String home() {
        return "index";
    }

    // ✅ SUBMIT FORM DATA
    @PostMapping("/submit")
    public String submit(StudentModel student) {
        repo.save(student);
        return "index";
    }

    // ✅ VIEW STUDENTS
    @GetMapping("/students")
    public String viewStudents(HttpServletRequest request) {
        List<StudentModel> students = repo.findAll();
        request.setAttribute("students", students);
        return "view";
    }

    // ✅ SHOW EDIT FORM
    @GetMapping("/edit/{id}")
    public String showEditForm(@PathVariable("id") int id, Model model) {
        StudentModel student = repo.findById(id).orElseThrow(() -> new IllegalArgumentException("Invalid student Id: " + id));
        model.addAttribute("student", student);
        return "edit";  // your edit.jsp file
    }

    // ✅ HANDLE UPDATE
    @PostMapping("/update")
    public String updateStudent(@ModelAttribute("student") StudentModel student) {
        repo.save(student);
        return "redirect:/students";
    }

    // ✅ DELETE STUDENT
    @GetMapping("/delete/{id}")
    public String deleteStudent(@PathVariable("id") int id) {
        repo.deleteById(id);
        return "redirect:/students";
    }
}
