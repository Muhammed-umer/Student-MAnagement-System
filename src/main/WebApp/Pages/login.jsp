<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <style>
    body {
        background: linear-gradient(to bottom right, #fef6e4, #e0f7fa); /* soft cream to aqua */
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        text-align: center;
        padding: 80px;
    }
	.h1{
		text-align:center;
	}
    h1 {
        color: #3f51b5;
        font-size: 36px;
        margin-bottom: 40px;
    }

    form {
        display: inline-block;
        padding: 30px 40px;
        background: #ffffff;
        border-radius: 15px;
        box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
        text-align: center;
    }

    input[type="text"],
    input[type="password"] {
        width: 250px;
        padding: 12px;
        margin: 12px 0;
        border: 1px solid #c5cae9; /* light indigo border */
        border-radius: 8px;
        transition: border-color 0.3s, box-shadow 0.3s;
    }

    input[type="text"]:focus,
    input[type="password"]:focus {
        border-color: #7986cb; /* muted indigo */
        box-shadow: 0 0 8px rgba(121, 134, 203, 0.3);
        outline: none;
    }

    button {
        width: 100%;
        padding: 12px;
        background: linear-gradient(135deg, #f48fb1, #ce93d8); /* pink to purple */
        color: white;
        border: none;
        border-radius: 10px;
        font-size: 18px;
        cursor: pointer;
        transition: background 0.3s;
        margin-top: 10px;
    }

    button:hover {
        background: linear-gradient(135deg, #f06292, #ba68c8); /* darker pink-purple hover */
    }
</style>

</head>
<body>
	<h1 class="h1">Student Management Form</h1>
    <h1>Login Page</h1>

    <form method="post" action="/login">
        <input type="text" name="username" placeholder="Username" required /><br>
        <input type="password" name="password" placeholder="Password" required /><br>
        <button type="submit">Login</button>
    </form>

</body>
</html>
