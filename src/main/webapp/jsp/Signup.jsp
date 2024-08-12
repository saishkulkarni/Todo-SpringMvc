<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Signup</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f2f5;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
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
            color: #333;
        }
        .form-group {
            margin-bottom: 1rem;
        }
        label {
            display: block;
            margin-bottom: 0.5rem;
            color: #333;
        }
        input[type="text"],
        input[type="email"],
        input[type="password"],
        input[type="tel"],
        input[type="date"] {
            width: 100%;
            padding: 0.5rem;
            border: 1px solid #ddd;
            border-radius: 4px;
            font-size: 1rem;
        }
        .radio-group {
            display: flex;
            gap: 1rem;
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
            transition: background-color 0.3s;
        }
        button:hover {
            background-color: #166fe5;
        }
        button[type="reset"] {
            background-color: #e4e6eb;
            color: #050505;
        }
        button[type="reset"]:hover {
            background-color: #d8dadf;
        }
        .login-link {
            text-align: center;
            margin-top: 1rem;
        }
        .login-link button {
            background-color: #42b72a;
        }
        .login-link button:hover {
            background-color: #36a420;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Todo Signup</h1>
        <form action="signup" method="post">
            <fieldset>
                <legend>Signup here</legend>
                <div class="form-group">
                    <label for="name">Name:</label>
                    <input type="text" id="name" name="name" required>
                </div>
                <div class="form-group">
                    <label for="email">Email:</label>
                    <input type="email" id="email" name="email" required>
                    <div class="error">${email}</div>
                </div>
                <div class="form-group">
                    <label for="password">Password:</label>
                    <input type="password" id="password" name="password" required>
                </div>
                <div class="form-group">
                    <label for="mobile">Mobile:</label>
                    <input type="tel" id="mobile" pattern="[0-9]{10}" name="mobile" required>
                </div>
                <div class="form-group">
                    <label for="date">Date of Birth:</label>
                    <input type="date" id="date" name="date" required>
                    <div class="error">${dob}</div>
                </div>
                <div class="form-group">
                    <label>Gender:</label>
                    <div class="radio-group">
                        <label>
                            <input type="radio" name="gender" value="male" required> Male
                        </label>
                        <label>
                            <input type="radio" name="gender" value="female"> Female
                        </label>
                    </div>
                </div>
                <div class="buttons">
                    <button type="submit">Signup</button>
                    <button type="reset">Cancel</button>
                </div>
            </fieldset>
        </form>
        <div class="login-link">
            <a href="login"><button type="button">Already have an Account? Login</button></a>
        </div>
    </div>
</body>
</html>
