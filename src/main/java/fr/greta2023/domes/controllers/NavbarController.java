package fr.greta2023.domes.controllers;


import fr.greta2023.domes.beans.Animal;
import fr.greta2023.domes.beans.Client;
import fr.greta2023.domes.services.AnimalService;
import fr.greta2023.domes.services.AnimalServiceImpl;
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

    @GetMapping("/accueil")
    public String goAccueil( Model model){
        List<Animal> listeAnimauxAleatoire = new ArrayList<Animal>();
        listeAnimauxAleatoire = animalService.afficherAleatoires();
        System.out.println("Page d'accueil");
        System.out.println(listeAnimauxAleatoire);
        model.addAttribute("listeAleatoire",listeAnimauxAleatoire);
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
