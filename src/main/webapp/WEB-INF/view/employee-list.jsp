<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <title>Employee manager</title>
</head>

<body>

<h2>Employee manager</h2>
<br>

<table>
    <tr>
        <th>Name</th>
        <th>Surname</th>
        <th>Email</th>
        <th>Department</th>
        <th>Salary</th>
    </tr>

    <c:forEach var="emp" items="${allEmps}">
        <tr>
            <td>${emp.employeeName}</td>
            <td>${emp.employeeSurname}</td>
            <td>${emp.employeeEmail}</td>
            <td>${emp.employeeDepartment}</td>
            <td>${emp.employeeSalary}</td>
        </tr>
    </c:forEach>

</table>

<br>

<input type="button"
        value="Add employee"
        onclick="window.location.href = 'add_new_employee'">

</body>

</html>