<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>

<head>
    <title>Add new employee</title>
</head>

<body>

<h2>Add new employee</h2>

<br>

<form:form action="save_employee" modelAttribute="emp">

    <form:hidden path="employeeId"/>

    <table>

        <tr>
            <td>Name</td>
            <td><form:input path="employeeName"/></td>
        </tr>
        <tr>
            <td>Surname</td>
            <td><form:input path="employeeSurname"/></td>
        </tr>
        <tr>
            <td>Email</td>
            <td><form:input path="employeeEmail"/></td>
        </tr>
        <tr>
            <td>Department</td>
            <td><form:input path="employeeDepartment"/></td>
        </tr>
        <tr>
            <td>Salary</td>
            <td><form:input path="employeeSalary"/></td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" value="Save"></td>
        </tr>
    </table>

</form:form>

<a href="employees">Back</a>

</body>

</html>