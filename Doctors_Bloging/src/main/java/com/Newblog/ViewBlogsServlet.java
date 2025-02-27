package com.Newblog;


import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/viewBlogs")
public class ViewBlogsServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        BlogPostDAO dao = new BlogPostDAO();
        List<BlogPost> blogs = dao.getAllBlogs();
        
        request.setAttribute("blogs", blogs);
        request.getRequestDispatcher("viewBlog.jsp").forward(request, response);
    }
}
