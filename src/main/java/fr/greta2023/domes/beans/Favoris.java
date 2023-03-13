package fr.greta2023.domes.beans;

import javax.persistence.*;

@Entity
@Table(name = "favoris")
public class Favoris {
    @Id
    @JoinColumn(name = "id_favoris")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @ManyToOne
    @JoinColumn(name = "id_client")
    private Client client;

    @ManyToOne
    @JoinColumn(name = "id_animal")
    private Animal animal;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

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
        return "Favoris{" +
                "id=" + id +
                ", client=" + client +
                ", animal=" + animal +
                '}';
    }
}


