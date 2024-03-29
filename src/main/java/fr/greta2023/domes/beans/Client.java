package fr.greta2023.domes.beans;

import javax.persistence.*;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;
import java.util.ArrayList;
import java.util.List;

@Entity
public class Client {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Size(min=2,message = "Doit contenir au moins 2 caractères")
    private String prenom;

    @Size(min=2,message = "Doit contenir au moins 2 caractères")
    private String nom;

    @Pattern(regexp = "(^\\S+@\\S+$)", message = "Veuillez entrer un email valide")
    private String email;

    @Size(min=10,max= 10, message = "Doit contenir 10 chiffres")
    private String telephone;

    @Size(min=2,message = "Doit contenir au moins 2 caractères")
    private String motDePasse;


    public Client() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPrenom() {
        return prenom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public String getMotDePasse() {
        return motDePasse;
    }

    public void setMotDePasse(String motDePasse) {
        this.motDePasse = motDePasse;
    }

   /* public List<Adresse> getAdresses() {
        return adresses;
    }*/

 /*   public void setAdresses(List<Adresse> adresses) {
        this.adresses = adresses;
    }*/

    @Override
    public String toString() {
        return "Client{" +
                "id=" + id +
                ", prenom='" + prenom + '\'' +
                ", nom='" + nom + '\'' +
                ", email='" + email + '\'' +
                ", telephone='" + telephone + '\'' +
                ", motDePasse='" + motDePasse + '\'' +
              /*  ", adresses=" + adresses +*/
                '}';
    }
}
