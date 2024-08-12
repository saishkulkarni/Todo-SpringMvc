<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f2f5;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            background-color: white;
            padding: 2rem;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 400px;
        }
        h1 {
            color: #1877f2;
            text-align: center;
            margin-bottom: 1.5rem;
        }
        h2 {
            text-align: center;
            margin-bottom: 1rem;
        }
        form {
            display: flex;
            flex-direction: column;
        }
        fieldset {
            border: none;
            padding: 0;
            margin: 0;
        }
        legend {
            font-weight: bold;
            margin-bottom: 1rem;
        }
        .form-group {
            margin-bottom: 1rem;
        }
        label {
            display: block;
            margin-bottom: 0.5rem;
            font-weight: bold;
        }
        input[type="email"],
        input[type="password"] {
            width: 100%;
            padding: 0.5rem;
            border: 1px solid #ddd;
            border-radius: 4px;
            font-size: 1rem;
        }
        .error {
            color: red;
            font-size: 0.8rem;
            margin-top: 0.25rem;
        }
        .buttons {
            display: flex;
            justify-content: space-between;
            margin-top: 1rem;
        }
        button {
            background-color: #1877f2;
            color: white;
            border: none;
            padding: 0.5rem 1rem;
            border-radius: 4px;
            cursor: pointer;
            font-size: 1rem;
        }
        button[type="reset"] {
            background-color: #e4e6eb;
            color: #050505;
        }
        .signup-link {
            text-align: center;
            margin-top: 1rem;
        }
        .signup-link button {
            background-color: #42b72a;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2 style="color:red">${fail}</h2>
        <h1>Todo Login</h1>
        <h2 style="color:green">${pass}</h2>
        <form action="login" method="post">
            <fieldset>
                <legend>Login here</legend>
                <div class="form-group">
                    <label for="email">Email:</label>
                    <input type="email" id="email" name="email" required>
                    <div class="error">${email}</div>
                </div>
                <div class="form-group">
                    <label for="password">Password:</label>
                    <input type="password" id="password" name="password" required>
                    <div class="error">${password}</div>
                </div>
                <div class="buttons">
                    <button type="submit">Login</button>
                    <button type="reset">Cancel</button>
                </div>
            </fieldset>
        </form>
        <div class="signup-link">
            <a href="signup"><button type="button">Create New Account</button></a>
        </div>
    </div>
</body>
</html>
