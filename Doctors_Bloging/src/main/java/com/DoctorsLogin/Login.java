package com.DoctorsLogin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Login")
public class Login extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        DoctorsLogin dl = new DoctorsLogin(username, password);

        try {
            String doctorId = (String) LoginDao.checkUser(dl);
            if (doctorId != null) {
                // Store doctor ID in session
                HttpSession session = request.getSession();
                session.setAttribute("doctorId", doctorId);

                response.sendRedirect("home.jsp");
            } else {
                response.sendRedirect("loginalert.jsp");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
