package com.DoctorsLogin;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/DoctorDetails")
public class DoctorDetailsServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Set content type for the response
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        // Get the doctor ID from the session
        HttpSession session = request.getSession();
        String doctorId = (String) session.getAttribute("doctorId");

        if (doctorId == null) {
            out.println("<h3>No doctor ID found in the session. Please log in again.</h3>");
            return;
        }

        // Database connection variables
        Connection con = null;
        PreparedStatement pst = null;
        ResultSet rs = null;

        try {
            // Connect to the database
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/doctors_blogs", "root", "1234");

            // Query to fetch doctor details
            String query = "SELECT * FROM Doctors WHERE DoctorID = ?";
            pst = con.prepareStatement(query);
            pst.setString(1, doctorId);

            rs = pst.executeQuery();

            // Display doctor details
            if (rs.next()) {
                out.println("<h3>Doctor Details:</h3>");
                out.println("<p>ID: " + rs.getInt("DoctorID") + "</p>");
                out.println("<p>Name: " + rs.getString("DoctorName") + "</p>");
                out.println("<p>Username: " + rs.getString("UserName") + "</p>");
                out.println("<p>Hospital: " + rs.getString("HospitalName") + "</p>");
                out.println("<p>Phone Number: " + rs.getString("PhoneNumber") + "</p>");
            } else {
                out.println("<h3>No details found for the doctor ID: " + doctorId + "</h3>");
            }
        } catch (Exception e) {
            e.printStackTrace();
            out.println("<h3>Error retrieving doctor details. Please try again later.</h3>");
        } finally {
            // Close resources
            try {
                if (rs != null) rs.close();
                if (pst != null) pst.close();
                if (con != null) con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
