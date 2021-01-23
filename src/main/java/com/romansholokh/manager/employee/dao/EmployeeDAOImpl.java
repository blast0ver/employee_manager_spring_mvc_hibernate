package com.romansholokh.manager.employee.dao;

import com.romansholokh.manager.employee.entity.Employee;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class EmployeeDAOImpl implements EmployeeDAO
{
    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<Employee> getAllEmployees()
    {
        Session session = sessionFactory.getCurrentSession();

        List<Employee> allEmployees = session.
                createQuery("from Employee ", Employee.class).
                getResultList();

        return allEmployees;
    }

    @Override
    public void saveOrUpdateEmployee(Employee employee)
    {
        Session session = sessionFactory.getCurrentSession();

        session.saveOrUpdate(employee);
    }

    @Override
    public Employee getEmployee(int employeeId)
    {
        Session session = sessionFactory.getCurrentSession();

        Employee employee = session.get(Employee.class, employeeId);

        return employee;
    }

    @Override
    public void deleteEmployee(int employeeId)
    {
        Session session = sessionFactory.getCurrentSession();

        Query<Employee> query = session.createQuery("delete from Employee " +
                "where employeeId =: empId");

        query.setParameter("empId", employeeId);

        query.executeUpdate();
    }
}
