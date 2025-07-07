<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Students</title>
    <style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: linear-gradient(to bottom right, #fdf6ec, #e7f0fd); /* warm beige to light blue */
        padding: 40px;
        text-align: center;
    }

    h1 {
        font-size: 36px;
        color: #3f51b5; /* indigo */
        margin-bottom: 30px;
    }

    table {
        width: 85%;
        margin: auto;
        border-collapse: collapse;
        background-color: #ffffff;
        border-radius: 10px;
        overflow: hidden;
        box-shadow: 0 8px 24px rgba(0, 0, 0, 0.1);
    }

    th, td {
        padding: 14px;
        font-size: 16px;
    }

    th {
        background: linear-gradient(135deg, #5c6bc0, #7986cb); /* cool purple gradient */
        color: white;
    }

    tr:nth-child(even) {
        background-color: #f4f6fa; /* soft bluish-grey */
    }

    tr:hover {
        background-color: #e3eaf9; /* light blue hover */
    }

    a.button, a.action-btn {
        display: inline-block;
        padding: 8px 16px;
        background: linear-gradient(135deg, #9575cd, #64b5f6); /* violet to sky blue */
        color: white;
        text-decoration: none;
        border-radius: 8px;
        transition: background 0.3s ease;
        font-size: 14px;
    }

    a.action-btn:hover {
        background: linear-gradient(135deg, #7e57c2, #42a5f5); /* darker purple-blue on hover */
    }

    a.button {
        margin-top: 30px;
        padding: 12px 26px;
        background: linear-gradient(135deg, #ffb74d, #f57c00); /* orange gradient */
        font-size: 16px;
    }

    a.button:hover {
        background: linear-gradient(135deg, #ffa726, #ef6c00); /* deeper orange hover */
    }
</style>

</head>
<body>
    <h1>Student Records</h1>

    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Year</th>
                <th>Grade</th>
                <th>Department</th>
                <th>Edit</th>
                <th>Delete</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="student" items="${students}">
                <tr>
                    <td>${student.id}</td>
                    <td>${student.name}</td>
                    <td>${student.year}</td> 
                    <td>${student.grade}</td>
                    <td>${student.department}</td>
                    <td><a class="action-btn" href="/edit/${student.id}">Edit</a></td>
                    <td><a class="action-btn" href="/delete/${student.id}" onclick="return confirm('Are you sure you want to delete this student?');">Delete</a></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

    <a href="/login" class="button">Log Out</a>
</body>
</html>
