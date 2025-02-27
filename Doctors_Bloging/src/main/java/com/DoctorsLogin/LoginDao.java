package com.DoctorsLogin;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginDao {
    public static String checkUser(DoctorsLogin dl) {
        String doctorId = null;
        Connection con = null;
        PreparedStatement pst = null;
        ResultSet rs = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/doctors_blogs", "root", "1234");

            String query = "SELECT DoctorID FROM Doctors WHERE UserName=? AND Password=?";
            pst = con.prepareStatement(query);
            pst.setString(1, dl.getUsername());
            pst.setString(2, dl.getPassword());

            rs = pst.executeQuery();
            if (rs.next()) {
                doctorId = rs.getString("DoctorID");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return doctorId;
    }
}
