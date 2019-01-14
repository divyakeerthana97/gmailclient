package com.kg.gmailclient;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.ws.Response;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

/**
 * loginValidation
 */
@WebServlet("/loginValidation")
public class loginValidation extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        System.out.println(name);
        String password = req.getParameter("password");
        System.err.println(password);

        try {
            String sql = "SELECT name,password FROM login_form2 WHERE  name=? AND password=?";
            Connection connect = (Connection) DriverManager
                    .getConnection("jdbc:mysql://localhost:3306/valid?" + "user=root&password=");
            PreparedStatement statement = (PreparedStatement) connect.prepareStatement(sql);
            statement.setString(1, name);
            statement.setString(2, password);
            ResultSet resultSet = statement.executeQuery();

            while (resultSet.next()) {
                PrintWriter out = resp.getWriter();

                out.println("<script type=\"text/javascript\">");
                out.println("alert('Success You are an Valid user');");
                out.println("location='login.jsp';");
                out.println("</script>");

            }
            PrintWriter out = resp.getWriter();
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Not Registered');");
            out.println("location='login.jsp';");
            out.println("</script>");

        } catch (Exception e) {
            System.out.println("error captured");
        }

    }

}