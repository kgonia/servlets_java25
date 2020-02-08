package org.sda.kurs.servlets;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "HelloServlet",
        value="/hello",
        loadOnStartup = 1,
initParams = {
        @WebInitParam(name = "initParam", value = "World")
})
public class HelloServlet extends HttpServlet {
/*
    @Override
    public void init() throws ServletException {
        super.init();
        System.out.println("Servlet initialized " + HelloServlet.class.getSimpleName());
    }
*/
    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        System.out.println("Servlet initialized " + HelloServlet.class.getSimpleName());
        System.out.println("Parameter " + config.getInitParameter("initParam"));
    }

    @Override
    public void destroy() {
        super.destroy();
        System.out.println("Servlet destroyed " + HelloServlet.class.getSimpleName());
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String nameParam = req.getParameter("name");

        PrintWriter printWriter = resp.getWriter();
        printWriter.print("Hello " + nameParam);
    }
}
