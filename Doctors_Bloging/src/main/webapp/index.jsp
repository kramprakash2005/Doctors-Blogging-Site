<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Doctor's Blogging Site</title>
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
      color: var(--text-color);
      display: flex;
      flex-direction: column;
      min-height: 100vh;
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

    footer {
      background-color: var(--light-bg);
      color: #6c757d;
      text-align: center;
      margin-top: auto;
      padding: 1rem 0;
    }
  </style>
</head>
<body>
  <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand font-weight-bold" href="#">Doctor's Blog</a>
    <div class="ml-auto">
      <a href="Login.jsp"><button class="btn btn-primary mr-2">Login</button></a>
      <a href="Register.jsp"><button class="btn btn-success">Sign Up</button></a>
    </div>
  </nav>

  <section class="hero-section">
    <div class="container">
      <h1 class="main-title">Doctor's Blogging Site</h1>
      <p class="sub-title">Where Knowledge Meets Experience</p>
    </div>
  </section>

  <div class="container">
    <div class="features-grid">
      <div class="feature-card">
        <h5>Doctor's Reference</h5>
        <p>Essential references for medical professionals.</p>
      </div>
      <div class="feature-card">
        <h5>Rare Medical Case Archives</h5>
        <p>Access a curated library of rare cases.</p>
      </div>
      <div class="feature-card">
        <h5>Student-Friendly Case Studies</h5>
        <p>Learn with easy-to-understand case studies.</p>
      </div>
      <div class="feature-card">
        <h5>Community Support</h5>
        <p>Connect and collaborate with fellow doctors and students.</p>
      </div>
      <div class="feature-card">
        <h5>Latest Research Updates</h5>
        <p>Stay updated with the latest advancements in medicine.</p>
      </div>
      <div class="feature-card">
        <h5>Interactive Discussions</h5>
        <p>Engage in detailed discussions on complex cases.</p>
      </div>
    </div>
  </div>

  <footer>
    <p>&copy; 2024 Doctor's Blogging Site | All Rights Reserved</p>
  </footer>

  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
