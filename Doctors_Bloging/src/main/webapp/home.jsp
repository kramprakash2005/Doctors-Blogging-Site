<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Doctor's Blog</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <style>
    :root {
        --primary-color: #1a5f7a;
        --secondary-color: #2E86C1;
        --accent-color: #3498DB;
        --text-color: #2C3E50;
        --light-bg: #f8f9fa;
    }
    body {
      font-family: Arial, sans-serif;
      background-color: #f9f9f9;
      color: #333;
      min-height: 100vh;
      display: flex;
      flex-direction: column;
    }

    .navbar {
      box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    }

    .hero-section {
        background: linear-gradient(135deg, var(--primary-color), var(--secondary-color));
        color: white;
        padding: 4rem 0;
        margin-bottom: 3rem;
        text-align: center;
    }

    .main-title {
        font-size: 3.5rem;
        font-weight: 800;
        margin-bottom: 1rem;
        text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.2);
    }

    .sub-title {
        font-size: 1.8rem;
        font-weight: 500;
        margin-bottom: 2rem;
        opacity: 0.9;
    }

    .stats-container {
        display: flex;
        justify-content: center;
        gap: 3rem;
        margin: 2rem 0;
    }

    .stat-item {
        text-align: center;
        background: rgba(255, 255, 255, 0.1);
        padding: 1rem 2rem;
        border-radius: 10px;
    }

    .stat-number {
        font-size: 2rem;
        font-weight: bold;
    }

    .stat-label {
        font-size: 1rem;
        opacity: 0.9;
    }

    .features-grid {
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
        gap: 2rem;
        padding: 0 2rem;
        max-width: 1400px;
        margin: 0 auto;
    }

    .feature-card {
        background: white;
        border-radius: 15px;
        padding: 2rem;
        text-align: center;
        box-shadow: 0 10px 20px rgba(0, 0, 0, 0.05);
        transition: all 0.3s ease;
        display: flex;
        flex-direction: column;
        justify-content: space-between;
        height: 100%;
    }

    .feature-card:hover {
        transform: translateY(-10px);
        box-shadow: 0 15px 30px rgba(0, 0, 0, 0.1);
    }

    .feature-icon {
        font-size: 2.5rem;
        color: var(--accent-color);
        margin-bottom: 1.5rem;
    }

    .feature-card h5 {
        color: var(--text-color);
        font-size: 1.5rem;
        font-weight: 600;
        margin-bottom: 1rem;
    }

    .feature-card p {
        color: #666;
        margin-bottom: 1.5rem;
        line-height: 1.6;
    }

    .feature-card .btn {
        background: var(--accent-color);
        color: white;
        padding: 0.8rem 2rem;
        border-radius: 30px;
        font-weight: 500;
        transition: all 0.3s ease;
        width: fit-content;
        margin: 0 auto;
    }

    .feature-card .btn:hover {
        background: var(--primary-color);
        transform: translateY(-2px);
    }

    @media (max-width: 768px) {
        .main-title {
            font-size: 2.5rem;
        }
        
        .sub-title {
            font-size: 1.4rem;
        }
        
        .stats-container {
            flex-direction: column;
            gap: 1rem;
        }
        
        .features-grid {
            grid-template-columns: 1fr;
            padding: 0 1rem;
        }
        

    }
    footer {
      background-color: #f8f9fa;
      color: #6c757d;
      text-align: center;
      margin-top: auto;
      padding: 1rem 0;
    }
  </style>
</head>
<body>
  <!-- Navigation Bar -->
  <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand font-weight-bold" href="#">Doctor's Blog</a>
    <div class="ml-auto">
      <a class="btn btn-danger" href="index.jsp">Logout</a>
    </div>
  </nav>

  <section class="hero-section">
    <div class="container">
        <h1 class="main-title">Welcome to Doctor's Blog</h1>
        <p class="sub-title">Where Medical Excellence Meets Knowledge Sharing</p>
        
        <div class="stats-container">
            <div class="stat-item">
                <div class="stat-number">5,000+</div>
                <div class="stat-label">Active Medical Professionals</div>
            </div>
            <div class="stat-item">
                <div class="stat-number">10,000+</div>
                <div class="stat-label">Published Case Studies</div>
            </div>
            <div class="stat-item">
                <div class="stat-number">50+</div>
                <div class="stat-label">Medical Specialties</div>
            </div>
        </div>
    </div>
</section>

<!-- Main Features -->
<div class="container">
    <div class="features-grid">
        <div class="feature-card">
            <div>
                <i class="fas fa-book-medical feature-icon"></i>
                <h5>View Blogs</h5>
                <p>Explore a vast collection of peer-reviewed medical cases, research findings, and clinical experiences. Learn from real-world scenarios and expert insights across various medical specialties.</p>
            </div>
            <a href="viewBlog.jsp" class="btn">Browse Articles</a>
        </div>
        
        <div class="feature-card">
            <div>
                <i class="fas fa-pen-fancy feature-icon"></i>
                <h5>New Blog</h5>
                <p>Share your medical expertise and unique cases with the global medical community. Document your findings, treatment approaches, and outcomes to contribute to medical knowledge.</p>
            </div>
            <a href="createblog.jsp" class="btn">Start Writing</a>
        </div>
        
        
    </div>
</div>

  <footer>
    <p>&copy; 2024 Doctor's Blog | All Rights Reserved</p>
  </footer>

  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
