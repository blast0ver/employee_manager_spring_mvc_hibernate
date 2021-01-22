package com.romansholokh.manager.employee.dao;

import com.romansholokh.manager.employee.entity.Employee;

import java.util.List;

public interface EmployeeDAO
{
    public List<Employee> getAllEmployees();

    public void saveOrUpdateEmployee(Employee employee);

    public Employee getEmployee(int employeeId);
}
