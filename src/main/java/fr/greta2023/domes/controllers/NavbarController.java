package fr.greta2023.domes.controllers;


import fr.greta2023.domes.beans.Animal;
import fr.greta2023.domes.beans.Categorie;
import fr.greta2023.domes.beans.Client;
import fr.greta2023.domes.services.AnimalService;
import fr.greta2023.domes.services.AnimalServiceImpl;
import fr.greta2023.domes.services.CategorieService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import java.util.ArrayList;
import java.util.List;

@Controller
public class NavbarController {

    @Autowired
    private AnimalService animalService;

    @Autowired
    private CategorieService categorieService;

    @GetMapping("/accueil")
    public String goAccueil( Model model){

        List<Animal> listeAnimauxAleatoire = new ArrayList<Animal>();
        listeAnimauxAleatoire = animalService.afficherAleatoires();
        model.addAttribute("listeAleatoire",listeAnimauxAleatoire);

        Iterable<Categorie> listeCategories = new ArrayList<>();
        listeCategories = categorieService.afficherCategories();
        model.addAttribute("listeCategories",listeCategories);

        /*List<Animal> listeChiens = new ArrayList<>();
        listeChiens = animalService.listeParCategorie(1);
        model.addAttribute("listeChiens",listeChiens);*/

        Iterable<Categorie> catalogue = new ArrayList<>();
        catalogue = categorieService.afficherCategories();
        System.out.println(catalogue);
        model.addAttribute("catalogue",catalogue);


        return "accueil";
    }

    @GetMapping("/panier")
    public String goPanier(){
        System.out.println("Panier");
        return "panier";
    }

    @GetMapping("/connexionInscription")
    public String goConnexionInscription(){
        System.out.println("Page de connexion / inscription");
        return "connexionInscription";
    }

    @GetMapping("/aide")
    public String goAide(){
        System.out.println("Page d'aide");
        return "aide";
    }

    @ModelAttribute("client")
    public Client getDefaultClient(){
        return new Client();
    }


}
