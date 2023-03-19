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
    public Adresse ajouterAdresse(Adresse adresse,Client client) {
        adresse.setClient(client);
        return adresseRepository.save(adresse);
    }

    @Override
    public List<Adresse> afficherAdresses(Client client) {
        List<Adresse> mesAdresses = adresseRepository.findByClient(client);
        return mesAdresses;
    }

    @Override
    public Adresse modifierAdresse(Adresse adresseAmodifier, Adresse nouvelleAdresse) {
        Adresse adresseAModifier = adresseRepository.findById(adresseAmodifier.getId());
        System.out.println("Adresse à modifier "+ adresseAModifier);

        adresseAModifier.setNom(nouvelleAdresse.getNom());
        adresseAModifier.setNumeroVoie(nouvelleAdresse.getNumeroVoie());
        adresseAModifier.setNomVoie(nouvelleAdresse.getNomVoie());
        adresseAModifier.setCodepostal(nouvelleAdresse.getCodepostal());
        adresseAModifier.setVille(nouvelleAdresse.getVille());

        Adresse adresseModifiee = adresseRepository.save(adresseAModifier);
        System.out.println("Adresse modifiée " + adresseModifiee);
        return adresseModifiee;
    }

    @Override
    public void supprimerAdresse(int id) {
        Adresse adresseASupprimer= adresseRepository.findById(id);
        System.out.println("Dans le service supprimer : "+ adresseASupprimer);
        adresseRepository.delete(adresseASupprimer);
    }
}
