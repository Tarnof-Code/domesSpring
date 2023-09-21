package fr.greta2023.domes.beans;
import javax.persistence.*;
import java.util.List;

@Entity
public class Categorie {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    private String categorie;
    private String photo;

    @OneToMany(mappedBy = "categorie" ,fetch = FetchType.EAGER)
    private List<Animal> listAnimaux;

    public List<Animal> getListAnimaux() {
        return listAnimaux;
    }

    public void setListAnimaux(List<Animal> listAnimaux) {
        this.listAnimaux = listAnimaux;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCategorie() {
        return categorie;
    }

    public void setCategorie(String categorie) {
        this.categorie = categorie;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    @Override
    public String toString() {
        return "Categorie{" +
                "id=" + id +
                ", categorie='" + categorie + '\'' +
                ", photo='" + photo + '\'' +
                ", listAnimaux=" + listAnimaux +
                '}';
    }
}
