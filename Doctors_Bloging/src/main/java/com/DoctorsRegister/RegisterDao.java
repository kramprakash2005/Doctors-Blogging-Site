package com.DoctorsRegister;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class RegisterDao {
    public static boolean registeruser(DoctorsRegister dr) throws ClassNotFoundException {
        boolean isRegistered = false;
        Connection con = null;
        PreparedStatement pst = null;

        try {
            // Load MySQL Driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish Connection
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/doctors_blogs", "root", "1234");

            // SQL Query
            String query = "INSERT INTO Doctors (DoctorName, UserName, Password, HospitalName, PhoneNumber) VALUES (?, ?, ?, ?, ?)";

            // Prepare Statement
            pst = con.prepareStatement(query);
            pst.setString(1, dr.getFullname());
            pst.setString(2, dr.getUsername());
            pst.setString(3, dr.getPassword());
            pst.setString(4, dr.getHospitalname());
            pst.setString(5, dr.getNumber());

            // Execute Update
            int rowsAffected = pst.executeUpdate();

            // Check if insertion was successful
            if (rowsAffected > 0) {
                isRegistered = true;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            // Clean up resources
            try {
                if (pst != null) pst.close();
                if (con != null) con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return isRegistered;
    }
}
