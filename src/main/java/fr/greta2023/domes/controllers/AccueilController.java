package fr.greta2023.domes.controllers;

import fr.greta2023.domes.beans.Animal;
import fr.greta2023.domes.beans.Client;
import fr.greta2023.domes.repository.AnimalRepository;
import fr.greta2023.domes.services.AnimalService;
import fr.greta2023.domes.services.AnimalServiceImpl;
import fr.greta2023.domes.services.FavorisService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class AccueilController {

    @Autowired
    private AnimalRepository animalRepository;
    @Autowired
    AnimalService animalService;

    @Autowired
    FavorisService favorisService;

    @GetMapping("/produit")
    public String goProduit(@RequestParam("id") int id, Model model){
        Animal animalSelection = animalRepository.findById(id);
        model.addAttribute("animalSelection",animalSelection);
        System.out.println();

        List<Animal> listeAnimauxAleatoire = animalService.afficherAleatoires();
        model.addAttribute("listeAleatoire",listeAnimauxAleatoire);

//        Client clientConnecte = (Client) model.getAttribute("clientConnecte");
//        List<Animal> listeFavoris = favorisService.listerAnimauxFavoris(clientConnecte);
//        model.addAttribute("listeFavoris",listeFavoris);

        return "produit";
    }






}
