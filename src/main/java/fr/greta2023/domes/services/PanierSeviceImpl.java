package fr.greta2023.domes.services;

import fr.greta2023.domes.beans.Animal;
import fr.greta2023.domes.beans.Client;
import fr.greta2023.domes.beans.ArticlePanier;
import fr.greta2023.domes.repository.PanierRepository;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Service
public class PanierSeviceImpl implements PanierService{

    private PanierRepository panierRepository;

    public PanierSeviceImpl(PanierRepository panierRepository){
        this.panierRepository = panierRepository;
    }

    @Override
    public void ajouterAuPanier(Client client, HttpSession session, Animal animal) {
        ArticlePanier articlePanier = new ArticlePanier();
        articlePanier.setClient(client);
        articlePanier.setAnimal(animal);
        panierRepository.save(articlePanier);

    }

    @Override
    public void supprimerDuPanier(Client client, HttpSession session, Animal animal) {
        ArticlePanier animalASuppr = panierRepository.findByClientAndAnimal(client,animal);
        panierRepository.delete(animalASuppr);
    }


    @Override
    public List<Animal> listerAnimauxDuPanier(Client client) {
        List<ArticlePanier> articlePanierList = panierRepository.findByClient(client);
        List<Animal> animalList = new ArrayList<>();
        for (ArticlePanier articlePanier : articlePanierList) {
            animalList.add(articlePanier.getAnimal());
        }
        return animalList;
    }

    @Override
    public double calculerPrixTotalDuPanier(Client client) {
        List<Animal> animauxDuPanier = listerAnimauxDuPanier(client);
        double prixTotal = 0;
        for (Animal animal : animauxDuPanier) {
            prixTotal += animal.getPrix();
        }
        return prixTotal;
    }
}
