package com.kg.gmailclient;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * loginServelet
 */
@WebServlet("/")
public class loginServelet extends HttpServlet {



    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
       String text="Hai how are you";

       req.setAttribute("text",text);
       RequestDispatcher dispatcher=req.getRequestDispatcher("login.jsp");
       dispatcher.forward(req, resp);


    }

    
}