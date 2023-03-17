package fr.greta2023.domes.services;

import fr.greta2023.domes.beans.Adresse;
import fr.greta2023.domes.beans.Client;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;
import java.util.List;

@Service
public interface AdresseService {

    public Adresse creerAdresse(Client client, HttpSession session);

    public List<Adresse> afficherAdresses(Client client);

    public  Adresse modifierAdresse(Client client, HttpSession session);

    public void supprimerAdresse(Client client, HttpSession session);

}
