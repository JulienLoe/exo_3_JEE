package com.example.exo_3;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "detailServlet", value ={ "/form/*"})
public class DetailServlet extends HttpServlet {
    List<Car> cars;
    List<Car> newcars;


    @Override
    public void init() throws ServletException {
        List<Car>newcars = new ArrayList<>();
        newcars = cars;
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {



        req.setAttribute("cars", newcars);

        getServletContext().getRequestDispatcher("/WEB-INF/detail.jsp").forward(req, resp);


    }
}
