package com.DoctorsRegister;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Register")
public class Register extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String hospital = request.getParameter("hospital");
        String number = request.getParameter("number");

        DoctorsRegister dr = new DoctorsRegister(name, username, password, hospital, number);

        try {
            if (RegisterDao.registeruser(dr)) {
                response.sendRedirect("Login.jsp");
            } else {
                response.sendRedirect("Register.jsp");
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            response.sendRedirect("register.jsp?error=ServerError");
        }
    }
}
