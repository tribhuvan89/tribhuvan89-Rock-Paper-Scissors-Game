<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Game Result</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(135deg, #4facfe, #00f2fe);
            color: #333;
            text-align: center;
        }
        header {
            padding: 20px;
            font-size: 36px;
            font-weight: bold;
            color: #fff;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
        }
        .result-container {
            margin: 50px auto;
            max-width: 500px;
            background: #ffffff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
        }
        h1 {
            font-size: 28px;
            color: #444;
        }
        .choices {
            font-size: 20px;
            margin: 10px 0;
        }
        .result {
            font-size: 24px;
            font-weight: bold;
            color: #4caf50;
            margin-top: 20px;
        }
        .result.lose {
            color: #f44336;
        }
        a {
            display: inline-block;
            margin-top: 20px;
            text-decoration: none;
            background-color: #4facfe;
            color: #fff;
            padding: 10px 20px;
            border-radius: 5px;
            font-weight: bold;
            text-transform: uppercase;
            transition: background-color 0.3s ease;
        }
        a:hover {
            background-color: #0078ff;
        }
    </style>
</head>
<body>
    <header>Rock-Paper-Scissors Result</header>
    <div class="result-container">
        <h1>Game Over!</h1>
        <p class="choices">Your choice: <b><%= request.getAttribute("playerChoice") %></b></p>
        <p class="choices">Server's choice: <b><%= request.getAttribute("serverChoice") %></b></p>
        <div class="result <%= request.getAttribute("result").equals("You lose!") ? "lose" : "" %>">
            <%= request.getAttribute("result") %>
        </div>
        <a href="index.jsp">Play Again</a>
    </div>
</body>
</html>
