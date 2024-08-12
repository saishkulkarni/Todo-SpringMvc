<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="spring" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Todo Home</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
            display: flex;
            justify-content: center;
        }
        .container {
            background-color: #ffffff;
            padding: 2rem;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 800px;
        }
        h1, h2 {
            text-align: center;
            color: #333;
        }
        h2 {
            color: green;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #f2f2f2;
            font-weight: bold;
        }
        button {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 8px 12px;
            border-radius: 4px;
            cursor: pointer;
            font-size: 14px;
            transition: background-color 0.3s;
        }
        button:hover {
            background-color: #45a049;
        }
        .delete-btn {
            background-color: #f44336;
        }
        .delete-btn:hover {
            background-color: #da190b;
        }
        .edit-btn {
            background-color: #2196F3;
        }
        .edit-btn:hover {
            background-color: #0b7dda;
        }
        .action-buttons {
            display: flex;
            justify-content: space-between;
            margin-top: 20px;
        }
        .action-buttons a {
            text-decoration: none;
        }
        .logout-btn {
            background-color: #555;
        }
        .logout-btn:hover {
            background-color: #333;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>${pass}</h2>
        <h1>Todo Home</h1>
        <table>
            <thead>
                <tr>
                    <th>Task Name</th>
                    <th>Task Description</th>
                    <th>Date Created</th>
                    <th>Status</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <spring:forEach var="task" items="${list}">
                    <tr>
                        <td>${task.name}</td>
                        <td>${task.description}</td>
                        <td>${task.createdTime.format(DateTimeFormatter.ofPattern('dd-MM-YYYY hh:mm'))}</td>
                        <td>
                            <spring:if test="${task.status}">
                                Completed
                            </spring:if>
                            <spring:if test="${!task.status}">
                                <a href="change-status?id=${task.id}"><button>Complete</button></a>
                            </spring:if>
                        </td>
                        <td>
                            <a href="delete?id=${task.id}"><button class="delete-btn">Delete</button></a>
                            <a href="edit?id=${task.id}"><button class="edit-btn">Edit</button></a>
                        </td>
                    </tr>
                </spring:forEach>
            </tbody>
        </table>
        <div class="action-buttons">
            <a href="add-task"><button>Add Task</button></a>
            <a href="logout"><button class="logout-btn">Logout</button></a>
        </div>
    </div>
</body>
</html>
