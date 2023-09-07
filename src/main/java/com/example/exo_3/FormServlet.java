package com.example.exo_3;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "formServlet", value ={ "/form"})
public class FormServlet extends HttpServlet {

    public static List<Car> cars;

    @Override
    public void init() throws ServletException {
        cars = new ArrayList<>();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        List<String> errors = new ArrayList<>();

        req.setAttribute("marque", "");
        req.setAttribute("model", "");
        req.setAttribute("couleur", "");
        req.setAttribute("puissance", "");
        req.setAttribute("errors", errors);
        req.setAttribute("confirmation", false);
        req.setAttribute("cars", cars);

        getServletContext().getRequestDispatcher("/WEB-INF/addCar.jsp").forward(req, resp);


    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        List<String> errors = new ArrayList<>();

        String marque = req.getParameter("marque");
        String model = req.getParameter("model");
        String couleur = req.getParameter("couleur");
        String puissance = req.getParameter("puissance");

        if (marque.toUpperCase().equals("BMW")) {
            errors.add("Franchement pas fan!");
            req.setAttribute("confirmation", false);
        } else {
            Car newCar = new Car(marque, model, couleur, puissance);
            cars.add(newCar);
            req.setAttribute("confirmation", true);
            System.out.println(newCar);
        }

        req.setAttribute("marque", marque);
        req.setAttribute("model", model);
        req.setAttribute("couleur", couleur);
        req.setAttribute("puissance", couleur);
        req.setAttribute("errors", errors);
        req.setAttribute("cars", cars);

        System.out.printf("Marque: %s, Model = %s, Couleur = %s, Puissance = %s", marque, model, couleur, puissance);


        getServletContext().getRequestDispatcher("/WEB-INF/addCar.jsp").forward(req, resp);

    }
}