<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <style>
        body {
            margin: 0;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            font-family: -apple-system, BlinkMacSystemFont, sans-serif;
        }
        .container {
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .card {
            background: rgba(255, 255, 255, 0.95);
            backdrop-filter: blur(10px);
            padding: 2.5rem;
            border-radius: 16px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.2);
            text-align: center;
            transform: translateY(0);
            transition: transform 0.2s;
            max-width: 90%;
            width: 400px;
        }
        .success-icon {
            background: #10B981;
            color: white;
            width: 60px;
            height: 60px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 32px;
            margin: 0 auto 1.5rem;
        }
        .message {
            color: #1F2937;
            font-size: 1.5rem;
            margin-bottom: 2rem;
            font-weight: 600;
        }
        .button {
            background: #10B981;
            color: white;
            border: none;
            padding: 12px 32px;
            border-radius: 8px;
            font-size: 1rem;
            font-weight: 500;
            cursor: pointer;
            transition: all 0.2s;
        }
        .button:hover {
            background: #059669;
            transform: translateY(-2px);
            box-shadow: 0 4px 12px rgba(16, 185, 129, 0.3);
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="card">
            <div class="success-icon">✓</div>
            <h2 class="message">Blog post submitted successfully!</h2>
            <a href="home.jsp"><button class="button">OK</button></a>
        </div>
    </div>
</body>
</html>