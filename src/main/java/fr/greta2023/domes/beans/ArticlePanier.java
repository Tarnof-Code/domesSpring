package fr.greta2023.domes.beans;

import javax.persistence.*;


@Entity
@Table(name = "panier")
public class ArticlePanier {


    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @ManyToOne
    @JoinColumn(name = "client_id")
    private Client client;


    @ManyToOne
    @JoinColumn(name = "animal_id")
    private Animal animal;

    // Constructeur, getters et setters

    public Client getClient() {
        return client;
    }

    public void setClient(Client client) {
        this.client = client;
    }

    public Animal getAnimal() {
        return animal;
    }

    public void setAnimal(Animal animal) {
        this.animal = animal;
    }

    @Override
    public String toString() {
        return "Panier{" +
                "client=" + client +
                ", animal=" + animal +
                '}';
    }
}



