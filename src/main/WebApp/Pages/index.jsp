<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Form</title>
   <style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: linear-gradient(to bottom right, #fef9e7, #fce4ec); /* light cream to soft pink */
        text-align: center;
        padding: 50px;
    }

    h1 {
        font-size: 36px;
        color: #6a1b9a; /* deep purple */
        margin-bottom: 30px;
    }

    form {
        display: inline-block;
        padding: 30px;
        background: #ffffff;
        border-radius: 15px;
        box-shadow: 0 8px 24px rgba(0, 0, 0, 0.1);
        text-align: left;
    }

    label {
        display: block;
        margin: 15px 0 5px 0;
        font-weight: bold;
        color: #6a1b9a; /* deep purple */
    }

    input[type="text"] {
        width: 250px;
        padding: 10px;
        margin-bottom: 20px;
        border-radius: 8px;
        border: 1px solid #ce93d8; /* light purple */
        transition: border-color 0.3s, box-shadow 0.3s;
    }

    input[type="text"]:focus {
        border-color: #ab47bc; /* mid purple */
        box-shadow: 0 0 8px rgba(171, 71, 188, 0.3);
        outline: none;
    }

    button {
        display: block;
        width: 100%;
        padding: 12px 24px;
        background: linear-gradient(135deg, #8e24aa, #ba68c8); /* purple shades */
        color: white;
        border: none;
        border-radius: 10px;
        font-size: 18px;
        cursor: pointer;
        margin-top: 10px;
        transition: background 0.3s;
    }

    button:hover {
        background: linear-gradient(135deg, #6a1b9a, #9c27b0); /* darker purple hover */
    }

    .view-button {
        display: inline-block;
        margin-top: 20px;
        padding: 12px 26px;
        background: linear-gradient(135deg, #ffb74d, #f57c00); /* warm orange gradient */
        color: white;
        border-radius: 10px;
        text-decoration: none;
        font-size: 16px;
        transition: background 0.3s ease;
    }

    .view-button:hover {
        background: linear-gradient(135deg, #f57c00, #ef6c00); /* darker orange hover */
    }
</style>

</head>
<body>
    <h1>Student Registration Form</h1>

    <form method="post" action="submit">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" required />
        
        <label for="Year">Year:</label>
        <input type="text" id="Year" name="Year" required />
      

        <label for="grade">Grade:</label>
        <input type="text" id="grade" name="grade" required />
       

        <label for="department">Department:</label>
        <input type="text" id="department" name="department" required />

        <button type="submit">Submit</button>
    </form>

    <br>
    <a href="/students" class="view-button">View Students</a>
</body>
</html>
    