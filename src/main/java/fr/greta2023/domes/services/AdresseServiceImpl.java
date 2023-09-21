package fr.greta2023.domes.services;

import ch.qos.logback.core.encoder.EchoEncoder;
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
        try{
            adresse.setClient(client);
            return adresseRepository.save(adresse);
        } catch (Exception e){
            e.printStackTrace();
            return null;
        }

    }

    @Override
    public List<Adresse> afficherAdresses(Client client) {
        try{
            List<Adresse> mesAdresses = adresseRepository.findByClient(client);
            return mesAdresses;
        } catch (Exception e){
            e.printStackTrace();
            return null;
        }

    }

    @Override
    public Adresse modifierAdresse(Adresse adresseAmodifier, Adresse nouvelleAdresse) {
        try{
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
        } catch(Exception e){
            e.printStackTrace();
            return null;
        }

    }

    @Override
    public void supprimerAdresse(int id) {
        try{
            Adresse adresseASupprimer= adresseRepository.findById(id);
            System.out.println("Dans le service supprimer : "+ adresseASupprimer);
            adresseRepository.delete(adresseASupprimer);
        } catch(Exception e){
            e.printStackTrace();
        }

    }
}
