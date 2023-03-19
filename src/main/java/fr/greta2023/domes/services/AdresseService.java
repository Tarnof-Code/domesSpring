package fr.greta2023.domes.services;

import fr.greta2023.domes.beans.Adresse;
import fr.greta2023.domes.beans.Client;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;
import java.util.List;

@Service
public interface AdresseService {

    public Adresse ajouterAdresse(Adresse adresse,Client client);

    public List<Adresse> afficherAdresses(Client client);

    public  Adresse modifierAdresse(Adresse adresseAmodifier, Adresse nouvelleAdresse);

    public void supprimerAdresse(int id);

}
