package fr.greta2023.domes.beans;

import javax.persistence.*;

@Entity
public class Animal {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;

    private String photo;

    private String nom;


    @ManyToOne
    private Categorie categorie;

    private String race;

    private String description;

    private double prix;



    @Override
    public String toString() {
        return "Animal{" +
                "id=" + id +
                ", photo='" + photo + '\'' +
                ", nom='" + nom + '\'' +
                ", race='" + race + '\'' +
                ", description='" + description + '\'' +
                ", prix=" + prix +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getRace() {
        return race;
    }

    public void setRace(String race) {
        this.race = race;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public double getPrix() {
        return prix;
    }

    public void setPrix(double prix) {
        this.prix = prix;
    }
    public Categorie getCategorie() {
        return categorie;
    }

    public void setCategorie(Categorie categorie) {
        this.categorie = categorie;
    }

}
