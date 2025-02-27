<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Create New Blog</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
  <style>
    :root {
      --primary-color: #2E86C1;
      --secondary-color: #5DADE2;
      --accent-color: #3498DB;
      --text-color: #2C3E50;
      --light-bg: #f8f9fa;
    }

    body {
      font-family: 'Segoe UI', Arial, sans-serif;
      background: linear-gradient(135deg, var(--secondary-color), #85C1E9);
      min-height: 100vh;
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

    .blog-form-wrapper {
      background-color: rgba(255, 255, 255, 0.92);
      border-radius: 15px;
      box-shadow: 0 5px 20px rgba(0, 0, 0, 0.1);
      overflow: hidden;
    }

    .form-header {
      background: var(--primary-color);
      color: white;
      padding: 20px;
      text-align: center;
    }

    .form-header h2 {
      margin: 0;
      font-size: 24px;
      font-weight: 600;
    }

    .progress-bar-wrapper {
      padding: 20px 40px;
      background: rgba(255, 255, 255, 0.95);
    }

    .progress {
      height: 8px;
      background-color: #e9ecef;
    }

    .nav-tabs {
      border: none;
      padding: 0 20px;
      background: rgba(255, 255, 255, 0.95);
    }

    .nav-tabs .nav-link {
      border: none;
      color: var(--text-color);
      padding: 15px 25px;
      font-weight: 500;
      position: relative;
      transition: all 0.3s;
    }

    .nav-tabs .nav-link.active {
      color: var(--primary-color);
      background: transparent;
      border-bottom: 3px solid var(--primary-color);
    }

    .tab-content {
      padding: 30px;
    }

    .form-group label {
      font-weight: 500;
      color: var(--text-color);
      margin-bottom: 8px;
    }

    .form-control {
      border: 2px solid #e9ecef;
      border-radius: 8px;
      padding: 12px;
      transition: all 0.3s;
    }

    .form-control:focus {
      border-color: var(--accent-color);
      box-shadow: none;
    }

    .section-card {
      background: white;
      border-radius: 10px;
      padding: 20px;
      margin-bottom: 20px;
      box-shadow: 0 2px 8px rgba(0, 0, 0, 0.05);
    }

    .section-card h5 {
      color: var(--primary-color);
      border-bottom: 2px solid var(--primary-color);
      padding-bottom: 10px;
      margin-bottom: 20px;
    }

    .btn-submit {
      background: var(--primary-color);
      color: white;
      padding: 12px 30px;
      border-radius: 8px;
      font-weight: 600;
      transition: all 0.3s;
    }

    .btn-submit:hover {
      background: var(--accent-color);
      transform: translateY(-2px);
    }

    .btn-nav {
      padding: 8px 20px;
      margin: 0 5px;
    }

    .navigation-buttons {
      padding: 20px;
      background: white;
      border-top: 1px solid #e9ecef;
    }



    @media (max-width: 768px) {
      .nav-tabs .nav-link {
        padding: 10px 15px;
        font-size: 14px;
      }
      
      .tab-content {
        padding: 15px;
      }
    }
  </style>
</head>
<body>
  <nav class="navbar navbar-expand-lg navbar-custom">
    <div class="container">
      <a class="navbar-brand font-weight-bold" href="#">Doctor's Blog
      </a>
      <a href="home.jsp" class="btn btn-danger btn-sm">
        <i class="fas fa-sign-out-alt mr-1"></i>Home
      </a>
    </div>
  </nav>

  <div class="main-container">
    <div class="blog-form-wrapper">
      <div class="form-header">
        <h2><i class="fas fa-pen-fancy mr-2"></i>Create New Blog Post</h2>
      </div>

      <div class="progress-bar-wrapper">
        <div class="progress">
          <div class="progress-bar bg-primary" role="progressbar" style="width: 0%"></div>
        </div>
      </div>

      <form action="submitBlog" method="POST" id="blogForm">
        <ul class="nav nav-tabs" id="blogTabs" role="tablist">
          <li class="nav-item">
            <a class="nav-link active" data-toggle="tab" href="#basic">
              <i class="fas fa-user-md mr-2"></i>Basic Info
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="tab" href="#patient">
              <i class="fas fa-user mr-2"></i>Patient
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="tab" href="#disease">
              <i class="fas fa-virus mr-2"></i>Disease
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="tab" href="#treatment">
              <i class="fas fa-procedures mr-2"></i>Treatment
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="tab" href="#outcome">
              <i class="fas fa-notes-medical mr-2"></i>Outcome
            </a>
          </li>
        </ul>

        <div class="tab-content">
          <!-- Basic Info Tab -->
          <div class="tab-pane fade show active" id="basic">
            <div class="section-card">
              <div class="form-group">
                <label>Doctor Name</label>
                <input type="text" class="form-control" name="doctorName" placeholder="Enter doctor's name" required>
              </div>
            </div>
          </div>

          <!-- Patient Tab -->
          <div class="tab-pane fade" id="patient">
            <div class="section-card">
              <h5>Patient Information</h5>
              <div class="form-group">
                <label>Patient Name</label>
                <input type="text" class="form-control" name="patientName" placeholder="Enter patient's name" required>
              </div>
              <div class="form-group">
                <label>Medical History</label>
                <textarea class="form-control" name="medicalIssues" placeholder="Enter medical issues or history" rows="4"></textarea>
              </div>
            </div>
          </div>

          <!-- Disease Tab -->
          <div class="tab-pane fade" id="disease">
            <div class="section-card">
              <h5>Disease Information</h5>
              <div class="form-group">
                <label>Disease Name</label>
                <input type="text" class="form-control" name="diseaseName" placeholder="Enter disease name" required>
              </div>
              <div class="form-group">
                <label>Route Cause</label>
                <textarea class="form-control" name="routeCause" placeholder="Describe route cause" rows="3"></textarea>
              </div>
              <div class="form-group">
                <label>Tests Conducted</label>
                <textarea class="form-control" name="tests" placeholder="Enter tests conducted" rows="3"></textarea>
              </div>
            </div>
          </div>

          <!-- Treatment Tab -->
          <div class="tab-pane fade" id="treatment">
            <div class="section-card">
              <h5>Treatment Plan</h5>
              <div class="form-group">
                <label>Treatment Type</label>
                <input type="text" class="form-control" name="treatmentType" placeholder="Enter treatment type">
              </div>
              <div class="form-group">
                <label>Medications</label>
                <input type="text" class="form-control" name="drugUsed" placeholder="Enter medications used">
              </div>
              <div class="form-group">
                <label>Duration</label>
                <input type="text" class="form-control" name="treatmentDuration" placeholder="Enter treatment duration">
              </div>
            </div>
          </div>

          <!-- Outcome Tab -->
          <div class="tab-pane fade" id="outcome">
            <div class="section-card">
              <h5>Outcome</h5>
              <div class="form-group">
                <label>Treatment Result</label>
                <textarea class="form-control" name="treatmentResult" placeholder="Enter treatment result" rows="3"></textarea>
              </div>
              <div class="form-group">
                <label>Side Effects</label>
                <textarea class="form-control" name="sideEffects" placeholder="Enter side effects, if any" rows="3"></textarea>
              </div>
            </div>
          </div>
        </div>

        <div class="navigation-buttons d-flex justify-content-between">
          <button type="button" class="btn btn-secondary btn-nav" id="prevBtn">Previous</button>
          <button type="button" class="btn btn-primary btn-nav" id="nextBtn">Next</button>
          <button type="submit" class="btn btn-submit" id="submitBtn" style="display: none;">
            <i class="fas fa-paper-plane mr-2"></i>Submit Blog
          </button>
        </div>
      </form>
    </div>


  </div>

  <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
  <script>
    $(document).ready(function() {
      let currentTab = 0;
      const tabs = ['#basic', '#patient', '#disease', '#treatment', '#outcome'];
      
      function updateButtons() {
        $('#prevBtn').toggle(currentTab > 0);
        $('#nextBtn').toggle(currentTab < tabs.length - 1);
        $('#submitBtn').toggle(currentTab === tabs.length - 1);
        
        // Update progress bar
        const progress = ((currentTab + 1) / tabs.length) * 100;
        $('.progress-bar').css('width', progress + '%');
      }

      $('#nextBtn').click(function() {
        if (currentTab < tabs.length - 1) {
          $(tabs[currentTab]).removeClass('show active');
          currentTab++;
          $(tabs[currentTab]).addClass('show active');
          $('.nav-tabs .nav-link').eq(currentTab).tab('show');
          updateButtons();
        }
      });

      $('#prevBtn').click(function() {
        if (currentTab > 0) {
          $(tabs[currentTab]).removeClass('show active');
          currentTab--;
          $(tabs[currentTab]).addClass('show active');
          $('.nav-tabs .nav-link').eq(currentTab).tab('show');
          updateButtons();
        }
      });

      $('.nav-tabs .nav-link').click(function() {
        currentTab = tabs.indexOf($(this).attr('href'));
        updateButtons();
      });

      updateButtons();
    });
  </script>
</body>
</html>
