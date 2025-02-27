package com.Newblog;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/submitBlog")
public class BlogPostServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        // Get doctor ID from session
        HttpSession session = request.getSession();
        String doctorId = (String) session.getAttribute("doctorId");

        if (doctorId == null) {
            out.println("<h3>Please log in to submit the blog post.</h3>");
            return;
        }

        // Get form data
        String patientName = request.getParameter("patientName");
        String medicalIssues = request.getParameter("medicalIssues");
        String diseaseName = request.getParameter("diseaseName");
        String routeCause = request.getParameter("routeCause");
        String tests = request.getParameter("tests");
        String treatmentType = request.getParameter("treatmentType");
        String medications = request.getParameter("medications");
        String treatmentDuration = request.getParameter("treatmentDuration");
        String treatmentResult = request.getParameter("treatmentResult");
        String sideEffects = request.getParameter("sideEffects");

        // Create a BlogPost object and set the data
        BlogPost blogPost = new BlogPost();
        blogPost.setDoctorID(Integer.parseInt(doctorId));
        blogPost.setPatientName(patientName);
        blogPost.setMedicalIssues(medicalIssues);
        blogPost.setDiseaseName(diseaseName);
        blogPost.setRouteCause(routeCause);
        blogPost.setTests(tests);
        blogPost.setTreatmentType(treatmentType);
        blogPost.setMedications(medications);
        blogPost.setTreatmentDuration(treatmentDuration);
        blogPost.setTreatmentResult(treatmentResult);
        blogPost.setSideEffects(sideEffects);

        // Use BlogPostDAO to insert the blog post into the database
        BlogPostDAO dao = new BlogPostDAO();
        boolean success = dao.insertBlogPost(blogPost);

        if (success) {
        	response.sendRedirect("sucessmessage.jsp");
        } else {
            out.println("<h3>Error submitting blog post. Please try again later.</h3>");
        }
    }
}
