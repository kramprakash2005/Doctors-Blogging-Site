<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Doctor's Blog - Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Arial', sans-serif;
            background-color: #f7f3e9;
            height: 100vh;
        }
        .container-fluid {
            display: flex;
            height: 100%;
        }
        .right-panel {
            flex: 1;
            background: linear-gradient(to bottom right, #fad0c4, #ff9a9e);
            color: white;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            text-align: center;
            padding: 20px;
        }
        .left-panel {
            flex: 1;
            background: linear-gradient(to bottom right, #fdfbfb, #ebedee);
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            padding: 40px;
            box-shadow: -5px 0 10px rgba(0, 0, 0, 0.1);
        }
        .form-container {
            width: 100%;
            max-width: 400px;
        }
        .form-container h2 {
            font-size: 2rem;
            color: #555;
            margin-bottom: 20px;
            text-align: center;
        }
        .form-container input, .form-container button {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border-radius: 5px;
        }
        .form-container input {
            border: 1px solid #ddd;
        }
        .form-container button {
            background: #ff9a9e;
            color: white;
            border: none;
            cursor: pointer;
        }
        .footer-link {
            text-align: center;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <div class="container-fluid">
        <div class="left-panel">
            <div class="form-container">
                <form action="Login" method="post">
                    <h2>Login</h2>
                    <input type="text" id="username" name="username" placeholder="Username" required>
                    <input type="password" id="password" name="password" placeholder="Password" required>
                    <button type="submit" id="loginBtn">Login</button>
                    <div class="footer-link">
                        <p>Don't have an account? <a href="Register.jsp">Register here</a></p>
                    </div>
                </form>
            </div>
        </div>
        <div class="right-panel">
            <h1>Welcome Back to Doctor's Blog</h1>
            <p>Login to access your personalized dashboard and stay connected.</p>
        </div>
    </div>
</body>
</html>
