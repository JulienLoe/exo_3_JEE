package com.example.exo_3;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "formServlet", value = "/form")
public class FormServlet extends HttpServlet {

    private String myInitParam;

    @Override
    public void init() throws ServletException {

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        getServletContext().getRequestDispatcher("/WEB-INF/addCar.jsp").forward(req, resp);


    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String marque = req.getParameter("marque");
        String model = req.getParameter("model");
        String couleur = req.getParameter("couleur");
        int puissance = Integer.parseInt(req.getParameter("puissance"));

        System.out.printf("Marque: %s, Model = %s, Couleur = %s, Puissance = %d", marque, model, couleur, puissance);


    }
}