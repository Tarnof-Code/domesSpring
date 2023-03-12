package fr.greta2023.domes.services;

import fr.greta2023.domes.beans.Animal;
import fr.greta2023.domes.beans.Client;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;
import java.util.List;

@Service
public interface PanierService {
    public List<Animal> listerAnimauxDuPanier(Client client);

    public double calculerPrixTotalDuPanier(Client client);

    public void ajouterAuPanier(Client client, HttpSession session, Animal animal);

    public void supprimerDuPanier(Client client, HttpSession session, Animal animal);

}
