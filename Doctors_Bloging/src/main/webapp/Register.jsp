<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Doctor's Blog - Register</title>
    <!-- Bootstrap CSS -->
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
        .left-panel {
            flex: 1;
            background: linear-gradient(to bottom right, #ff9a9e, #fad0c4);
            color: white;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            text-align: center;
            padding: 20px;
        }
        .left-panel h1 {
            font-size: 2.5rem;
            margin-bottom: 10px;
        }
        .left-panel p {
            font-size: 1.2rem;
        }
        .right-panel {
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
        .form-container input {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ddd;
            border-radius: 5px;
        }
        .form-container button {
            width: 100%;
            padding: 10px;
            background: #ff9a9e;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 1rem;
            cursor: pointer;
            margin-top: 20px;
            transition: background 0.3s;
        }
        .form-container button:hover {
            background: #fad0c4;
        }
        .footer-link {
            text-align: center;
            margin-top: 20px;
        }
        .footer-link a {
            text-decoration: none;
            color: #ff9a9e;
        }
        .footer-link a:hover {
            text-decoration: underline;
        }
    </style>
    <script>
        function validateForm() {
            const password = document.getElementById("password").value;
            const confirmPassword = document.getElementById("cpassword").value;

            if (password !== confirmPassword) {
                alert("Passwords do not match!");
                return false;
            }
            return true;
        }
    </script>
</head>
<body>
    <div class="container-fluid">
        <div class="left-panel">
            <h1>Welcome to Doctor's Blog</h1>
            <p>Your platform to connect, learn, and share medical insights.</p>
        </div>
        <div class="right-panel">
            <div class="form-container">
                <h2>Register</h2>
                <form action="Register" method="post" onsubmit="return validateForm()">
                    <input type="text" name="name" id="name" placeholder="Full Name" required>
                    <input type="text" name="username" id="username" placeholder="Username" required>
                    <input type="password" name="password" id="password" placeholder="Password" required>
                    <input type="password" id="cpassword" placeholder="Confirm Password" required>
                    <input type="text" name="hospital" id="hospital" placeholder="Hospital Name" required>
                    <input type="text" name="number" id="number" placeholder="Phone Number" required>
                    <button type="submit">Register</button>
                </form>
                <div class="footer-link">
                    <p>Already have an account? <a href="Login.jsp">Login here</a></p>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
