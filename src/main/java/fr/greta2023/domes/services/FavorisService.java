package fr.greta2023.domes.services;

import fr.greta2023.domes.beans.Animal;
import fr.greta2023.domes.beans.Client;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;
import java.util.List;

@Service
public interface FavorisService {
    public List<Animal> listerAnimauxFavoris(Client client);
    public void ajouterAuxFavoris(Client client, HttpSession session, Animal animal);
    public void supprimerDesFavoris(Client client, HttpSession session, Animal animal);
}
