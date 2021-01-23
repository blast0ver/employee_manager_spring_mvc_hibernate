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
        <th>Operations</th>
    </tr>

    <c:forEach var="emp" items="${allEmps}">

        <c:url var="updButton" value="/update_employee">
            <c:param name="empId" value="${emp.employeeId}"/>
        </c:url>

        <c:url var="delButton" value="/delete_employee">
            <c:param name="empId" value="${emp.employeeId}"/>
        </c:url>

        <tr>
            <td>${emp.employeeName}</td>
            <td>${emp.employeeSurname}</td>
            <td>${emp.employeeEmail}</td>
            <td>${emp.employeeDepartment}</td>
            <td>${emp.employeeSalary}</td>

            <td>
                <input type="button"
                        value="Update"
                        onclick="window.location.href = '${updButton}'"/>

                <input type="button"
                        value="Delete"
                        onclick="window.location.href = '${delButton}'"/>
            </td>
        </tr>

    </c:forEach>

</table>

<br>

<input type="button"
        value="Add employee"
        onclick="window.location.href = 'add_new_employee'">

</body>

</html>