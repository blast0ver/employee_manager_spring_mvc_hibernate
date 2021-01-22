package com.romansholokh.manager.employee.controller;

import com.romansholokh.manager.employee.entity.Employee;
import com.romansholokh.manager.employee.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class EmployeeController
{
    @Autowired
    private EmployeeService employeeService;

    @RequestMapping("/employees")
    public String showAllEmployees(Model model)
    {
        List<Employee> allEmployees = employeeService.getAllEmployees();

        model.addAttribute("allEmps", allEmployees);

        return "employee-list";
    }

    @RequestMapping("/add_new_employee")
    public String addNewEmployee(Model model)
    {
        Employee employee = new Employee();

        model.addAttribute("newEmp", employee);

        return "employee-info";
    }

    @RequestMapping("/save_employee")
    public String saveEmployee(@ModelAttribute("newEmp") Employee employee)
    {
        employeeService.saveOrUpdateEmployee(employee);

        return "redirect:/employees";
    }

}
