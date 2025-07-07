<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Student</title>
    <style>
    	.h1{
		text-align:center;
	}
        body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background: linear-gradient(135deg, #e3f2fd, #e0f2f1); /* light blue to teal */
    text-align: center;
    padding: 50px;
}

h1 {
    color: #00695c; /* teal shade */
    font-size: 36px;
    margin-bottom: 30px;
}

form {
    display: inline-block;
    padding: 30px;
    background: #ffffff;
    border: 2px solid #b2dfdb; /* light teal border */
    border-radius: 15px;
    box-shadow: 0 8px 24px rgba(0, 0, 0, 0.1);
    text-align: left;
}

label {
    display: block;
    margin: 15px 0 5px 0;
    font-weight: bold;
    color: #00695c; /* dark teal */
}

input[type="text"] {
    width: 250px;
    padding: 10px;
    margin-bottom: 20px;
    border-radius: 8px;
    border: 1px solid #80cbc4; /* muted teal */
}

button {
    width: 100%;
    padding: 12px;
    background: linear-gradient(135deg, #26a69a, #ff7043); /* teal to coral */
    color: white;
    border: none;
    border-radius: 10px;
    font-size: 18px;
    cursor: pointer;
    margin-top: 10px;
}

button:hover {
    background: linear-gradient(135deg, #00897b, #f4511e); /* deeper teal to deep coral */
}

    </style>
</head>
<body>
<h1 class="h1">Student Management Form</h1>
    <h1>Edit Student</h1>

    <form method="post" action="/update">
        <input type="hidden" name="id" value="${student.id}"/>
        <label>Name:</label>
        <input type="text" name="name" value="${student.name}" required />

        <label>Year:</label>
        <input type="text" name="year" value="${student.year}" required />

        <label>Grade:</label>
        <input type="text" name="grade" value="${student.grade}" required />

        <label>Department:</label>
        <input type="text" name="department" value="${student.department}" required />

        <button type="submit">Update</button>
    </form>
</body>
</html>
    