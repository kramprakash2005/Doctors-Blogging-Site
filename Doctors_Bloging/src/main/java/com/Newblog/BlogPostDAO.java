package com.Newblog;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BlogPostDAO {
    private static final String DB_URL = "jdbc:mysql://localhost:3306/doctors_blogs";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "1234";

    public boolean insertBlogPost(BlogPost blogPost) {
        boolean success = false;
        Connection connection = null;
        PreparedStatement statement = null;

        try {
            // Load the JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish a connection
            connection = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);

            // SQL query to insert a new blog post
            String query = "INSERT INTO BlogPosts (DoctorID, PatientName, MedicalIssues, DiseaseName, RouteCause, Tests, TreatmentType, Medications, TreatmentDuration, TreatmentResult, SideEffects) " +
                    "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

            // Prepare the statement
            statement = connection.prepareStatement(query);
            statement.setInt(1, blogPost.getDoctorID());
            statement.setString(2, blogPost.getPatientName());
            statement.setString(3, blogPost.getMedicalIssues());
            statement.setString(4, blogPost.getDiseaseName());
            statement.setString(5, blogPost.getRouteCause());
            statement.setString(6, blogPost.getTests());
            statement.setString(7, blogPost.getTreatmentDuration());
            statement.setString(8, blogPost.getMedications());
            statement.setString(9, blogPost.getTreatmentDuration());
            statement.setString(10, blogPost.getTreatmentResult());
            statement.setString(11, blogPost.getSideEffects());

            // Execute the update
            int rowsAffected = statement.executeUpdate();

            if (rowsAffected > 0) {
                success = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (statement != null) statement.close();
                if (connection != null) connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return success;
    }
    



    public List<BlogPost> getAllBlogs() {
        List<BlogPost> blogList = new ArrayList<>();
        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null;

        try {
            // Load the JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish a connection
            connection = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);

            // SQL query to retrieve all blog posts
            String query = "SELECT * FROM BlogPosts";

            // Prepare the statement
            statement = connection.prepareStatement(query);

            // Execute the query
            resultSet = statement.executeQuery();

            // Process the result set and create BlogPost objects
            while (resultSet.next()) {
                BlogPost blogPost = new BlogPost();
                blogPost.setBlogID(resultSet.getInt("BlogID"));
                blogPost.setDoctorID(resultSet.getInt("DoctorID"));
                blogPost.setPatientName(resultSet.getString("PatientName"));
                blogPost.setMedicalIssues(resultSet.getString("MedicalIssues"));
                blogPost.setDiseaseName(resultSet.getString("DiseaseName"));
                blogPost.setRouteCause(resultSet.getString("RouteCause"));
                blogPost.setTests(resultSet.getString("Tests"));
                blogPost.setTreatmentType(resultSet.getString("TreatmentType"));
                blogPost.setMedications(resultSet.getString("Medications"));
                blogPost.setTreatmentDuration(resultSet.getString("TreatmentDuration"));
                blogPost.setTreatmentResult(resultSet.getString("TreatmentResult"));
                blogPost.setSideEffects(resultSet.getString("SideEffects"));

                blogList.add(blogPost);
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (resultSet != null) resultSet.close();
                if (statement != null) statement.close();
                if (connection != null) connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return blogList;
    }

}

