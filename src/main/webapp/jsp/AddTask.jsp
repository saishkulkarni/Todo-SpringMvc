<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Task</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            background-color: #ffffff;
            padding: 2rem;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 400px;
        }
        h1 {
            color: #333;
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
            color: #555;
        }
        .form-group {
            margin-bottom: 1rem;
        }
        label {
            display: block;
            margin-bottom: 0.5rem;
            color: #555;
        }
        input[type="text"] {
            width: 100%;
            padding: 0.5rem;
            border: 1px solid #ddd;
            border-radius: 4px;
            font-size: 1rem;
        }
        .buttons {
            display: flex;
            justify-content: space-between;
            margin-top: 1rem;
        }
        button {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 0.5rem 1rem;
            border-radius: 4px;
            cursor: pointer;
            font-size: 1rem;
            transition: background-color 0.3s;
        }
        button:hover {
            background-color: #45a049;
        }
        button[type="reset"] {
            background-color: #f44336;
        }
        button[type="reset"]:hover {
            background-color: #da190b;
        }
        .back-button {
            text-align: center;
            margin-top: 1rem;
        }
        .back-button button {
            background-color: #2196F3;
        }
        .back-button button:hover {
            background-color: #0b7dda;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Add Task</h1>
        <form action="add-task" method="post">
            <fieldset>
                <legend>Enter Task Details</legend>
                <div class="form-group">
                    <label for="name">Task Name:</label>
                    <input type="text" id="name" name="name" required>
                </div>
                <div class="form-group">
                    <label for="description">Task Description:</label>
                    <input type="text" id="description" name="description" required>
                </div>
                <div class="buttons">
                    <button type="submit">Add</button>
                    <button type="reset">Cancel</button>
                </div>
            </fieldset>
        </form>
        <div class="back-button">
            <a href="home"><button type="button">Back</button></a>
        </div>
    </div>
</body>
</html>
