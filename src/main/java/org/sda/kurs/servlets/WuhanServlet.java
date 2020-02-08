package org.sda.kurs.servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "WuhanServlet", value = "/wuhan")
public class WuhanServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        System.out.println("Wuhan Servlet");

        PrintWriter printWriter = resp.getWriter();
        printWriter.print("Welcome in Wuhan");

    }
}
