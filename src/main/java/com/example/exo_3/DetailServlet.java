package com.example.exo_3;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import static com.example.exo_3.FormServlet.cars;

@WebServlet(name = "detailServlet", value ={ "/form/*"})
public class DetailServlet extends HttpServlet {


    @Override
    public void init() throws ServletException {
       List<Car> cars;
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String pathInfo = (req.getPathInfo() != null && !req.getPathInfo().isEmpty()) ? req.getPathInfo() : "";
        Car found = null;

        if(pathInfo != null && !pathInfo.isEmpty()) {
            found = cars.get(Integer.parseInt(pathInfo.substring(1)));
        }

        req.setAttribute("cars", found);


        getServletContext().getRequestDispatcher("/WEB-INF/detail.jsp").forward(req, resp);


    }
}
