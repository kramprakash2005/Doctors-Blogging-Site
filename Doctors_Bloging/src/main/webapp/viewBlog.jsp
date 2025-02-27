<%@ page import="java.util.List" %>
<%@ page import="com.Newblog.BlogPostDAO" %>
<%@ page import="com.Newblog.BlogPost" %>
<%
BlogPostDAO dao = new BlogPostDAO();
List<BlogPost> blogs = dao.getAllBlogs();
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Blogs</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <style>
        :root {
            --primary-color: #2E86C1;
            --secondary-color: #5DADE2;
        }

        body {
            font-family: 'Segoe UI', Arial, sans-serif;
            background: linear-gradient(135deg, var(--secondary-color), #85C1E9);
            min-height: 100vh;
            padding-bottom: 30px;
        }

        .navbar-custom {
            background-color: rgba(255, 255, 255, 0.95);
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }

        .main-container {
            max-width: 1200px;
            margin: 30px auto;
            padding: 0 20px;
        }

        .blog-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
            gap: 20px;
            position: relative;
        }

        .blog-card {
            background: rgba(255, 255, 255, 0.95);
            border-radius: 15px;
            overflow: hidden;
            transition: all 0.3s ease;
            height: auto;
        }

        .blog-card.expanded {
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            width: 80%;
            max-width: 800px;
            max-height: 90vh;
            overflow-y: auto;
            z-index: 1000;
            box-shadow: 0 0 50px rgba(0, 0, 0, 0.5);
        }

        .overlay {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.5);
            z-index: 999;
        }

        .card-header {
            background: var(--primary-color);
            color: white;
            padding: 15px;
            font-weight: 600;
        }

        .card-content {
            padding: 20px;
        }

        .detail-row {
            margin-bottom: 15px;
        }

        .detail-label {
            font-weight: 600;
            color: #2C3E50;
            font-size: 0.9rem;
        }

        .detail-value {
            color: #666;
            margin-top: 3px;
        }

        .expanded-content {
            display: none;
        }

        .blog-card.expanded .expanded-content {
            display: block;
        }

        .expand-btn {
            background: var(--primary-color);
            color: white;
            border: none;
            padding: 8px 20px;
            border-radius: 5px;
            width: 100%;
            margin-top: 10px;
        }

        .close-btn {
            position: absolute;
            top: 10px;
            right: 10px;
            background: white;
            border: none;
            border-radius: 50%;
            width: 30px;
            height: 30px;
            display: none;
            z-index: 1001;
        }

        .blog-card.expanded .close-btn {
            display: block;
        }

        @media (max-width: 768px) {
            .blog-card.expanded {
                width: 95%;
                max-width: none;
            }
        }
    </style>
</head>
<body>
    <div class="overlay"></div>
    <nav class="navbar navbar-custom">
        <div class="container">
            <a class="navbar-brand font-weight-bold" href="#">Doctor's Blog</a>
            <a href="home.jsp" class="btn btn-danger btn-sm">
                <i class="fas fa-sign-out-alt mr-1"></i>Home
            </a>
        </div>
    </nav>

    <div class="main-container">
        <h2 class="text-center text-white mb-4">
            <i class="fas fa-book-medical mr-2"></i>Medical Case Studies
        </h2>
        
        <div class="blog-grid">
            <% if (blogs != null && !blogs.isEmpty()) { 
                for (BlogPost blog : blogs) { %>
                <div class="blog-card">
                    <button class="close-btn">×</button>
                    <div class="card-header">
                        <i class="fas fa-user-md mr-2"></i><%= blog.getPatientName() %>
                    </div>
                    <div class="card-content">
                        <div class="detail-row">
                            <div class="detail-label">Disease</div>
                            <div class="detail-value"><%= blog.getDiseaseName() %></div>
                        </div>
                        <div class="detail-row">
                            <div class="detail-label">Treatment Type</div>
                            <div class="detail-value"><%= blog.getTreatmentType() %></div>
                        </div>
                        <div class="expanded-content">
                            <div class="detail-row">
                                <div class="detail-label">Medical Issues</div>
                                <div class="detail-value"><%= blog.getMedicalIssues() %></div>
                            </div>
                            <div class="detail-row">
                                <div class="detail-label">Route Cause</div>
                                <div class="detail-value"><%= blog.getRouteCause() %></div>
                            </div>
                            <div class="detail-row">
                                <div class="detail-label">Tests</div>
                                <div class="detail-value"><%= blog.getTests() %></div>
                            </div>
                            <div class="detail-row">
                                <div class="detail-label">Medications</div>
                                <div class="detail-value"><%= blog.getMedications() %></div>
                            </div>
                            <div class="detail-row">
                                <div class="detail-label">Duration</div>
                                <div class="detail-value"><%= blog.getTreatmentDuration() %></div>
                            </div>
                            <div class="detail-row">
                                <div class="detail-label">Treatment Result</div>
                                <div class="detail-value"><%= blog.getTreatmentResult() %></div>
                            </div>
                            <div class="detail-row">
                                <div class="detail-label">Side Effects</div>
                                <div class="detail-value"><%= blog.getSideEffects() %></div>
                            </div>
                        </div>
                        <button class="expand-btn">
                            <i class="fas fa-expand mr-1"></i>View Details
                        </button>
                    </div>
                </div>
            <% }
            } else { %>
                <div class="alert alert-info w-100">No blogs available.</div>
            <% } %>
        </div>
    </div>

    <script>
        document.querySelectorAll('.expand-btn').forEach(button => {
            button.addEventListener('click', function() {
                const card = this.closest('.blog-card');
                const overlay = document.querySelector('.overlay');
                
                // Remove expanded class from all other cards
                document.querySelectorAll('.blog-card').forEach(c => {
                    if (c !== card) c.classList.remove('expanded');
                });
                
                card.classList.toggle('expanded');
                if (card.classList.contains('expanded')) {
                    overlay.style.display = 'block';
                    this.innerHTML = '<i class="fas fa-compress mr-1"></i>Hide Details';
                } else {
                    overlay.style.display = 'none';
                    this.innerHTML = '<i class="fas fa-expand mr-1"></i>View Details';
                }
            });
        });

        document.querySelectorAll('.close-btn').forEach(button => {
            button.addEventListener('click', function() {
                const card = this.closest('.blog-card');
                const overlay = document.querySelector('.overlay');
                card.classList.remove('expanded');
                overlay.style.display = 'none';
                card.querySelector('.expand-btn').innerHTML = '<i class="fas fa-expand mr-1"></i>View Details';
            });
        });

        document.querySelector('.overlay').addEventListener('click', function() {
            const expandedCard = document.querySelector('.blog-card.expanded');
            if (expandedCard) {
                expandedCard.classList.remove('expanded');
                this.style.display = 'none';
                expandedCard.querySelector('.expand-btn').innerHTML = '<i class="fas fa-expand mr-1"></i>View Details';
            }
        });
    </script>
</body>
</html>