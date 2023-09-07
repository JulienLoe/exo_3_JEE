package com.example.exo_3;

public class Car {

    private String marque;

    private String model;

    private String couleur;

    private String puissance;

    public Car(String marque, String model, String couleur, String puissance) {
        this.marque = marque;
        this.model = model;
        this.couleur = couleur;
        this.puissance = puissance;
    }

    public String getMarque() {
        return marque;
    }

    public void setMarque(String marque) {
        this.marque = marque;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public String getCouleur() {
        return couleur;
    }

    public void setCouleur(String couleur) {
        this.couleur = couleur;
    }

    public String getPuissance() {
        return puissance;
    }

    public void setPuissance(String puissance) {
        this.puissance = puissance;
    }
}
