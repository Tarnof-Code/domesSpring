package fr.greta2023.domes.services;

import fr.greta2023.domes.beans.Adresse;
import fr.greta2023.domes.beans.Client;
import fr.greta2023.domes.repository.AdresseRepository;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;
import java.util.List;

@Service
public class AdresseServiceImpl implements AdresseService{

    private AdresseRepository adresseRepository;

    public AdresseServiceImpl(AdresseRepository adresseRepository){this.adresseRepository = adresseRepository;}

    @Override
    public Adresse creerAdresse(Client client, HttpSession session) {

        return null;
    }

    @Override
    public List<Adresse> afficherAdresses(Client client) {
        List<Adresse> mesAdresses = adresseRepository.findByClient(client);
        System.out.println(client);
        System.out.println(mesAdresses);
        return mesAdresses;
    }

    @Override
    public Adresse modifierAdresse(Client client, HttpSession session) {
        return null;
    }

    @Override
    public void supprimerAdresse(Client client, HttpSession session) {

    }
}
