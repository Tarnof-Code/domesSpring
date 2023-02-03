package fr.greta2023.domes.controllers;


import fr.greta2023.domes.beans.Client;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

@Controller
public class NavbarController {
    @GetMapping("/accueil")
    public String goAccueil(){
        System.out.println("Page d'accueil");
        return "index";
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

    @ModelAttribute("nouveauclient")
    public Client getDefaultClient(){
        return new Client();
    }
}
