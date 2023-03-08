package fr.greta2023.domes.services;

import fr.greta2023.domes.beans.Animal;
import fr.greta2023.domes.beans.Client;
import fr.greta2023.domes.beans.Panier;
import fr.greta2023.domes.repository.PanierRepository;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class PanierSeviceImpl implements PanierService{

    private PanierRepository panierRepository;

    public PanierSeviceImpl(PanierRepository panierRepository){
        this.panierRepository = panierRepository;
    }

    @Override
    public void ajouterAuPanier(Client client, Animal animal) {
        Panier panier = new Panier();
        panier.setClient(client);
        panier.setAnimal(animal);
        panierRepository.save(panier);
    }


    @Override
    public List<Animal> listerAnimauxDuPanier(Client client) {
        List<Panier> panierList = panierRepository.findByClient(client);
        List<Animal> animalList = new ArrayList<>();
        for (Panier panier : panierList) {
            animalList.add(panier.getAnimal());
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
